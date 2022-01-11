import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';
import 'counter_view.dart';

/// This widget is needed because it is important to separate cubit/bloc
/// creation and consumption. Make the code more reusable and testable.
class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  ///  Cubit creation.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      /// (context) of cubit is omitted because there should be no use of it.
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}
