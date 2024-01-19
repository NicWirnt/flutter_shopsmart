import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/screens/home_screen.dart';
import 'package:loginapp/screens/login.dart';
import 'package:loginapp/screens/signUp.dart';
import 'package:loginapp/screens/verify.dart';
import 'package:loginapp/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ShopsMart',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown.shade300),
        useMaterial3: true,
      ),
      home: const Splash(),
      // const MyHomePage(title: 'ShopsMart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: const Icon(Icons.home),
        actions: const [
          Icon(Icons.settings_remote),
        ],
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(
            child: const Text("Sign Up"),
            onPressed: () {
              Get.to(const SignUp());
            },
          ),
          ElevatedButton(
            child: const Text("Home"),
            onPressed: () {
              Get.to(const HomeScreen());
            },
          ),
          ElevatedButton(
            child: const Text("Login"),
            onPressed: () {
              Get.to(const Login());
            },
          ),
          ElevatedButton(
            child: const Text("Verify"),
            onPressed: () {
              Get.to(const Verify());
            },
          ),
        ]),
      ),
    );
  }
}
