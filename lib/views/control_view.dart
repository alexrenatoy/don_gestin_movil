
import 'package:don_gestin_movil/views/cards_view.dart';
import 'package:don_gestin_movil/views/home_view.dart';
import 'package:don_gestin_movil/views/landpage_view.dart';
import 'package:don_gestin_movil/views/register.dart';
import 'package:don_gestin_movil/views/reminders_view.dart';
import 'package:don_gestin_movil/views/saving_plans_view.dart';
import 'package:flutter/material.dart';
class ControlView extends StatefulWidget {
  static String id = 'wallet_view';
  const ControlView({super.key});

  @override
  State<ControlView> createState() => _ControlViewState();
}

class _ControlViewState extends State<ControlView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('¡Controla el acceso a donde tu quieras!'),
        ),
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Center(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomeView.id);
                  },
                  child: Text(
                    'Descripción o inicio',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.blue,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SavingsPlansView.id);
                  },
                  child: Text(
                    'Planes de Ahorro',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.blue,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RemindersView.id);
                  },
                  child: Text(
                    'Recordatorios',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.blue,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, CardsView.id);
                  },
                  child: Text(
                    'Registro de Tarjetas Bancarias',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.blue,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LandPageView.id);
                  },
                  child: Text(
                    'Página de Bienvenida',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.blue,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterView.id);
                  },
                  child: Text(
                    'Registra otra cuenta',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}