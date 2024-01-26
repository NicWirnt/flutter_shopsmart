import 'package:flutter/material.dart';
import 'package:loginapp/screens/login.dart';
import 'package:loginapp/screens/signUp.dart';
import 'package:loginapp/slide_screens/slide_screen.dart';
import 'package:loginapp/slide_screens/slide_screen3.dart';

class SlideScreen1 extends StatefulWidget {
  const SlideScreen1({super.key});

  @override
  State<SlideScreen1> createState() => _SlideScreen1State();
}

List<String> imagePath = [
  "assets/images/1.jpg",
  "assets/images/2.jpg",
  "assets/images/3.jpg",
];

int _selectedIndex = 1;
void _navigateButton(BuildContext context, String navigateTo) {
  if (navigateTo == "login") {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Login()));
  } else {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignUp()));
  }
}

void _navigateScreen(BuildContext context, int screen) {
  if (screen == 1) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SlideScreen()));
  } else if (screen == 2) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SlideScreen1()));
  } else if (screen == 3) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SlideScreen3()));
  }
}

class _SlideScreen1State extends State<SlideScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath[_selectedIndex]),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
          color: const Color.fromARGB(250, 0, 0, 0),
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
                height: 300,
              ),
              const Text(
                "Smart Shopping",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                "Just For You",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text("Save on More Than Groceries",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5,
                    width: 20,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white,
                        ),
                      ),
                      onPressed: () {
                        _navigateScreen(context, 1);
                      },
                      child: const Text(""),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  SizedBox(
                    height: 5,
                    width: 20,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.grey.shade500,
                        ),
                      ),
                      onPressed: () {
                        _navigateScreen(context, 2);
                      },
                      child: const Text(""),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  SizedBox(
                    height: 5,
                    width: 20,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.white,
                        ),
                      ),
                      onPressed: () {
                        _navigateScreen(context, 3);
                      },
                      child: const Text(""),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
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
