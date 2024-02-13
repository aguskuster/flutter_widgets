import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: const Text('SnackBar'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Estas Seguro ?'),
          content: const Text('Deseas continuar con la accion'),
          actions: <Widget>[
            FilledButton(onPressed: () {}, child: const Text('Aceptar')),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () => showCustomSnackBar(context),
            label: const Text('Show SnackBar'),
            icon: const Icon(Icons.message)),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            FilledButton.tonal(onPressed: () {
              showAboutDialog(context: context, children: [ const Text("Lorem Ipsum dolor sit amet ")]);
            }, child: Text("Licences")),
            FilledButton.tonal(onPressed: () => openDialog(context), child: Text("Dialogos")),
          ]),
        ));
  }
}
