extends Area2D

var cant_click = false
export var id = 0
func _ready():
	$Sprite.hide()
	
func _process(delta):
	if $"/root/Global".id == id : 
		$Sprite.show()
		cant_click = true


func _on_Tanda_input_event(viewport, event, shape_idx):
	if cant_click == false && $"/root/Global".main == true : 
		if event is InputEventMouseButton && event.button_index == BUTTON_LEFT && event.pressed :
			$Sprite.show()
			$EfekSuara.play()
			cant_click = true
			$"/root/Global".id = id
			$"/root/Global".temuan += 1
