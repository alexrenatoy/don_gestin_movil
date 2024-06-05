import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  static String id = 'register_view';
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('register Page'),      
    );
  }
}