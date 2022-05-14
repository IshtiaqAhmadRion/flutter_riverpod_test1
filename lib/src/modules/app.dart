import 'package:flutter/material.dart';

import 'state_provider/view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StateProviderView();
  }
}