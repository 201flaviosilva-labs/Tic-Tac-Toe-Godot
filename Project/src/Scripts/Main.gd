extends Control

var game_state = [0, 1, 2, 3, 4, 5, 6, 7, 8]

func _ready():
	pass # Replace with function body.

func click(btn):
	btn.disabled = true;
	print("Click");
	pass

func _on_TopLeft_pressed():
	click($Game/TopLeft);
	pass # Replace with function body.


func _on_TopCenter_pressed():
	click($Game/TopCenter);
	pass # Replace with function body.


func _on_TopRight_pressed():
	click($Game/TopRight);
	pass # Replace with function body.


func _on_MiddleLeft_pressed():
	click($Game/MiddleLeft);
	pass # Replace with function body.


func _on_MiddleCenter_pressed():
	click($Game/MiddleCenter);
	pass # Replace with function body.


func _on_MiddleRight_pressed():
	click($Game/MiddleRight);
	pass # Replace with function body.


func _on_BottomLeft_pressed():
	click($Game/BottomLeft);
	pass # Replace with function body.


func _on_BottomCenter_pressed():
	click($Game/BottomCenter);
	pass # Replace with function body.


func _on_BottomRight_pressed():
	click($Game/BottomRight);
	pass # Replace with function body.
