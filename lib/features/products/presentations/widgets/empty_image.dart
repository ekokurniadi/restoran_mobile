import 'package:flutter/material.dart';
import 'package:restoran_mobile/core/extensions/initial_name_extension.dart';
import 'package:restoran_mobile/core/helpers/theme_helper.dart';

class EmptyImage extends StatelessWidget {
  final String _productName;
  const EmptyImage(this._productName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Text(
        _productName.initialName,
        style: ThemeHelper.mediumTextStyle.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }
}
