import 'package:flutter/material.dart';

class CardsView extends StatefulWidget {
  static String id = 'cards_view';
  const CardsView({super.key});

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Cards Page'),      
    );
  }
}