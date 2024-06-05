import 'package:flutter/material.dart';

class RemindersView extends StatefulWidget {
  static String id = 'reminders_view';
  const RemindersView({super.key});

  @override
  State<RemindersView> createState() => _RemindersViewState();
}

class _RemindersViewState extends State<RemindersView> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Reminders Page'),      
    );
  }
}