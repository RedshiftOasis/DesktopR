extends Control
@onready var chat_text: ChatText = $ChatText

var sentences : Array[String]
func _ready() -> void:
	get_tree().root.set_transparent_background(true)
	sentences = ["你好呀，\r\n我叫若雪❄~","今天又是美好的一天~","今天又有什么计划呢？~"]
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("QuitGame"):
		get_tree().quit()


func _on_character_chat() -> void:
	chat_text.text = sentences.pick_random()
	chat_text.play_chat()
	pass # Replace with function body.
