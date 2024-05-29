import 'package:flutter/material.dart';
import 'choice_item.dart';

class Footer extends StatelessWidget {
  final List<String> selectedWords;
  final Function(String) toggleWordSelection;

  Footer({required this.selectedWords, required this.toggleWordSelection});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: [
            ChoiceItem(word: 'cinema', isSelected: selectedWords.contains('cinema'), toggleWordSelection: toggleWordSelection),
            ChoiceItem(word: 'petanque', isSelected: selectedWords.contains('petanque'), toggleWordSelection: toggleWordSelection),
            ChoiceItem(word: 'fitness', isSelected: selectedWords.contains('fitness'), toggleWordSelection: toggleWordSelection),
            ChoiceItem(word: 'league of legend', isSelected: selectedWords.contains('league of legend'), toggleWordSelection: toggleWordSelection),
            ChoiceItem(word: 'basket', isSelected: selectedWords.contains('basket'), toggleWordSelection: toggleWordSelection),
            ChoiceItem(word: 'shopping', isSelected: selectedWords.contains('shopping'), toggleWordSelection: toggleWordSelection),
            ChoiceItem(word: 'programmation', isSelected: selectedWords.contains('programmation'), toggleWordSelection: toggleWordSelection),
          ],
        ),
      ),
    );
  }
}
