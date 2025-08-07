# Olympus: War of the Gods 3D

## 1. Project Overview

**Olympus: War of the Gods 3D** is a commercial-grade, large-scale MMORPG x Real-Time Strategy (RTS) hybrid game built with the Godot Engine 4.x.

- **Concept:** A fusion of Cyberpunk and Greek Mythology.
- **Core Gameplay:** A mix of third-person action combat (MMORPG) and top-down squad command (RTS).
- **Platforms:** Windows, Web, Android.

This repository contains the full source code for the game client, authoritative server, development/operations tools, and all related documentation.

---

## 2. 5-Minute Runbook (Local Sandbox Mode)

This guide will get you up and running with the game in a local sandbox mode for testing and development. This mode runs entirely on your local machine without needing a connection to a live server.

### Prerequisites

- [Godot Engine 4.2+](https://godotengine.org/download/)
- *(For Server/Tools)*: [Node.js](https://nodejs.org/) / [Python](https://www.python.org/) / etc. (TBD)

### Steps

1.  **Clone the Repository:**
    ```bash
    git clone <repository_url>
    cd olympus-3d
    ```

2.  **Open the Project in Godot:**
    - Launch the Godot Engine.
    - In the Project Manager, click **Import**.
    - Navigate to the cloned `olympus-3d` directory and select the `project.godot` file.
    - Click **Open**. The project will now open in the Godot editor.

3.  **Run the Game (Sandbox Mode):**
    - Once the editor has finished importing assets, press the **Play** button (or `F5`) in the top-right corner of the editor.
    - The game will launch in a local sandbox mode, allowing you to test core mechanics like movement, combat, and UI.

4.  **Running the Authoritative Server (Coming Soon):**
    - Instructions will be added here on how to boot the server for networked play.
    - `cd server`
    - `npm install` (or equivalent)
    - `npm start` (or equivalent)

5.  **Accessing the Admin Console (Coming Soon):**
    - The web-based admin console for managing the game (e.g., users, items, events) will be accessible via a browser.
    - Instructions to run and access it will be added here.

---

## 3. Project Structure

- `/game`: All game client assets, scripts, and scenes.
- `/engine`: Core engine modules and foundational systems.
- `/server`: Authoritative server code.
- `/tools`: World editors, balance tools, etc.
- `/ops`: Live-ops dashboards and admin consoles.
- `/docs`: GDD, TDD, and other documentation.
- `/ci`: Continuous Integration/Deployment scripts.
- `/art`: Source art assets and templates.

---

## 4. Problem Solving & FAQ

- **Problem:** The project fails to import in Godot.
  - **Solution:** Ensure you are using the correct version of the Godot Engine (4.2 or newer). Check the Godot console for specific error messages.
- **Problem:** The game crashes on launch.
  - **Solution:** Check the game's log files in `/logs/` for errors. It might be related to graphics drivers or missing dependencies.
