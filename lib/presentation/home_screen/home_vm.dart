import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:kati_zero/core/utils/app_%20routes.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeVm extends ChangeNotifier {
// add the names of player
  String player1 = "Player 1"; // Default names
  String player2 = "Player 2";
  List<String> _board = List.filled(9, "");
  bool _isXNext = true;
  String _winner = "";

  final Box _gameBox = Hive.box('gameBox');

  List<String> get board => _board;

  bool get isXNext => _isXNext;

  String get winner => _winner;

  String get currentPlayer => _isXNext ? player1 : player2;

  // List<String> get winningHistory => _gameBox.get('winningHistory', defaultValue: <String>[]).cast<String>();
  // Get history as List of Maps
  List<Map<String, String>> get winningHistory {
    return (_gameBox.get('winningHistory', defaultValue: <Map<String, String>>[]) as List)
        .map((e) => Map<String, String>.from(e))
        .toList();
  }

  void handleTap(int index, BuildContext context) {
    if (_board[index] != "" || _winner.isNotEmpty) return;
    // first
    // _board[index] = _isXNext ? "X" : "0";
    _board[index] = _isXNext ? "O" : "X";
    _isXNext = !_isXNext;
    _winner = _cheakWinner();
    print("Winner: $_winner");

    if (_winner.isNotEmpty) {
      // ✅ Save Winner in Hive
      _saveWinner(_winner);
      print("Winner before navigation: $_winner");
      Navigator.pushNamed(context, AppRoutes.Wining_screen, arguments: _winner);
    }
    notifyListeners();
  }

  String _cheakWinner() {
    const winConditions = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];
    for (var condition in winConditions) {
      final a = _board[condition[0]];
      final b = _board[condition[1]];
      final c = _board[condition[2]];
      if (a == b && b == c && a.isNotEmpty) {
        return a == "O" ? player1 : player2; // Return winner name
      }
    }

    if (_board.every((cell) => cell.isNotEmpty)) {
      return "Draw";
    }
    return "";
  }

  void _saveWinner(String winner) {
    List<Map<String, String>> history = winningHistory;
    history.add({"winner": winner, "player1": player1, "player2": player2});
    _gameBox.put('winningHistory', history);
  }

  void loadWinnerHistory() {
    notifyListeners();
  }

  void resetGame(BuildContext context) {
    _board = List.filled(9, "");
    _isXNext = true;
    _winner = "";
    Navigator.pushReplacementNamed(context, AppRoutes.Home_screen);
    notifyListeners();
    // Navigator.pushReplacementNamed(context, AppRoutes.Home_screen);
  }
}
