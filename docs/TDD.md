# Technical Design Document: Olympus: War of the Gods 3D

*This document outlines the technical architecture, standards, and methodologies for the project. It is intended for the engineering team.*

## 1. Core Technology

- **Game Engine:** Godot Engine 4.2+ (Stable Channel)
- **Primary Language:** GDScript
- **Secondary Language:** C# (for performance-critical systems where GDScript may be a bottleneck, such as complex AI or data processing).
- **Architecture Style:** Modular, ECS-like (Entity-Component-System) principles will be favored for decoupling and testability. Core systems (Combat, Inventory, etc.) will be developed as independent packages/modules.

## 2. Target Platforms & Performance

- **Platforms:** Windows (Direct3D/Vulkan), Web (WebGL2/WebGPU), Android. iOS structure will be prepared but not fully implemented initially.
- **Performance Targets:**
    - **High-End PC:** 120fps @ 1080p/1440p
    - **Mid-Range Mobile:** 60fps
    - **Web:** 30-60fps (adaptive)
- **Performance Budgets:** Strict budgets for draw calls, poly count, texture memory, and shader complexity will be defined and enforced via automated checks in the CI pipeline. See `/docs/PerformanceBudgets.md` (to be created).

## 3. Server & Network Architecture

- **Server Model:** Authoritative Server Architecture. The server has the final say on all game state changes to prevent cheating.
- **Infrastructure:**
    - **World State:** Regional sharding, channel instancing.
    - **Services:** Decoupled microservices for Matchmaking, Chat, Guilds, etc.
- **Communication Protocol:** Hybrid TCP/UDP approach.
    - **Reliable (TCP-like):** For critical events (e.g., inventory changes, skill activation).
    - **Unreliable (UDP-like):** For high-frequency state updates (e.g., player position).
- **Data Sync:** State synchronization using snapshots and delta compression. Client-side prediction and server reconciliation will be used to hide latency.
- **Database:** PostgreSQL for persistent data (accounts, inventory). Redis for caching session data and transient states.

## 4. Code & Project Structure

- **Folder Structure:** See `README.md` for the high-level directory map.
- **Naming Conventions:**
    - **GDScript:** `snake_case` for variables and functions, `PascalCase` for classes.
    - **C#:** Standard `PascalCase` for public members and `_camelCase` for private fields.
- **Code Quality:** All code must pass linting and static analysis checks in the CI pipeline before merging.
- **Testing:**
    - **Unit Tests:** For individual functions and classes.
    - **Integration Tests:** For interactions between different modules.
    - **Load Tests:** Automated bots to simulate high player counts and stress test server systems.

## 5. Data Pipeline

- **Data Format:** Game data (balance, quests, items) will be managed in human-readable formats like CSV or JSON.
- **Pipeline:** `CSV/JSON -> Custom Importer Tool -> Validation -> Binary Asset Generation`. This ensures data integrity and fast loading times in-game.
- **Tools:** Custom-built editor tools (in Godot) will be provided for editing game data to reduce errors.

## 6. CI/CD (Continuous Integration & Deployment)

- **Workflow:** `Git Push -> Automated Build -> Unit/Integration Tests -> Static Analysis -> Release Package Generation -> Deploy to Staging/Production`.
- **Tooling:** GitHub Actions (or similar).
- **Builds:** All builds will be reproducible, with dependencies and engine versions locked.

*(More sections to be added for Security, Analytics, Live-Ops Tooling, etc.)*
