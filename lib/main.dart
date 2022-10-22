import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restoran_mobile/features/auth/presentations/bloc/login_bloc.dart';
import 'package:restoran_mobile/features/cashier/presentations/bloc/cashier_bloc.dart';
import 'package:restoran_mobile/features/home/presentations/bloc/home_bloc.dart';
import 'package:restoran_mobile/features/products/presentations/bloc/product_bloc.dart';
import 'package:restoran_mobile/features/splash_screen/splash_screen.dart';
import 'package:restoran_mobile/initializer.dart';
import 'dependency_injection.dart' as di;
import 'dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Initializer().init();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LoginBloc(),
        ),
        BlocProvider(
          create: (_) => sl<ProductBloc>(),
        ),
        BlocProvider(
          create: (_) => CashierBloc(),
        ),
        BlocProvider(
          create: (_) => HomeBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Restoran',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
