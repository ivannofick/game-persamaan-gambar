extends Sprite



func _ready():
	position = Vector2(512,-200)
	$Tween.interpolate_property(self, "position", position, Vector2(512, 220),3, Tween.TRANS_BOUNCE, Tween.EASE_OUT)
	$Tween.start()
	
