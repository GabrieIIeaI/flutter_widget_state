import 'package:flutter/material.dart';

import 'language.dart';

class ListLanguageWidget extends StatefulWidget {
  const ListLanguageWidget({super.key});

  @override
  State<ListLanguageWidget> createState() => _ListLanguageWidgetState();
}

class _ListLanguageWidgetState extends State<ListLanguageWidget> {

  List<Language> linguages = [];

  List<ChoiceChip> _buildChips () =>
    linguages
    .map((language) => 
      ChoiceChip(
        label: Text(language.name),
        onSelected: (value) {
          setState(() {
            language.selected = value;
          });
        },
        selected: language.selected),
    ).toList();
    
  List<Card> _buildSelectedChips () => 
    linguages
    .where((language) => language.selected)
    .map((language) => 
      Card(
        child: ListTile(
          leading: Text(language.id),
          title: Text(language.name),
          subtitle: Text(language.descritpion),
        ),
      )).toList();

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Center(
            child: Wrap(
              spacing: 10,
              children: _buildChips(),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              children: _buildSelectedChips()
            )
          ),
          TextButton(
            onPressed: () {}, 
            child: const Text("Adicionar Card")
          )
        ],
      );
  }
}
