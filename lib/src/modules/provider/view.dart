import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_test1/src/modules/provider/provider.dart';
import 'package:flutter_riverpod_test1/src/modules/state_provider/state_provider.dart';

class ProviderView extends ConsumerWidget {
  const ProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (_, ref, __) {
            return Text(ref.watch(providerV('Riverpod Demo Title')).toString() );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        final _state = ref.read(quantity.state);
        _state.state = _state.state.copyWith(quantity2: _state.state.quantity2+1);
        
      }),
    );
  }
}
