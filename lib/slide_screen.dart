import 'package:flutter/material.dart';
import 'package:loginapp/screens/login.dart';
import 'package:loginapp/screens/signUp.dart';

class SlideScreen extends StatefulWidget {
  const SlideScreen({super.key});

  @override
  State<SlideScreen> createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  void _navigateButton(BuildContext context, String navigateTo) {
    if (navigateTo == "login") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Login()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SignUp()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/1.jpg"),
            fit: BoxFit.cover,
            opacity: 0.3,
          ),
          color: Color.fromARGB(250, 0, 0, 0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                "ShopsMart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              const Text(
                "Grab Your",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                "Shopping",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text("Compare and Save",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 56,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.amber.shade700),
                        ),
                        onPressed: () {
                          _navigateButton(context, "signup");
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.grey.shade800,
                        ),
                      ),
                      onPressed: () {
                        _navigateButton(context, "login");
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "By Joining You Agree To Our Terms of Service and Privacy Policy",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
