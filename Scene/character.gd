extends Node2D
class_name Character

@onready var animation_player: AnimationPlayer = $AnimationPlayer

signal chat

func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseMotion and event.button_mask == MOUSE_BUTTON_MASK_RIGHT:
		get_tree().root.position += Vector2i(event.relative)
	
	# 处理聊天开始
	if event is InputEventMouseButton and event.is_action_pressed("CharStart"):
		chat.emit()
		animation_player.play("Speaking")

	pass # Replace with function body.
