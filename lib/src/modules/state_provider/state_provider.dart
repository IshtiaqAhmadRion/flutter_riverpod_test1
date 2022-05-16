import 'package:flutter_riverpod/flutter_riverpod.dart';

final quantity = StateProvider(((ref) => TestObj(11,22)));

class TestObj {
  final int quantity;
  final int quantity2;

  TestObj(this.quantity,this.quantity2);

  TestObj copyWith({
    int? quantity,
    int? quantity2,
  }) {
    return TestObj(quantity ?? this.quantity , quantity2 ??this.quantity2);
  }
}
