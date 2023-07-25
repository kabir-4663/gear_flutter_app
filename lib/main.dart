import 'package:flutter/material.dart';
import 'package:my_gear_app/login_page.dart';
import 'package:my_gear_app/register_page.dart';

void main() {
  runApp(const WelcomePage());
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Welcomepage(),
    );
  }
}

class Welcomepage extends StatelessWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 217, 6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'welcome',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'To Gear App',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Image.asset('images/welcome_page.png'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: const Size(300, 40),
              ),
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const RegisterPAge();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                minimumSize: const Size(300, 40),
              ),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
