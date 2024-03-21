import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ftai_ecomerce/global_auth/providers/user_provider.dart';
import 'package:ftai_ecomerce/global_auth/utils/constants.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class AboutScreen extends StatefulWidget {
  final String dataToFetch;
  const AboutScreen({super.key, required this.dataToFetch});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  List<dynamic>? fetchedData;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse('${Constants.uri}/api/about'));
      if (response.statusCode == 200) {
        setState(() {
           fetchedData = json.decode(response.body) as List<dynamic>;
        });
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (error) {
      print('Error fetching data: $error');
    }
  }
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      appBar: AppBar(
        title: Text("about app"),
      ),
      body: fetchedData != null
          ? ListView.builder(
              itemCount: fetchedData!.length,
              itemBuilder: (context, index) {
                final item = fetchedData![index] as Map<String, dynamic>;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title'] as String,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(item['description'] as String),
                    Divider(),
                  ],
                );
              },
            )
          : Center(child: CircularProgressIndicator()), // Loading indicator
    );
  }
}