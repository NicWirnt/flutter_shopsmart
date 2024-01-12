import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              "Sign Up to Join",
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
                InkWell(
                    onTap: () {
                      print("Tex");
                    },
                    child: const Text("Already have an accout? Login")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
