import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Bar'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Text('Ciruclar Progress Bar'),
          CircularProgressIndicator( strokeWidth: 2, backgroundColor: Colors.black45,),
          SizedBox(height: 30),
          Text('Ciruclar Progress Bar Controlled'),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}


class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (i) {
        return (i * 2)/ 100;
      }).takeWhile((element) => element < 100),
      builder:  (context , snapshot) {
        final progressValue = snapshot.data ?? 0;
        return  Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(value: progressValue, strokeWidth: 2, backgroundColor: Colors.black12,),
           const SizedBox(width: 20),
            Expanded(child: LinearProgressIndicator( value: progressValue, backgroundColor: Colors.black12, color: Colors.blue,))
          ],
        ),
      
      );
      }
    );
  }
}
 