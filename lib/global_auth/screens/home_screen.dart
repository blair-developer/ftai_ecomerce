import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/global_auth/providers/user_provider.dart';
import 'package:ftai_ecomerce/global_auth/screens/dashboard.dart';
import 'package:ftai_ecomerce/global_auth/services/auth_services.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
    final String dataToFetch;
  const HomeScreen({Key? key, required this.dataToFetch}) : super(key: key);

  void signOutUser(BuildContext context) {
    AuthService().signOut(context);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 137, 121, 239),
        title: Row(
          children: [
            Text('Welcome ${user.name}', style: TextStyle(color: const Color.fromARGB(255, 14, 14, 14)),),
            Spacer(), // Add spacer to push the popup menu button to the right
            PopupMenuButton(
              icon: Icon(Icons.account_circle, size: 35,),
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
          ],
        ),
      ),
      body: Center(
        child: Text('Fetch and display $dataToFetch data here'),
      ),
     
    );
  }
}
