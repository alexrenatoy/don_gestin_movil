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
      appBar: AppBar(
        title: Text('Tus Tarjetas'),
        leading: Icon(Icons.credit_card_sharp),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tarjetas disponibles y detalles',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    // child: Image.asset('assets/mastercard.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[700],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tarjeta de Crédito',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Banco: Pichincha',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Saldo Disponible: \$20.00,09',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fecha de Corte: 01-12-2023',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fecha de Vencimiento: 15-12-2023',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[600],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tarjeta de Crédito',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Banco: Pichincha',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Saldo Disponible: \$20.00,09',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fecha de Corte: 01-12-2023',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fecha de Vencimiento: 15-12-2023',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[700],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Movimiento de las Tarjetas',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          DataTable(
                            columns: [
                              DataColumn(label: Text('Tipo')),
                              DataColumn(label: Text('Banco')),
                              DataColumn(label: Text('Fecha')),
                              DataColumn(label: Text('')),
                              DataColumn(label: Text('Total')),
                            ],
                            rows: [
                              DataRow(
                                cells: [
                                  DataCell(Text('Crédito')),
                                  DataCell(Text('Pichincha')),
                                  DataCell(Text('01/02/2023')),
                                  DataCell(Text('\$1000.00', style: TextStyle(color: Colors.red))),
                                  DataCell(Text('\$1000.00')),
                                ],
                              ),
                              DataRow(
                                cells: [
                                  DataCell(Text('Debito')),
                                  DataCell(Text('Pichincha')),
                                  DataCell(Text('01/02/2023')),
                                  DataCell(Text('\$800.00', style: TextStyle(color: Colors.green))),
                                  DataCell(Text('\$1000.00')),
                                ],
                              ),
                              DataRow(
                                cells: [
                                  DataCell(Text('Crédito')),
                                  DataCell(Text('Pichincha')),
                                  DataCell(Text('01/02/2023')),
                                  DataCell(Text('\$800.00', style: TextStyle(color: Colors.green))),
                                  DataCell(Text('\$1000.00')),
                                ],
                              ),
                              DataRow(
                                cells: [
                                  DataCell(Text('Debito')),
                                  DataCell(Text('Pichincha')),
                                  DataCell(Text('01/02/2023')),
                                  DataCell(Text('\$800.00', style: TextStyle(color: Colors.green))),
                                  DataCell(Text('\$1000.00')),
                                ],
                              ),
                              DataRow(
                                cells: [
                                  DataCell(Text('')),
                                  DataCell(Text('')),
                                  DataCell(Text('')),
                                  DataCell(Text('\$800.00', style: TextStyle(color: Colors.green))),
                                  DataCell(Text('\$1000.00')),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}