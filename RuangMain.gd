extends Node2D

func _ready():
	$Tombol.hide() 

func _process(delta):
	if $"/root/Global".temuan == 10 :
		$SuaraSelamat.play()
		$"/root/Global".temuan = 11
		$Label.text = "Ketemu = " + str($"/root/Global".temuan)
	if $"/root/Global".temuan == 11 :
		$Label.text = "Selamat Kamu Berhasil Menemukan 10 Perbedaan Gambar"
		$Label.get("custom_fonts/font").size = 20
		
	if $"/root/Global".temuan <  10 && $"/root/Global".main == true : 
		$Label.text = "Ketemu = " + str($"/root/Global".temuan)


func _on_Timer_timeout():
	$Tombol.show()
	$SuaraKlik.play()
	$Timer.stop()


func _on_Tombol_pressed():
	$Tombol.queue_free()
	$Judul.queue_free()
	$SuaraKlik.play()
	$"/root/Global".main = true
