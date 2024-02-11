import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Eleveted")),
            const ElevatedButton(onPressed: null, child: Text("Eleveted Disabled")),
            ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.access_alarm_rounded), label: const Text("Elevated Icon")),
            FilledButton(onPressed: () {}, child: const Text("Filled")),
            FilledButton.icon(onPressed: (){}, icon: const Icon(Icons.account_box_outlined), label: const Text("Filled icon")),
            OutlinedButton(onPressed: (){}, child: const Text("Outlined")),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.account_box_outlined), label: const Text("Outlined icon")),
            TextButton(onPressed: (){}, child: const Text("Text")),
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.access_time_filled_rounded), label: const Text("Text icon")),
              
            IconButton(onPressed: (){}, icon: const Icon(Icons.access_alarm_rounded)),
            IconButton(onPressed: null, icon: const Icon(Icons.access_alarm_rounded)),
            IconButton(onPressed: (){},style: ButtonStyle( backgroundColor: MaterialStatePropertyAll(colors.primary), iconColor: const MaterialStatePropertyAll(Colors.white)), icon: const Icon(Icons.access_alarm_rounded)),
          ],
        ),
      ),
    );
  }
}
