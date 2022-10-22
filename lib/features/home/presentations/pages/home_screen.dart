import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restoran_mobile/core/helpers/theme_helper.dart';
import 'package:restoran_mobile/features/auth/presentations/pages/login.dart';
import 'package:restoran_mobile/features/cashier/presentations/pages/cashier_page.dart';
import 'package:restoran_mobile/features/home/presentations/bloc/home_bloc.dart';
import 'package:restoran_mobile/initializer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int pageIndex = 0;
  @override
  void initState() {
    pageIndex =0;
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

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
          PopupMenuButton<String>(
            itemBuilder: (context) {
              final List<String> menu = ['Logout', 'Akun'];
              return List.generate(
                menu.length,
                (index) => PopupMenuItem(
                  value: menu[index],
                  child: Text(menu[index]),
                ),
              );
            },
            onSelected: (value) async {
              if (value == 'Logout') {
                await Initializer.sharedPreferences.clear().then(
                  (value) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                );
              } else {
                print('buka halaman akun');
              }
            },
          )
        ],
      ),
      drawer: Drawer(
        child: Builder(
          builder: (context) {
            return ListView(
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
                InkWell(
                  onTap: () {
                    context.read<HomeBloc>().add(const ChangePageIndex(0));
                    Navigator.pop(context);
                  },
                  child: ListTile(
                    tileColor: pageIndex == 0
                        ? const Color.fromARGB(255, 143, 248, 243)
                        : Colors.white,
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<HomeBloc>().add(const ChangePageIndex(1));
                    Navigator.pop(context);
                  },
                  child: ListTile(
                    tileColor: pageIndex == 1
                        ? const Color.fromARGB(255, 143, 248, 243)
                        : Colors.white,
                    leading: const Icon(Icons.grading_sharp),
                    title: const Text('Laporan'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<HomeBloc>().add(const ChangePageIndex(2));
                    Navigator.pop(context);
                  },
                  child: ListTile(
                    tileColor: pageIndex == 2
                        ? const Color.fromARGB(255, 143, 248, 243)
                        : Colors.white,
                    leading: const Icon(Icons.settings),
                    title: const Text('Pengaturan'),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          pageIndex = state.pageIndex;
          if (state.status == HomeStatus.initial) {
            context.read<HomeBloc>().add(const ChangePageIndex(0));
          } else {
            if (_pageController.hasClients) {
              _pageController.jumpToPage(state.pageIndex);
            }
          }
          return Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const CashierPage(),
                    Container(
                      color: Colors.blue,
                      child: const Center(
                        child: Text('Laporan'),
                      ),
                    ),
                    Container(
                      color: Colors.green,
                      child: const Center(
                        child: Text('Pengaturan'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
