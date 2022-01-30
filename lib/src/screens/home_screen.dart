import 'package:flutter/material.dart';
import 'package:ccaguaviva/src/providers/url_launcher_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    UrlLauncherProvider().launchInWebViewOrVC(
      'https://www.aulavirtual.ccaguaviva.website/',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Home'),
          ],
        ),
      ),
    );
  }
}
