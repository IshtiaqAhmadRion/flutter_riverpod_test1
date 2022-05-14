import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/modules/app.dart';

void main() {
  runApp( const ProviderScope(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
      
    ),
  ));
}
