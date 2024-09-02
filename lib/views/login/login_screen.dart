import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailFocusNodes = FocusNode();
  final passwordFocusNodes = FocusNode();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Login Screen",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20),
          child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(),
                    ),
                    focusNode: emailFocusNodes,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (v) {},
                    validator: (valid) {
                      if (valid!.isEmpty) {
                        return "Enter Email";
                      }
                    },
                    onFieldSubmitted: (value) {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    focusNode: passwordFocusNodes,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (v) {},
                    validator: (valid) {
                      if (valid!.isEmpty) {
                        return "Enter Password";
                      }
                    },
                    onFieldSubmitted: (value) {},
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          print("validates and logging in ");
                        }
                      },
                      child: const Padding(
                        padding:  EdgeInsets.only(
                            left: 20, top: 5, right: 20, bottom: 5),
                        child: Text("Submit"),
                      ))
                ],
              ))),
    );
  }
}
