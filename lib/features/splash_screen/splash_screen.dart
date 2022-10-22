import 'package:flutter/material.dart';
import 'package:restoran_mobile/core/helpers/theme_helper.dart';
import 'package:restoran_mobile/features/auth/presentations/pages/login.dart';
import 'package:restoran_mobile/features/home/presentations/pages/home_screen.dart';
import 'package:restoran_mobile/initializer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkSessionUser();
  }

  Future<void> checkSessionUser() async {
    final idUser = Initializer.sharedPreferences.getInt('id');
   
    if (idUser == null) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      });
    } else {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_restoran.png',
              width: 80,
              height: 80,
            ),
            Text('Restoran',
                style: ThemeHelper.mediumTextStyle.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                )),
          ],
        ),
      ),
    );
  }
}
