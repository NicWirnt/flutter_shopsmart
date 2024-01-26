import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Map<String, dynamic>> profileMenuList = const [
    {"icon": Icon(Icons.badge_outlined), "label": Text("List History")},
    {"icon": Icon(Icons.card_membership), "label": Text("My Details")},
    {"icon": Icon(Icons.pin_drop_outlined), "label": Text("My Location")},
    {"icon": Icon(Icons.notifications), "label": Text("Notifications")},
    {"icon": Icon(Icons.help), "label": Text("Help")},
    {"icon": Icon(Icons.info_outline), "label": Text("About")},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ListTile(
            leading: ClipOval(
              child: Image(
                image: AssetImage("assets/images/jessicawalker.png"),
              ),
            ),
            title: Text("Jessica Walker"),
            subtitle: Text("jessicawalker@gmail.com"),
          ),
          const Divider(
            thickness: 2,
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: profileMenuList.length,
              itemBuilder: (context, index) {
                var currentItem = profileMenuList[index];
                return Column(
                  children: [
                    ListTile(
                      // minVerticalPadding: 0,
                      // horizontalTitleGap: 0,
                      dense: true,
                      leading: currentItem['icon'],
                      title: currentItem['label'],
                      trailing: const Icon(Icons.arrow_right_outlined),
                    ),
                    const Divider()
                  ],
                );
              }),
          ElevatedButton(onPressed: () {}, child: const Text("Logout"))
        ],
      ),
    );
  }
}
