import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/global_auth/providers/user_provider.dart';
import 'package:ftai_ecomerce/global_auth/screens/about_screen.dart';
import 'package:ftai_ecomerce/global_auth/screens/home_screen.dart';
import 'package:ftai_ecomerce/global_auth/services/auth_services.dart';
import 'package:provider/provider.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  void signOutUser(BuildContext context) {
    AuthService().signOut(context);
  }

void navigateToSecondScreen(BuildContext context, String dataToFetch) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AboutScreen(dataToFetch: dataToFetch)),
    );
}
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Hello ${user.name}!',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white)),
                  subtitle: Text('Welcome!',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white54)),
                  trailing: PopupMenuButton(
                     child: const CircleAvatar(
                             radius: 30,
                             backgroundImage: AssetImage('assets/images/4.png'), 
          ),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.email),
                            title: Text(user.email),
                          ),
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.person),
                            title: Text(user.name),
                          ),
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Icons.logout),
                            title: Text('Sign Out'),
                            onTap: () => signOutUser(context),
                          ),
                        ),
                      ];
                    },
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('Videos', Icons.play_circle, Colors.deepOrange,'videos'),
                  itemDashboard('Analytics', Icons.grading_sharp, Colors.green,'analytics'),
                  itemDashboard('Audience', Icons.person_2, Colors.purple,'audience'),
                  itemDashboard('Comments', Icons.chat, Colors.brown,'comments'),
                  itemDashboard('Revenue', Icons.money_off_outlined, Colors.indigo,'revenue'),
                  itemDashboard('Upload', Icons.add_circle, Colors.teal,'upload'),
                  itemDashboard('About', Icons.question_mark_sharp, Colors.blue, 'AboutScreen'),
                  itemDashboard('Contact', Icons.phone, Colors.pinkAccent,'contact'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background, String dataToFetch) => 
  GestureDetector(
    onTap: () {
        // Navigate to the second screen
        navigateToSecondScreen(context, dataToFetch);
      },
    child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 5),
                    color: Theme.of(context).primaryColor.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 5)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: background,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(iconData, color: Colors.white)),
              const SizedBox(height: 8),
              Text(title.toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium)
            ],
          ),
        ),
  );
}