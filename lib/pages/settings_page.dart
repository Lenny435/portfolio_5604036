import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Checkbox-Zustände
  bool _newsletter = false;
  bool _notifications = false;

  // Switch-Zustände
  bool _darkMode = false;
  bool _offlineMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Einstellungen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Checkboxen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            CheckboxListTile(
              title: const Text('Newsletter abonnieren'),
              value: _newsletter,
              onChanged: (value) {
                setState(() {
                  _newsletter = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Benachrichtigungen erhalten'),
              value: _notifications,
              onChanged: (value) {
                setState(() {
                  _notifications = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Switches',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SwitchListTile(
              title: const Text('Dunkler Modus'),
              value: _darkMode,
              onChanged: (value) {
                setState(() {
                  _darkMode = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Offline-Modus'),
              value: _offlineMode,
              onChanged: (value) {
                setState(() {
                  _offlineMode = value;
                });
              },
            ),
            const SizedBox(height: 30),
            const Divider(),
            const Text(
              'Aktuelle Auswahl:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Newsletter: ${_newsletter ? "Ja" : "Nein"}'),
            Text('Benachrichtigungen: ${_notifications ? "Ja" : "Nein"}'),
            Text('Dunkler Modus: ${_darkMode ? "Aktiv" : "Inaktiv"}'),
            Text('Offline-Modus: ${_offlineMode ? "Aktiv" : "Inaktiv"}'),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'newsletter': _newsletter,
                  'notifications': _notifications,
                  'darkMode': _darkMode,
                  'offlineMode': _offlineMode,
                });
              },
              child: const Text('Speichern & Zurück'),
            ),
          ],
        ),
      ),
    );
  }
}