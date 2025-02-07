extends Control

@onready var dialogue_box: RichTextLabel = $"../DialogueBox"

@export var beginning_dialogue: DialogueData

var current_dialogue: DialogueData
var current_node_number: int
var current_node

func _output(dialogue: String, is_new_line: bool):
	var text = dialogue
	if is_new_line:
		text = "\n" + text
	dialogue_box.append_text(text)

func _start_dialogue():
	current_dialogue = beginning_dialogue
	current_node_number = -1
	_next_node()
	
func _next_node():
	if current_node_number < current_dialogue.nodes.size():
		current_node_number += 1
		print(str(current_node_number))
		current_node = current_dialogue.nodes[current_node_number]
		_process_node()
	else:
		print("[错误]此Dialogue没有下一个节点")

func _process_node():
	var node_type = current_node.node_type
	if node_type == "text":
		_process_text_node()
	elif node_type == "choice":
		pass
	elif node_type == "jump":
		pass
	else:
		print("[错误]不受支持的节点类型" + node_type)

func _process_text_node():
	_output(current_node.text, current_node.new_line)
	
func _on_ready() -> void:
	dialogue_box.clear()
	var null_lines = 0
	while null_lines < 10:
		null_lines += 1
		_output(" ", true)
	_start_dialogue()
