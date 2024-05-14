extends Area3D

func _ready():
	var callable = Callable(self, "_on_body_entered")
	connect("body_entered", callable)
	

func _on_body_entered(body):
	if body.name == "Player": 
		print("Player has collected the coin.")
		$CoinSound.play()
		await get_tree().create_timer(0.25).timeout
		queue_free()

		
 
