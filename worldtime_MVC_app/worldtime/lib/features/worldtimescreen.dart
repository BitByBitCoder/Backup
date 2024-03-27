import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:worldtime/features/controller.dart';
import 'package:worldtime/features/repsository.dart';

class WorldTimeScreen extends ConsumerWidget {
  const WorldTimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void ff() async {
      final a = await ref.watch(ControllerProvider);
      print('dfdf');
    }

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('data'),
          TextButton(
              onPressed: () {
                ff();
              },
              child: Text('hello'))
        ],
      ),
    );
  }
}
