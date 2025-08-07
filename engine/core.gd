# core.gd
# A placeholder for a core engine module or singleton.
# This could manage global state, core utilities, or system-wide events.

class_name Core

# Example of a potential utility function
static func get_game_version() -> String:
	# ProjectSettings.get_setting() is the proper way to get version info,
	# but this is a placeholder for custom logic.
	var version = ProjectSettings.get_setting("application/config/version", "0.0.1")
	return version

func _init():
	print("Engine Core module initialized.")
