class_name DialogueData
extends Resource

@export_category("对话结构")
@export var nodes: Array[BaseNode]

@export_category("资源管理")
@export var dependencies: Array[String]		# 预加载资源

@export_category("本地变量")
@export var variables: Dictionary		# 本地变量

@export var version: String = "1.0"          # 数据版本控制
