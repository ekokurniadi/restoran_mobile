import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:restoran_mobile/features/auth/presentations/bloc/login_bloc.dart';
import 'package:restoran_mobile/features/cashier/presentations/bloc/cashier_bloc.dart';
import 'package:restoran_mobile/features/splash_screen/splash_screen.dart';
import 'package:restoran_mobile/initializer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Initializer().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restoran',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => CashierBloc(),
          ),
          BlocProvider(
            create: (_) => LoginBloc(),
          ),
        ],
        child: const SplashScreen(),
      ),
    );
  }
}
