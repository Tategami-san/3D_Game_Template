extends Control

@export var dialogue_resource : Resource
var current_index : int = 0

func _ready():
	update_dialogue()

func _on_NextButton_pressed():
	current_index += 1
	if current_index < dialogue_resource.lines.size():
		update_dialogue()
	else:
		print("Dialogue ended")  # Replace with actual logic to proceed

func update_dialogue():
	var current_line = dialogue_resource.lines[current_index]
	$Character1Sprite.visible = current_line.character == "Girl A"
	$Character2Sprite.visible = current_line.character == "Girl B"
	$DialogueLabel.bbcode_text = "[b]" + current_line.character + ":[/b] " + current_line.text
