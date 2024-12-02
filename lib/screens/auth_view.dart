import 'package:auth_app/screens/home_view.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  AuthView({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var selectedGender = 'male';
  var rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth View'),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                        gapPadding: 2),
                  )),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  controller: passwordController,
                  obscureText: true, //false
        
                  style: TextStyle(color: Colors.blue),
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.blue,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_outlined,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                        gapPadding: 2),
                  )),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Radio(
                  value: 'male',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    selectedGender = value.toString();
                    print(selectedGender);
                  },
                ),
                title: Text('Male'),
              ),
              ListTile(
                leading: Radio(
                  value: 'female',
                  groupValue: selectedGender,
                  onChanged: (value) {
                    selectedGender = value.toString();
                    print(selectedGender);
                  },
                ),
                title: Text('Female'),
              ),
              SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: rememberMe,
                onChanged: (value) {
                  rememberMe = value!;
                  print("Remember me value ---> $rememberMe");
                },
                title: Text('Remember Me'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //     backgroundColor: Colors.blue,
                    //     content: Text(
                    //         "Email: ${emailController.text} "
                    //             "Password: ${passwordController.text} "
                    //             "Gender $selectedGender "
                    //             "Remember me: $rememberMe")));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeView()))
                    ;
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
