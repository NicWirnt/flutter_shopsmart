import 'package:flutter/material.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  final String _curUser = "John Doe";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Welcome back $_curUser",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(1),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: "Search product . . .",
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.notifications_active_outlined),
                        SizedBox(width: 2),
                        Text(
                          "Notifications",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.markunread_mailbox_outlined)],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Browse Products by Categories",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        createCard('assets/images/veggies.png'),
                        createCard('assets/images/veggies.png'),
                        createCard('assets/images/veggies.png'),
                        createCard('assets/images/veggies.png'),
                        createCard('assets/images/veggies.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Half Price Specials",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        createCard('assets/images/veggies.png'),
                        createCard('assets/images/veggies.png'),
                        createCard('assets/images/veggies.png'),
                        createCard('assets/images/veggies.png'),
                        createCard('assets/images/veggies.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget createCard(String path) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Image(image: AssetImage(path)),
    );
  }
}
