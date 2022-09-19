import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:restoran_mobile/core/helpers/theme_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obsecureText = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      progressIndicator: SpinKitCircle(color: ThemeHelper.primaryColor),
      child: Scaffold(
        backgroundColor: ThemeHelper.secondaryColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(32),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// Gambar
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.15),
                    child: Image.asset(
                      'assets/images/logo_restoran.png',
                      width: 80,
                      height: 80,
                    ),
                  ),

                  /// Text Welcome
                  Text(
                    'Welcome Back',
                    style: ThemeHelper.mediumTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  /// Username Input
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 20),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      validator: (value) =>
                          value!.isEmpty ? 'Username cannot be blank' : null,
                      controller: usernameController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Username',
                        contentPadding: EdgeInsets.symmetric(horizontal: 4),
                      ),
                    ),
                  ),

                  /// Password Input
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.done,
                      validator: (value) =>
                          value!.isEmpty ? 'Password cannot be blank' : null,
                      controller: passwordController,
                      obscureText: obsecureText,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(),
                        hintText: 'Password',
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 4),
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              obsecureText = !obsecureText;
                            });
                          },
                          icon: Icon(
                            obsecureText
                                ? Icons.remove_red_eye
                                : Icons.visibility_off,
                            color: Colors.blueGrey[300],
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// Tombol Simpan
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () async {
                        await doLogin();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ThemeHelper.primaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: ThemeHelper.mediumTextStyle.copyWith(
                          color: ThemeHelper.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> doLogin() async {
    final formIsValid = _formKey.currentState?.validate();
    if (formIsValid!) {
      setState(() {
        isLoading = true;
      });
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          isLoading = false;
        });
      });
    }
  }
}
