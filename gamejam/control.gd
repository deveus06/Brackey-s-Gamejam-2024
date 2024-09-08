extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VBoxContainer/Play_Button.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://base_level.tscn") 


func _on_option_button_pressed() -> void:
	var options = load("res://Option_screen.tscn").instance()
	get_tree().current_scene.add_child(options)


func _on_quit_button_pressed() -> void:
	get_tree().quit()
