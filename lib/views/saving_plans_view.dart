import 'package:flutter/material.dart';

class SavingsPlansView extends StatefulWidget {
  static String id = 'saving_plans_view';
  const SavingsPlansView({super.key});

  @override
  State<SavingsPlansView> createState() => _SavingsPlansViewState();
}

class _SavingsPlansViewState extends State<SavingsPlansView> {
  List<Map<String, dynamic>> data = [
    {
      "plan": "Carro",
      "saved": "\$100",
      "to_save": "\$2400",
      "duration": "3 meses",
      "": "",
    },
    {
      "plan": "Casa",
      "saved": "\$100",
      "to_save": "\$9400",
      "duration": "8 meses",
      "": "",
    },
    {
      "plan": "Perro",
      "saved": "\$100",
      "to_save": "\$400",
      "duration": "2 meses",
      "": "",
    },
  ];

  final TextEditingController _planController = TextEditingController();
  final TextEditingController _savedController = TextEditingController();
  final TextEditingController _toSaveController = TextEditingController();
  final TextEditingController _durationController = TextEditingController();

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
                            'Tus planes de ahorro',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Detalles de tus metas financieras',
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            // Acción para abrir el modal de ahorro
                            _showSavingsModal();
                          },
                          label: Text('Nuevo plan'),
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
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      'Planes de Ahorro',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columnSpacing: 20,
                        headingRowHeight: 60.0,
                        dataRowMinHeight: 60.0,
                        dataRowMaxHeight: 60.0,
                        columns: const [
                          DataColumn(
                            label: Text(
                              'Plan',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Ahorrado',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Por ahorrar',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Duración',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              '',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                        rows: data.map((savingsPlan) {
                          return DataRow(
                            cells: [
                              DataCell(
                                Text(savingsPlan['plan']),
                              ),
                              DataCell(
                                Text(savingsPlan['saved']),
                              ),
                              DataCell(
                                Text(savingsPlan['to_save']),
                              ),
                              DataCell(
                                Text(savingsPlan['duration']),
                              ),
                              DataCell(
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStateProperty.resolveWith<
                                            Color>((Set<WidgetState> states) {
                                      if (states
                                          .contains(WidgetState.pressed)) {
                                        return const Color.fromARGB(
                                            255, 95, 95, 95);
                                      }
                                      return Colors.black;
                                    }),
                                    foregroundColor:
                                        WidgetStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  onPressed: () {
                                    _showSavingsModal();
                                  },
                                  child: Text('Ahorrar'),
                                ),
                              ),
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
    );
  }

  void _showSavingsModal() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Agregar Plan de Ahorro'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _planController,
                decoration: InputDecoration(labelText: 'Plan'),
              ),
              TextField(
                controller: _savedController,
                decoration: InputDecoration(labelText: 'Ahorrado'),
              ),
              TextField(
                controller: _toSaveController,
                decoration: InputDecoration(labelText: 'Por ahorrar'),
              ),
              TextField(
                controller: _durationController,
                decoration: InputDecoration(labelText: 'Duración'),
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
                    "plan": _planController.text,
                    "saved": _savedController.text,
                    "to_save": _toSaveController.text,
                    "duration": _durationController.text,
                    "": "",
                  });
                });
                _planController.clear();
                _savedController.clear();
                _toSaveController.clear();
                _durationController.clear();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
