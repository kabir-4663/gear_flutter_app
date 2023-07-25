import 'package:flutter/material.dart';

class RegisterPAge extends StatelessWidget {
  const RegisterPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 21, 21, 21),
      appBar: AppBar(
        title: const Text('welcome to register page'),
        backgroundColor: Colors.black26,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Register',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Image.asset('images/register.png'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow.shade400,
                onPrimary: Colors.black,
                minimumSize: const Size(300, 40),
              ),
              child: const Text('register as a driver'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow.shade400,
                onPrimary: Colors.black,
                minimumSize: const Size(300, 40),
              ),
              child: const Text('register as customer'),
            ),
          ],
        ),
      ),
    );
  }
}
