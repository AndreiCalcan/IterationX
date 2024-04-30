extends Augment
class_name Damage

func _ready() -> void:
	property_name = "damage_increase"
	base_increase = 0.1
	calc_increase()
	
func calc_increase() -> void:
	increase = base_increase * level
	
func update_stats(new_level : int) -> void:
	level = new_level
	calc_increase()
