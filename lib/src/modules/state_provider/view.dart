import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_test1/src/modules/state_provider/state_provider.dart';

class StateProviderView extends ConsumerWidget {
  const StateProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Consumer(
                builder: (_, ref, __) {
                  final _ref =
                      ref.watch(quantity.select((value) => value.quantity));
                  return Text( _ref.toString());
                },
              ),
              Consumer(builder: (_, ref, __) {
                final _ref =
                    ref.watch(quantity.select((value) => value.quantity2));
                return Text(_ref.toString());
              })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        final _state = ref.read(quantity.state);
        _state.state = _state.state.copyWith(quantity: _state.state.quantity + 1);
        _state.state = _state.state.copyWith(quantity2: _state.state.quantity2 + 1);
        
        
        
      }),
    );
  }
}
