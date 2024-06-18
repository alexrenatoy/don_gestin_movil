import 'package:don_gestin_movil/widgets/components/custom_popup.dart';
import 'package:flutter/material.dart';

class CardsView extends StatefulWidget {
  static String id = 'cards_view';
  const CardsView({super.key});

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  final List<Map<String, dynamic>> data = [
      {
        "type": "Débito",
        "bank": "Pichincha",
        "date": "12/05/2024",
        "value": "155.00",
        "total": "300.00",
      },
      {
        "type": "Débito",
        "bank": "Pichincha",
        "date": "12/05/2024",
        "value": "155.00",
        "total": "300.00",
      },
      {
        "type": "Débito",
        "bank": "Pichincha",
        "date": "12/05/2024",
        "value": "155.00",
        "total": "300.00",
      },
    ];

    final TextEditingController _typeController = TextEditingController();
    final TextEditingController _bankController = TextEditingController();
    final TextEditingController _dateController = TextEditingController();
    final TextEditingController _valueController = TextEditingController();
    final TextEditingController _totalController = TextEditingController();

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
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tus tarjetas',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Tarjetas disponibles y detalles',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tarjeta de Crédito',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(
                            height: 10,
                            color: Colors.white,
                          ),
                          Text(
                            'Banco: Pichincha',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Saldo Disponible: \$20.00,09',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fecha de Corte: 01-12-2023',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fecha de Vencimiento: 15-12-2023',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tarjeta de Crédito',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(
                            height: 10,
                            color: Colors.white,
                          ),
                          Text(
                            'Banco: Pichincha',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Saldo Disponible: \$20.00,09',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fecha de Corte: 01-12-2023',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fecha de Vencimiento: 15-12-2023',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            // Acción para abrir el modal de ahorro
                            _showSavingsModal();
                          },
                          label: Text('Agregar movimiento'),
                          icon: Icon(Icons.attach_money),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 0,
                            ),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Movimiento de las Tarjetas',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                              columnSpacing: 10,
                              headingRowHeight: 38.0,
                              dataRowMinHeight: 36.0,
                              dataRowMaxHeight: 36.0,
                              columns: const [
                                DataColumn(
                                    label: Text(
                                  'Tipo',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                                DataColumn(
                                    label: Text(
                                  'Tarjeta',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                                DataColumn(
                                    label: Text(
                                  'Cantidad',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                                DataColumn(
                                    label: Text(
                                  'Total',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ],
                              rows: data.map((data) {
                                return DataRow(
                                  cells: [
                                    DataCell(Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        data['type'],
                                      ),
                                    )),
                                    DataCell(Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(data['bank']),
                                    )),
                                    // DataCell(Padding(
                                    //   padding: const EdgeInsets.all(2.0),
                                    //   child: Text(data['date'].toString(),
                                    //   style: TextStyle(fontSize: 10),),
                                    // )),
                                    DataCell(Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(data['value'].toString()),
                                    )),
                                    DataCell(Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(data['total']),
                                    )),
                                  ],
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.edit),r
      // ),
    );
  }

  void _showSavingsModal() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Agregar Movimiento'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _typeController,
                decoration: InputDecoration(labelText: 'Tipo'),
              ),
              TextField(
                controller: _bankController,
                decoration: InputDecoration(labelText: 'Banco'),
              ),
              TextField(
                controller: _dateController,
                decoration: InputDecoration(labelText: 'Fecha'),
              ),
              TextField(
                controller: _valueController,
                decoration: InputDecoration(labelText: 'Valor'),
              ),
              TextField(
                controller: _totalController,
                decoration: InputDecoration(labelText: 'Total'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text('Guardar'),
              onPressed: () {
                setState(() {
                  data.add({
                    "type": _typeController.text,
                    "bank": _bankController.text,
                    "date": _dateController.text,
                    "value": _valueController.text,
                    "total": _totalController.text,
                  });
                });
                _typeController.clear();
                _bankController.clear();
                _dateController.clear();
                _valueController.clear();
                _totalController.clear();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
