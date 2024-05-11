extends Projectile

var velocity : Vector2
var damage : float
var hit_counter : int

func _process(delta: float) -> void:
	position += velocity * delta

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("damageable"):
		body.take_damage(damage, 500)
		hit_counter -= 1
		if hit_counter <= 0:
			queue_free()

func _on_timer_timeout() -> void:
	queue_free()

func despawn() -> void:
	queue_free()
