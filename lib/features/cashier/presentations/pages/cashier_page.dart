import 'package:flutter/material.dart';
import 'package:restoran_mobile/core/helpers/theme_helper.dart';
import 'package:restoran_mobile/features/products/presentations/pages/products_page.dart';

class CashierPage extends StatelessWidget {
  const CashierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ProductPage(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.white, width: 0.5))),
        height: 100,
        child: Column(
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.widgets_outlined,
                        color: Colors.grey,
                      ),
                      Text(
                        'Jenis Order',
                        style:
                            ThemeHelper.mediumTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.save,
                        color: Colors.grey,
                      ),
                      Text(
                        'Simpan Order',
                        style:
                            ThemeHelper.mediumTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.shopping_basket_rounded,
                        color: Colors.grey,
                      ),
                      Text(
                        'Daftar Order',
                        style:
                            ThemeHelper.mediumTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.delete,
                        color: Colors.grey,
                      ),
                      Text(
                        'Reset',
                        style:
                            ThemeHelper.mediumTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                height: 50,
                color: ThemeHelper.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: ThemeHelper.boldTextStyle.copyWith(
                        color: Colors.yellow
                      ),
                    ),
                    Text(
                      'Rp.1200',
                       style: ThemeHelper.boldTextStyle.copyWith(
                        color: Colors.yellow
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () {
                        print('test');
                      },
                      child: Text(
                        'Bayar',
                        style: ThemeHelper.mediumTextStyle.copyWith(
                          color: ThemeHelper.primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
