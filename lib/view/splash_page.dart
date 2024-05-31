
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrence_task/view/home_page.dart';
import 'package:shared_prefrence_task/view/on_boarding_page.dart';
import 'feature_login_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{
  late Timer _timer;
  _goNext() {
    _getStoreUser();
  }

  _startDelay() async {
    _timer = Timer(
      const Duration(seconds: 3, milliseconds: 300),
          () {
        _goNext();
      },
    );
  }
  Future<void> _getStoreUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getInt('onBoard') != null) {
      if (prefs.getString('user') != null) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>
            const HomeScreen(),));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const
            LoginPage(),));
      }
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const
          OnBoard(),));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Image.asset("assets/images/logo.png"),
        ]),
      ),
    );
  }
}
