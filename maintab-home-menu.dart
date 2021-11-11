import 'package:flutter/material.dart';
import 'notification-tab.dart';

class SeccondCreen extends StatelessWidget {
  SeccondCreen({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: () {},
    );
  }

  Widget homepage() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                //backgroundImage: ,
              ),
              const SizedBox(
                width: 8.0,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Bạn đang nghĩ gì vậy nè?'),
                ),
              )
            ],
          ),
        ),
        const Divider(
          height: 10.0,
          thickness: 0.5,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Drawer(
            child: Material(
              color: Color.fromRGBO(50, 75, 205, 1),
              child: ListView(
                padding: padding,
                children: [
                  const SizedBox(
                    height: 48,
                  ),
                  buildMenuItem(text: 'Profile', icon: Icons.perm_identity),
                  buildMenuItem(text: 'Security', icon: Icons.security_sharp),
                  buildMenuItem(
                      text: 'Sign Out', icon: Icons.remove_circle_sharp)
                ],
              ),
            ),
          ),
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.people)),
                Tab(icon: Icon(Icons.notifications)),
              ],
            ),
            title: const Text('Wellcome to FaceBook'),
          ),
          body: TabBarView(
            children: [
              homepage(),
              Icon(Icons.people),
              ListTileWid(),
            ],
          ),
        ));
  }
}
