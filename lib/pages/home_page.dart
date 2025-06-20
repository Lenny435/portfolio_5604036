import 'package:flutter/material.dart';
import 'slider_page.dart';
import 'profile_form_page.dart';
import 'settings_page.dart';
import 'summary_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _sliderValue = 50;
  String _name = '';
  String _email = '';
  String _about = '';
  bool _newsletter = false;
  bool _notifications = false;
  bool _darkMode = false;
  bool _offlineMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Portfolio von Lenny Wan')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text(
              'Willkommen im Portfolio von Lenny Wan!',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),

            ElevatedButton(
              child: const Text('Slider-Seite'),
              onPressed: () async {
                final value = await Navigator.push<double>(
                  context,
                  MaterialPageRoute(builder: (_) => const SliderPage()),
                );
                if (value != null) {
                  setState(() => _sliderValue = value);
                }
              },
            ),

            ElevatedButton(
              child: const Text('Profil bearbeiten'),
              onPressed: () async {
                final result = await Navigator.push<Map<String, String>>(
                  context,
                  MaterialPageRoute(builder: (_) => const ProfileFormPage()),
                );
                if (result != null) {
                  setState(() {
                    _name = result['name'] ?? '';
                    _email = result['email'] ?? '';
                    _about = result['about'] ?? '';
                  });
                }
              },
            ),

            ElevatedButton(
              child: const Text('Einstellungen'),
              onPressed: () async {
                final result = await Navigator.push<Map<String, bool>>(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsPage()),
                );
                if (result != null) {
                  setState(() {
                    _newsletter = result['newsletter'] ?? false;
                    _notifications = result['notifications'] ?? false;
                    _darkMode = result['darkMode'] ?? false;
                    _offlineMode = result['offlineMode'] ?? false;
                  });
                }
              },
            ),

            ElevatedButton(
              child: const Text('Zusammenfassung'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SummaryPage(
                      name: _name,
                      email: _email,
                      about: _about,
                      sliderValue: _sliderValue,
                      newsletter: _newsletter,
                      notifications: _notifications,
                      darkMode: _darkMode,
                      offlineMode: _offlineMode,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
