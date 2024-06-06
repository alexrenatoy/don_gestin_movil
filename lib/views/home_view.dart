import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  static String id = 'home_view';
  const HomeView({super.key});


  @override
  State<HomeView> createState() => _HomeViewState();
  
}

class _HomeViewState extends State<HomeView> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('¡Bienvenido a tu Aplicación Financiera!'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '¡Administra tus finanzas personales de manera eficiente!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Con nuestra aplicación, puedes realizar diversas acciones para mantener un control total sobre tus finanzas:',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
            _buildFeatureItem('Registrar Transacciones',
                'Registra tus ingresos y gastos para mantener un registro detallado de tus finanzas.'),
            _buildFeatureItem('Planes de Ahorro',
                'Establece metas de ahorro y sigue tu progreso para alcanzar tus objetivos financieros.'),
            _buildFeatureItem('Recordatorios',
                'Configura recordatorios para fechas de vencimiento de pagos, eventos financieros importantes y más.'),
            _buildFeatureItem('Registro de Tarjetas Bancarias',
                'Agrega y administra tus tarjetas bancarias para un acceso rápido y seguro a tu información financiera.'),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String title, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            description,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}