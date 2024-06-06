import 'package:don_gestin_movil/views/cards_view.dart';
import 'package:don_gestin_movil/views/home_view.dart';
import 'package:don_gestin_movil/views/saving_plans_view.dart';
import 'package:flutter/material.dart';
import 'control_view.dart';
import 'reminders_view.dart';

class MainView extends StatefulWidget {
  static String id = 'main_view';
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 2;
  final List<Widget> _children = [SavingsPlansView(), ControlView(), HomeView(),  CardsView(),RemindersView(), ];
  @override
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: _children[_currentIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Alex Yugcha'),
              accountEmail: Text('art.yugcha@yavirac.edu.ec'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),          
            ListTile(
              leading: Icon(Icons.savings_outlined),
              title: Text('Savings'),
              onTap: () {
                  onTabTapped(0);
              },
            ),
            Divider(height: 10,),
            ListTile(
              leading: Icon(Icons.navigation_outlined),
              title: Text('Controls'),
              onTap: () {
                onTabTapped(1);
              },
            ),
            Divider(height: 10,),
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Home'),
              onTap: () {
                onTabTapped(2);
              },
            ),
            Divider(height: 10,),
            ListTile(
              leading: Icon(Icons.credit_card_sharp),
              title: Text('Cards'),
              onTap: () {
                onTabTapped(3);
              },
            ),
            Divider(height: 10,),
            ListTile(
              leading: Icon(Icons.calendar_month_outlined),
              title: Text('Reminder'),
              onTap: () {
                onTabTapped(4);
              },
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    Navigator.pop(context); // Cierra el drawer
    setState(() {
      _currentIndex = index;
    });
  }
}
