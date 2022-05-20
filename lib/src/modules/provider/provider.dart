import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_test1/src/modules/state_provider/state_provider.dart';

final providerV = Provider.family.autoDispose<Map<String, String>,String>((ref,title) {
  final _quantity = ref.watch(quantity);

  final _data = {
    'title': title,
    'description': 'sdlfkjsdjfljfjdfkjasdljfslajdflj',
    'author': 'Flutter community',
    'homepage': '',
    'version': '${_quantity.quantity2}.0.0',
  };

  return _data;
});
