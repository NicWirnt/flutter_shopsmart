import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:loginapp/screens/forgot_password.dart';
import 'package:loginapp/screens/front_screen.dart';
import 'package:loginapp/screens/home_screen.dart';
import 'package:loginapp/screens/signUp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Back",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Please sign in to continue",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  label: Text("Username"),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const TextField(
                decoration: InputDecoration(
                  label: Text("Password"),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.only(left: 3, right: 2)),
                  ),
                  onPressed: () {
                    Get.to(const ForgotPassword());
                  },
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
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
                  onPressed: () {
                    Get.to(const HomeScreen());
                  },
                  child: const Text(
                    "Login",
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
                        Get.to(const SignUp());
                      },
                      child: const Text("Don't have an account?Sign up now!")),
                ],
              ),
            ],
          ),
        ));
  }
}
