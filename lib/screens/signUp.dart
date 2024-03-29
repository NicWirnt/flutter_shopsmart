import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/screens/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                "User",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Please Sign Up to Join",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 8,
              ),
              const TextField(
                decoration: InputDecoration(
                  label: Text("Name"),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const TextField(
                decoration: InputDecoration(
                  label: Text("Email"),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.orangeAccent),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.to(const Login());
                      },
                      child: const Text(
                        "Already have an account? Login now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
