extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	# 从三个动画类型中随机选择一个播放(相当于是三种不同的怪物)
	$AnimatedSprite2D.playing = true
	var mob_types = $AnimatedSprite2D.frames.get_animation_names()
	$AnimatedSprite2D.animation = mob_types[randi() % mob_types.size()]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# 让怪物在超出屏幕时删除自己
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
