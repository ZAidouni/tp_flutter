import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final List<String> selectedWords;

  Header({required this.selectedWords});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        color: Colors.purple,
        padding: const EdgeInsets.only(top: 150.0, left: 50.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vos choix :',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Wrap(
              children: selectedWords.map((word) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Chip(
                  label: Text(word),
                  backgroundColor: const Color.fromARGB(255, 210, 204, 204),
                ),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
