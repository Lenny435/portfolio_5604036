import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider-Seite'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Wähle einen Wert zwischen 0 und 100:',
              style: TextStyle(fontSize: 16),
            ),
            Slider(
              min: 0,
              max: 100,
              value: _value,
              divisions: 100,
              label: _value.round().toString(),
              onChanged: (newValue) {
                setState(() {
                  _value = newValue;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Aktueller Wert: ${_value.round()}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            Container(
              height: 30,
              color: Colors.blue.withOpacity(_value / 100),
              alignment: Alignment.center,
              child: const Text(
                'Visualisierung',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _value);
              },
              child: const Text('Zurück zur Startseite'),
            ),
          ],
        ),
      ),
    );
  }
}