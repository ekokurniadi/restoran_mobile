import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:restoran_mobile/core/helpers/theme_helper.dart';
import 'package:restoran_mobile/core/helpers/toast_helper.dart';
import 'package:restoran_mobile/features/auth/presentations/bloc/login_bloc.dart';
import 'package:restoran_mobile/features/home/presentations/pages/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ValueNotifier<bool> obsecureText = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status == LoginStatus.fail) {
            ToastHelper.toastError(state.message);
          } else if (state.status == LoginStatus.success) {
            ToastHelper.toastSuccess(state.message);
            Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const HomeScreen()));
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state.status == LoginStatus.loading,
              progressIndicator: SpinKitCircle(color: ThemeHelper.primaryColor),
              child: Scaffold(
                backgroundColor: ThemeHelper.secondaryColor,
                body: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(32),

                  /// Form Input Username dan Password
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
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              textInputAction: TextInputAction.next,
                              validator: (value) => value!.isEmpty
                                  ? 'Username cannot be blank'
                                  : null,
                              controller: usernameController,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Username',
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                              ),
                            ),
                          ),

                          /// Password Input
                          ValueListenableBuilder(
                              valueListenable: obsecureText,
                              builder: (context, bool show, widget) {
                                return Container(
                                  margin: const EdgeInsets.only(bottom: 20),
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    textInputAction: TextInputAction.done,
                                    validator: (value) => value!.isEmpty
                                        ? 'Password cannot be blank'
                                        : null,
                                    controller: passwordController,
                                    obscureText: show,
                                    decoration: InputDecoration(
                                      border: const UnderlineInputBorder(),
                                      hintText: 'Password',
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 4),
                                      suffix: IconButton(
                                        onPressed: () {
                                          obsecureText.value =
                                              !obsecureText.value;
                                        },
                                        icon: Icon(
                                          show
                                              ? Icons.remove_red_eye
                                              : Icons.visibility_off,
                                          color: Colors.blueGrey[300],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),

                          /// Tombol Simpan
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 44,
                            child: ElevatedButton(
                              onPressed: () async {
                                await doLogin(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ThemeHelper.primaryColor,
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
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
          },
        ),
      ),
    );
  }

  Future<void> doLogin(BuildContext context) async {
    final formIsValid = _formKey.currentState?.validate();
    if (formIsValid!) {
      context.read<LoginBloc>().add(
            LoginEvent(
              userName: usernameController.text,
              password: passwordController.text,
            ),
          );
    }
  }
}
