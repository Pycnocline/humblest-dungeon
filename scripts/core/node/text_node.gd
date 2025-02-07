class_name TextNode
extends BaseNode

@export_category("文本内容")
@export_multiline var text: String = ""	# 支持BBCode的多行文本
#@export var voice_clip: AudioStream	# 关联语音文件
@export var auto_advance: bool = false	# 是否自动继续
@export var new_line: bool = true	# 是否换行
@export_range(0.1, 5.0) var advance_delay: float = 1.0  # 自动继续延迟

@export_category("流程控制")
@export var next_node: String = ""	# 直接跳转目标节点ID
@export var required_vars: Dictionary = {}	# 需要的变量
@export var node_type: String = "text"	# 节点类型
