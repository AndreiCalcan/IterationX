extends CanvasLayer
@onready var settings: Control = $Settings
@onready var main_menu: Control = $Main



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_button_play_pressed() -> void:
	get_tree().change_scene_to_file("res://main.tscn")


func _on_button_settings_pressed() -> void:
	main_menu.visible = false
	settings.visible = true 


func _on_button_quit_pressed() -> void:
	get_tree().quit()



func _on_button_back_pressed() -> void:
	main_menu.visible = true
	settings.visible = false