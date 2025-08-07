# main.gd
# This is the main entry point for the game client.
# It is attached to the Main node in main.tscn.

extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Olympus: War of the Gods 3D client started successfully.")
	print("Welcome to the world of Cyber-Mythology!")

	# In the future, this is where we will initialize game systems:
	# - Connect to the server
	# - Load player data
	# - Initialize the UI
	# - Spawn the player's character


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
