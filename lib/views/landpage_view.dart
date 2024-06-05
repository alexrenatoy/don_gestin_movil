
import 'package:don_gestin_movil/views/login_view.dart';

import 'package:flutter/material.dart';

class LandPageView extends StatefulWidget {
    static String id = 'landpage_view';
  const LandPageView({super.key});

  @override
  State<LandPageView> createState() => _LandPageViewState();
}

class _LandPageViewState extends State<LandPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, LoginView.id);
          },
          child: Text('Go to Login'),
        ),
      ),
      // bottomNavigationBar: CustomNavbar(),
    );
  }
}