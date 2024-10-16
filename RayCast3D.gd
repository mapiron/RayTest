extends RayCast3D

@onready var label = $"../../Label"

func _physics_process(delta):
	if is_colliding():                                 #RayCast3Dが何かに当たっているかどうかを確認
		var collider = get_collider()                  #当たったオブジェクトを取得
		var collision_point = get_collision_point()    #衝突点の位置を取得
		var collision_normal = get_collision_normal()  #衝突面の法線ベクトルを取得
		
		#class_nameで指定した物のみ表示
		#if collider is Box:
		label.text = collider.name

		print("Collider: ", collider)		
		print("Collision Point: ", collision_point)
		print("Collision Normal: ", collision_normal)
	else:
		print("No collision detected")
		label.text = ""

