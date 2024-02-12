import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class shoulder extends StatefulWidget {
  const shoulder({super.key});

  @override
  State<shoulder> createState() => _shoulderState();
}

class _shoulderState extends State<shoulder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shoulder Workout'),),
      body: ListView(
        children: [

        ],
      ),
    );
  }
}
