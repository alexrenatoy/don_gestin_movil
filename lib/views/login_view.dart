import 'package:don_gestin_movil/views/main_view.dart';
import 'package:don_gestin_movil/views/register.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  static String id = 'login_view';
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '!Bienvenido!,ingresa para continuar..',
                textAlign: TextAlign.center,                
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person)
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock_outline)
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(
                          255, 176, 51, 51)), 
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.white),
                ),
                onPressed: (){         
                  setState(() {                    
                  Navigator.pushNamed(context, MainView.id);              
                  });         
                }, 
                child: const Text('Iniciar Sesión')),
              const SizedBox(
                height: 20,
              ),
              TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RegisterView.id);
              },
              child: const Text('Aún no tienes una cuenta?, Registrate!!'),
            ),
            ],
          ) ,)),
      
        
    );
  }
}
