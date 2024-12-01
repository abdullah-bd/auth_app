import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  AuthView({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Login Form",
              style: TextStyle(fontSize: 24),
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.phone,
              
              decoration: InputDecoration(
                  prefix: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                  contentPadding: EdgeInsets.all(8),
                  hintText: "Email"),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true, //false
              decoration: InputDecoration(
                  prefix: Icon(Icons.key, color: Colors.black),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Passlword"),
            ),
            ElevatedButton(
                onPressed: () {
                  print(emailController.text +
                      " ---> " +
                      passwordController.text);
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
