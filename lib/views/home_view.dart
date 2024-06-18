import 'package:don_gestin_movil/views/landpage_view.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                         color: Colors.grey[400],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bienvenido, Alex',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Todos tus reportes estadísticos están al día.',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context, LandPageView.id);
                            },
                            child: Icon(
                              Icons.exit_to_app,
                              color: Color.fromARGB(255, 171, 0, 0),
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 0),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 0),
                  FeatureCard(
                    icon: Icons.payment,
                    title: 'Recordatorios de Pagos',
                    description:
                        'Nunca pierdas un pago con nuestros recordatorios oportunos.',
                  ),
                  FeatureCard(
                    icon: Icons.savings,
                    title: 'Planes de Ahorro',
                    description: 'Configura objetivos de ahorro automáticos.',
                  ),
                  FeatureCard(
                    icon: Icons.history,
                    title: 'Registros de Transacciones',
                    description: 'Rastrea tus gastos con registros detallados.',
                  ),
                  FeatureCard(
                    icon: Icons.credit_card,
                    title: 'Tarjetas Personales',
                    description:
                        'Administra varias tarjetas y lleva un seguimiento de los saldos.',
                  ),
                ],
              ),
            ),],
        ),
      ),
    );
  }
}
