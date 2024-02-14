import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const name = 'ui_control_screen';
  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

enum Transportation { car, bike, bus, walk }

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation? selectedTransportation = Transportation.car;
  bool wantsNotifications = false;
  bool wantsLocation = false;
  bool wantsBluetooth = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer Mode"),
            subtitle: const Text("Controles adicionales"),
            value: isDeveloper,
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        ExpansionTile(
          title: const Text("Transportation"),
          subtitle: Text("$selectedTransportation"),
          children: [
            RadioListTile(
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = value as Transportation;
                });
              },
              title: const Text("Car"),
              subtitle: const Text("Vehiculo de motor"),
            ),
            RadioListTile(
              value: Transportation.bike,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = value as Transportation;
                });
              },
              title: const Text("Bike"),
              subtitle: const Text("Bike"),
            ),
            RadioListTile(
              value: Transportation.bus,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = value as Transportation;
                });
              },
              title: const Text("Bus"),
              subtitle: const Text("Vehiculo de motor"),
            ),
            RadioListTile(
              value: Transportation.walk,
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = value as Transportation;
                });
              },
              title: const Text("Walk"),
              subtitle: const Text("On feet"),
            ),
          ],
        ),
        CheckboxListTile(value: wantsNotifications, onChanged: (value) {
          setState(() {
            wantsNotifications = !wantsNotifications;
          });
        }, title: const Text("Notifications"), subtitle: const Text("Recibir notificaciones")),
        CheckboxListTile(value: wantsLocation, onChanged: (value) {
          setState(() {
            wantsLocation = !wantsLocation;
          });
        }, title: const Text("Location"), subtitle: const Text("Compartir ubicacion")),
        CheckboxListTile(value: wantsBluetooth, onChanged: (value) {
          setState(() {
            wantsBluetooth = !wantsBluetooth;
          });
        }, title: const Text("Bluetooth"), subtitle: const Text("Conectar dispositivos")),
      ],
    );
  }
}
