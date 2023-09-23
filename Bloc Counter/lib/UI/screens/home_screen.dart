// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/bloc/cubit/cubit/counter_cubit.dart';

class HomeScreen extends StatelessWidget {
  String textData = "Your count is: ";

  @override
  Widget build(BuildContext context) {
    final blocProvider = BlocProvider.of<CounterCubit>(context);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Text(blocProvider.val.toString());
                },
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton.filled(
                    onPressed: blocProvider.increaseCount,
                    icon: Icon(Icons.plus_one_rounded),
                  ),
                  IconButton.filled(
                    onPressed: blocProvider.decreaseCount,
                    icon: Icon(Icons.exposure_minus_1_rounded),
                  ),
                  IconButton.filled(
                    onPressed: blocProvider.ZeroCount,
                    icon: Icon(Icons.exposure_zero_rounded),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
