import 'package:flutter/material.dart';

class Yourtime extends StatefulWidget {
  final String greetingText;

  const Yourtime({Key? key, required this.greetingText}) : super(key: key);

  @override
  _YourtimeState createState() => _YourtimeState();
}

class _YourtimeState extends State<Yourtime> {
  late String _greeting;

  @override
  void initState() {
    super.initState();
    _updateGreeting();
  }

  void _updateGreeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      setState(() {
        _greeting = 'Good Morning';
      });
    } else {
      setState(() {
        _greeting = 'Good Evening';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.greetingText),
      ),
      body: Center(
        child: Text(_greeting,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: Colors.white54),)
      ),
    );
  }
}
