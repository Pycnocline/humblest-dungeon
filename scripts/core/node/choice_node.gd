class_name ChoiceNode
extends BaseNode

@export_category("选项设置")
@export var options: Array[Dictionary] = [{
	"text": "",				# 选项文本
	"target_resource": "",    # 跨文件跳转资源路径
	"target_node": "",        # 目标节点ID
	"condition": "gold > 50", # 显示条件
	"set_vars": {"used": 1}   # 选择后设置的变量
}]

func _init():
	node_type = "choice"
