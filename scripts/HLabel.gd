extends HBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
@export var label = 'My Label'

func set_text(value:String) -> void:
	$Label.text = '  '
	$Value.text = value

func play_flash():
	if get_node_or_null('./AnimationPlayer'):
		$AnimationPlayer.stop(true)
		$AnimationPlayer.play("Flash")

func render(value, llabel=null) -> void:
	if llabel == null:
		llabel = self.label
	$Label.text = llabel
	set_value(value)

	play_flash()

func set_value(value) -> void:
	$Value.text = str(value)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
