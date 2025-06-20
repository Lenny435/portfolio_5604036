import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String name;
  final String email;
  final String about;
  final double sliderValue;
  final bool newsletter;
  final bool notifications;
  final bool darkMode;
  final bool offlineMode;

  const SummaryPage({
    super.key,
    required this.name,
    required this.email,
    required this.about,
    required this.sliderValue,
    required this.newsletter,
    required this.notifications,
    required this.darkMode,
    required this.offlineMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zusammenfassung'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            const Text(
              '📄 Profilinformationen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Name: $name'),
            Text('E-Mail: $email'),
            Text('Über mich: $about'),
            const SizedBox(height: 20),

            const Text(
              '🎚️ Slider-Wert',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Gewählter Wert: ${sliderValue.round()}'),
            const SizedBox(height: 20),

            const Text(
              '⚙️ Einstellungen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Newsletter: ${newsletter ? "Ja" : "Nein"}'),
            Text('Benachrichtigungen: ${notifications ? "An" : "Aus"}'),
            Text('Dunkler Modus: ${darkMode ? "Aktiviert" : "Deaktiviert"}'),
            Text('Offline-Modus: ${offlineMode ? "Aktiviert" : "Deaktiviert"}'),
            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Zurück zur Startseite'),
            ),
          ],
        ),
      ),
    );
  }
}