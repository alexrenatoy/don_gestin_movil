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
      appBar: AppBar(
        title: Text('Recordatorios'),
        leading: Icon(Icons.calendar_month),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recordatorios',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Tu sitio para revisar todos tus pendientes económicos',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Agregar recordatorio'),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Pagos Consumo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  DataTable(
                    columns: [
                      DataColumn(label: Text('Tarjeta')),
                      DataColumn(label: Text('Nombre')),
                      DataColumn(label: Text('Fecha')),
                      DataColumn(label: Text('Descripción')),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text('Banc. Pichinca')),
                          DataCell(Text('Pagar Luz')),
                          DataCell(Text('13 - 10 - 2023')),
                          DataCell(Text('Pagar antes del 15 de junio')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Coop.\nCooprogreso\nde Ambato')),
                          DataCell(Text('Pagar\nguarderia de\nlos niños')),
                          DataCell(Text('13 - 10 - 2023')),
                          DataCell(Text('Pagar antes del 15 de junio')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Banc. Pichinca')),
                          DataCell(Text('Pagar Luz')),
                          DataCell(Text('13 - 10 - 2023')),
                          DataCell(Text('Pagar antes del 15 de junio')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Banc. Pichinca')),
                          DataCell(Text('Pagar Luz')),
                          DataCell(Text('13 - 10 - 2023')),
                          DataCell(Text('Pagar antes del 15 de junio')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Banc. Pichinca')),
                          DataCell(Text('Pagar Luz')),
                          DataCell(Text('13 - 10 - 2023')),
                          DataCell(Text('Pagar antes del 15 de junio')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Banc. Pichinca')),
                          DataCell(Text('Pagar Luz')),
                          DataCell(Text('13 - 10 - 2023')),
                          DataCell(Text('Pagar antes del 15 de junio')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Banc. Pichinca')),
                          DataCell(Text('Pagar Luz')),
                          DataCell(Text('13 - 10 - 2023')),
                          DataCell(Text('Pagar antes del 15 de junio')),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('Banc. Pichinca')),
                          DataCell(Text('Pagar Luz')),
                          DataCell(Text('13 - 10 - 2023')),
                          DataCell(Text('Pagar antes del 15 de junio')),
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