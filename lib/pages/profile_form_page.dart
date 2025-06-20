import 'package:flutter/material.dart';

class ProfileFormPage extends StatefulWidget {
  const ProfileFormPage({super.key});

  @override
  State<ProfileFormPage> createState() => _ProfileFormPageState();
}

class _ProfileFormPageState extends State<ProfileFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _about = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil bearbeiten')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                onSaved: (value) => _name = value ?? '',
                validator: (value) =>
                value == null || value.isEmpty ? 'Bitte Name eingeben' : null,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-Mail'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => _email = value ?? '',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bitte E-Mail eingeben';
                  }
                  final emailRegExp = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
                  if (!emailRegExp.hasMatch(value)) {
                    return 'Bitte gültige E-Mail-Adresse eingeben';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Über mich'),
                maxLines: 4,
                onSaved: (value) => _about = value ?? '',
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState!.save();

                    // Zeige SnackBar mit Vorschau
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Gespeichert: $_name, $_email'),
                        duration: const Duration(seconds: 2),
                      ),
                    );

                    // Daten zurückgeben
                    Future.delayed(const Duration(milliseconds: 500), () {
                      Navigator.pop(context, {
                        'name': _name,
                        'email': _email,
                        'about': _about,
                      });
                    });
                  }
                },
                child: const Text('Speichern & Zurück'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}