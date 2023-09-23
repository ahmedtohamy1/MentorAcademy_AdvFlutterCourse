import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pos/UI/screens/home_screen.dart';
import 'package:pos/bloc/cubit/cubit/counter_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(home: HomeScreen()),
    ),
  );
}
