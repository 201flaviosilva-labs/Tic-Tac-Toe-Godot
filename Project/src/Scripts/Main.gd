extends Control

var BUTTONS = []

func _ready():
	BUTTONS = [
		$Game/TopLeft,
		$Game/TopCenter,
		$Game/TopRight,
		$Game/MiddleLeft,
		$Game/MiddleCenter,
		$Game/MiddleRight,
		$Game/BottomLeft,
		$Game/BottomCenter,
		$Game/BottomRight,
	]
	pass # Replace with function body.

func click(btn, index):
	btn.text = GameManager.get_current_player();
	GameManager.check_win(index);
	btn.disabled = true;
	
	if GameManager.get_winner() != null:
		disable_buttons();
		OS.alert("Winner: "+ GameManager.get_winner(), "Win!");
		pass
	pass
	
func disable_buttons():
	for btn in BUTTONS:
		btn.disabled = true;
	pass
	
func reset():
	GameManager.reset();
	for btn in BUTTONS:
		reset_button(btn);

func reset_button(btn):
	btn.text = "-";
	btn.disabled = false;
	pass

func _on_TopLeft_pressed():
	click($Game/TopLeft, 0);
	pass # Replace with function body.


func _on_TopCenter_pressed():
	click($Game/TopCenter, 1);
	pass # Replace with function body.


func _on_TopRight_pressed():
	click($Game/TopRight, 2);
	pass # Replace with function body.


func _on_MiddleLeft_pressed():
	click($Game/MiddleLeft, 3);
	pass # Replace with function body.


func _on_MiddleCenter_pressed():
	click($Game/MiddleCenter, 4);
	pass # Replace with function body.


func _on_MiddleRight_pressed():
	click($Game/MiddleRight, 5);
	pass # Replace with function body.


func _on_BottomLeft_pressed():
	click($Game/BottomLeft, 6);
	pass # Replace with function body.


func _on_BottomCenter_pressed():
	click($Game/BottomCenter, 7);
	pass # Replace with function body.


func _on_BottomRight_pressed():
	click($Game/BottomRight, 8);
	pass # Replace with function body.


func _on_ResetBtn_pressed():
	reset();
	pass # Replace with function body.
