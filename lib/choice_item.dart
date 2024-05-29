import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final String word;
  final bool isSelected;
  final Function(String) toggleWordSelection;

  ChoiceItem({required this.word, required this.isSelected, required this.toggleWordSelection});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => toggleWordSelection(word),
      child: Chip(
        label: Text(word),
        backgroundColor: isSelected ? Color.fromARGB(255, 237, 173, 10) : Color.fromARGB(255, 210, 204, 204),
      ),
    );
  }
}
