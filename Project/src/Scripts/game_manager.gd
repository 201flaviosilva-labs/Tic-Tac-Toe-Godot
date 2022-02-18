extends Node

const WIN = [
	[0, 1, 2],
	[3, 4, 5],
	[6, 7, 8],
	
	[0, 3, 6],
	[1, 4, 7],
	[2, 5, 8],
	
	[0, 4, 8],
	[2, 4, 6],
];
const PLAYERS = ["X", "O"];

var game_state = ["0", "1", "2", "3", "4", "5", "6", "7", "8"];
var current_player = PLAYERS[0];
var winner = null;

func reset():
	winner = null;
	for i in range(game_state.size()):
		game_state[i] = str(i);

	pass

func check_win(index):
	game_state[index] = get_current_player();
	
	for w in WIN:
		var gs0 = game_state[w[0]];
		var gs1 = game_state[w[1]];
		var gs2 = game_state[w[2]];
		
		if gs0 == gs2 && gs0 == gs1 && gs1 == gs2:
			winner = get_current_player();
	
	toggle_player();
	pass;

func get_current_player():
	return current_player;
	pass

func toggle_player():
	if (current_player == PLAYERS[0]):
		current_player = PLAYERS[1];
	else:
		current_player = PLAYERS[0];
	pass
	
func get_winner():
	return winner;
