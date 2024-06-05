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
          children: <Widget>[
            // Welcome Section
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Bienvenido de nuevo, TU',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'El reporte de todas tus estadisticas esta al dia',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 16),

            // Comparisons Section
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Comparaciones',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  // Line Chart goes here (replace with your chart implementation)
                  Container(
                    height: 200,
                    child: Center(child: Text('Line Chart')),
                  ),
                ],
              ),
            ),

            // Income, Expenses, Savings Section
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  // Income and Expenses Section
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Ingresos',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            // Income data goes here (replace with your chart implementation)
                            Container(
                              height: 100,
                              child: Center(child: Text('Income Chart')),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Gastos',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            // Expenses data goes here (replace with your chart implementation)
                            Container(
                              height: 100,
                              child: Center(child: Text('Expenses Chart')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Savings Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Ahorros',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      // Pie Chart goes here (replace with your chart implementation)
                      Container(
                        height: 150,
                        child: Center(child: Text('Pie Chart')),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Total \$2280',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Legend goes here (replace with your legend implementation)
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.circle, size: 10, color: Colors.grey),
                                SizedBox(width: 4),
                                Text('Carro nuevo'),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.circle, size: 10, color: Colors.grey),
                                SizedBox(width: 4),
                                Text('Maestría'),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.circle, size: 10, color: Colors.black),
                                SizedBox(width: 4),
                                Text('Hipoteca'),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            // Wallet Transactions Section
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Trasacciones billetera',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  // Transaction Data Table goes here (replace with your table implementation)
                  DataTable(
                    columns: [
                      DataColumn(label: Text('Hipoteca')),
                      DataColumn(label: Text('Cantidad')),
                      DataColumn(label: Text('Total')),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text('Trasanccion d...')),
                          DataCell(Text('50')),
                          DataCell(Text('1470')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Trasanccion d...')),
                          DataCell(Text('80')),
                          DataCell(Text('1520')),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Card Transactions Section
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Trasacciones tarjetas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  // Transaction Data Table goes here (replace with your table implementation)
                  DataTable(
                    columns: [
                      DataColumn(label: Text('Juguetes')),
                      DataColumn(label: Text('Cantidad')),
                      DataColumn(label: Text('Total')),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text('Juguetes por...')),
                          DataCell(Text('100')),
                          DataCell(Text('900')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Cena Navideña')),
                          DataCell(Text('100')),
                          DataCell(Text('2600')),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Reminders Section
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Recordatorios',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  // Reminder Data Table goes here (replace with your table implementation)
                  DataTable(
                    columns: [
                      DataColumn(label: Text('')),
                      DataColumn(label: Text('Fecha')),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text('Pagar plan')),
                          DataCell(Text('2023-12-27')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Pagar el agua')),
                          DataCell(Text('2023-12-20')),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
