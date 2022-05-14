import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_test1/src/modules/state_provider/state_provider.dart';

class StateProviderView extends ConsumerWidget {
  const StateProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (_, ref, __) {
            final _counter = ref.watch(quantity);
            return Text(_counter.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        ref.read(quantity.state).state++;
      }),
    );
  }
}
