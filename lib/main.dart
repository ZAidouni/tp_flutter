import 'package:flutter/material.dart';
import 'header.dart';
import 'footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deux Colonnes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> selectedWords = [];

  void _toggleWordSelection(String word) {
    setState(() {
      if (selectedWords.contains(word)) {
        selectedWords.remove(word); // Supprimer le mot s'il est déjà sélectionné
      } else {
        selectedWords.add(word); // Ajouter le mot s'il n'est pas déjà sélectionné
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Header(selectedWords: selectedWords),
          ),
          Expanded(
            flex: 1,
            child: Footer(
              selectedWords: selectedWords,
              toggleWordSelection: _toggleWordSelection,
            ),
          ),
        ],
      ),
    );
  }
}
