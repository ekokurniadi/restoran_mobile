import 'package:flutter/material.dart';
import 'package:restoran_mobile/core/helpers/theme_helper.dart';
import 'package:restoran_mobile/features/cashier/presentations/pages/cashier_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Bar Aplikasi
      appBar: AppBar(
        backgroundColor: ThemeHelper.primaryColor,
        title: Text(
          'Restoran',
          style: ThemeHelper.mediumTextStyle.copyWith(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          PopupMenuButton<String>(itemBuilder: (context) {
            final List<String> menu = ['Logout', 'Akun'];
            return List.generate(
              menu.length,
              (index) => PopupMenuItem(
                child: Text(menu[index]),
              ),
            );
          })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: ThemeHelper.primaryColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/logo_restoran.png',
                    width: 80,
                    height: 80,
                    alignment: AlignmentDirectional.centerStart,
                  ),
                  Text(
                    'Restoran',
                    style: ThemeHelper.mediumTextStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            const ListTile(
              leading: Icon(Icons.grading_sharp),
              title: Text('Laporan'),
            ),
           const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
            ),
          ],
        ),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
           PageView(
            children: [
              const CashierPage(),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text('Laporan'),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text('Pengaturan'),
                ),
              ),
            ],
           )
          ],
        ),
      ),
    );
  }
}
