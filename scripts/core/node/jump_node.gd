class_name JumpNode
extends BaseNode

@export_category("跳转设置")
@export_file("*.tres") var target_resource: String = ""  # 资源选择器
@export var target_node: String = ""           # 目标节点ID
@export var transition_type: int = 0           # 0=立即 1=淡入淡出

func _init():
	node_type = "jump"
