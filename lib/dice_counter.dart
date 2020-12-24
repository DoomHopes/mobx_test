import 'dart:math';
import 'package:mobx/mobx.dart';

part 'dice_counter.g.dart';

// 'flutter packages pub run build_runner build' in TERMINAL

class DiceCounter = _DiceCounter with _$DiceCounter;

abstract class _DiceCounter with Store {
  @observable
  int left = Random().nextInt(6) + 1;

  @observable
  int right = Random().nextInt(6) + 1;

  @observable
  int total;

  @action
  void roll() {
    left = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;
    total = left + right;
  }
}
