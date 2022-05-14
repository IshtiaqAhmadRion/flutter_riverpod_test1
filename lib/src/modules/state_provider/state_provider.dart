import 'package:flutter_riverpod/flutter_riverpod.dart';

final quantity = StateProvider(((ref) => 13));

class TestObj {
   final int quantity;

  TestObj(this.quantity);

}
