import 'package:another_flushbar/flushbar.dart';
import 'package:e_commerce2/modules/Authuntcation/Controller/cubit.dart';
import 'package:e_commerce2/modules/Authuntcation/Controller/states.dart';
import 'package:e_commerce2/modules/Authuntcation/presentation/components/textfieldwidget.dart';
import 'package:e_commerce2/modules/Authuntcation/presentation/screens/forgetPassword.dart';
import 'package:e_commerce2/modules/Authuntcation/presentation/screens/register.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/layout.dart';
import 'package:e_commerce2/modules/Home/presentation/Screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color flashBarColor(BuildContext context) {
    if (AuthCubit
        .i(context)
        .userData
        ?.status == null) {
      return const Color(0xFF303030);
    }

    if (AuthCubit
        .i(context)
        .userData!
        .status!) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  var loginController = TextEditingController();

  var passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _onSubmit(context,) {
    bool isFormValidator = _formKey.currentState!.validate();
    if (isFormValidator) {
      AuthCubit.i(context).login(email: email!, password: password!);
    }
  }

  void SignUp(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (__) =>
              BlocProvider.value(
                  value: BlocProvider.of<AuthCubit>(context),
                  child: RegisterScreen()),
        ));
  }

  String? email;

  String? password;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthStates>(
          listener: (context, state) {
            if (state is LoginLoadingState) {
              showDialog(
                context: context,
                builder: (context) =>
                const AlertDialog(
                  actions: [
                    Center(
                      child: CircularProgressIndicator(),
                    )
                  ],
                ),
              );
            }
            if (state is LoginLoadedState || state is LoginfailedState) {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LayoutScreen(),
                  ),
                      (route) => false);
            }
          },
          builder: (context, state) =>
              Scaffold(
                backgroundColor: const Color(0xFFF6F4F0),
                resizeToAvoidBottomInset: false,
                body: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: _formKey,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SizedBox(height: 40,),
                            Center(child: Image.asset("assets/login.png")),
                            const SizedBox(
                              height: 12,
                            ),
                            Container(
                              width: 375,
                              height: 546,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),

                                  borderRadius: BorderRadius.circular(40)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    const Center(
                                      child: Text(
                                        "Welcome Back",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Center(
                                      child: Text(
                                        "please Fill your data below to login",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Email",
                                      style:
                                      TextStyle(color: Color(0xFF023047),
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 8),
                                    AuthTextField(
                                      onChanged: (value) {
                                        email = value;
                                      },
                                      hintText: "Enter your E-mail",
                                      prefixIcon: const Icon(Icons.email),
                                      controller: loginController,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "email is required";
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Password",
                                      style:
                                      TextStyle(color: Color(0xFF023047),
                                          fontSize: 15),
                                    ),
                                    const SizedBox(height: 8),
                                    AuthTextField(
                                      onChanged: (value) {
                                        password = value;
                                      },
                                      controller: passwordController,
                                      prefixIcon: const Icon(Icons.lock_open),

                                      hintText: "Enter your Password",
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "password is required";
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: [
                                        Checkbox(
                                            value: false,
                                            activeColor: Colors.green,
                                            onChanged: (value) {}),
                                        const Text("Remember me"),
                                        const Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextButton(
                                              onPressed: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ForgetPassword(),));
                                              },
                                              child: const Text(
                                                  "Forget password?")),
                                        ),
                                      ],
                                    ),
                                    Center(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: const Color(0xFF219EBC),
                                            onPrimary: Colors.white,
                                            shadowColor: Colors.greenAccent,
                                            elevation: 3,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius
                                                    .circular(10)),
                                            minimumSize: const Size(
                                                343, 48), //////// HERE
                                          ),
                                          onPressed: () => _onSubmit(context),
                                          child: const Text("Login"),
                                        )),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        const Text("Don't have an account? "),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      RegisterScreen(),
                                                ));
                                          },
                                          child: const Text("Sign up"),
                                        ),
                                      ],
                                    ),

                                    Center(
                                      child: Container(
                                        width: 150,
                                        height: 5,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.circular(
                                                10)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                  ),
                ),
              )),
    );
  }
}
