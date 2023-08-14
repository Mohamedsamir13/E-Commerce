import 'package:e_commerce2/modules/Authuntcation/Controller/cubit.dart';
import 'package:e_commerce2/modules/Authuntcation/Controller/states.dart';
import 'package:e_commerce2/modules/Authuntcation/data/Models/user_req.dart';
import 'package:e_commerce2/modules/Authuntcation/presentation/components/textfieldwidget.dart';
import 'package:e_commerce2/modules/Authuntcation/presentation/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({
    Key? key,
  }) : super(key: key);

  var loginController = TextEditingController();

  var passwordController = TextEditingController();
  String? email;
  String? password;
  String? name;
  String? phone;
  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  void RegisterSubmit(context) {
    bool isFormValide = _form.currentState!.validate();
    if (isFormValide) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 15,
                      )),
                  const SizedBox(width: 110,),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Full Name',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              AuthTextField(
                controller: passwordController,
                prefixIcon: const Icon(Icons.person),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name is required';
                  }
                  return null;
                },
                onChanged: (value) {
                  email = value;
                },
                hintText: "Enter your Name",
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Email',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              AuthTextField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'E-mail is required';
                  }
                  return null;
                },
                onChanged: (value) {
                  email = value;
                },
                prefixIcon: const Icon(Icons.email),
                hintText: "Enter your E-mail",
                controller: loginController,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Password',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              AuthTextField(
                controller: passwordController,
                prefixIcon: const Icon(Icons.lock_open),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password is required';
                  }
                  return null;
                },
                onChanged: (value) {
                  email = value;
                },
                hintText: "Create your Password",
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.check_box,
                      color: Colors.blue,
                      size: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    RegisterSubmit(context);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(343, 48),
                  ),
                  child: const Text('Sign Up'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: const Text(
                        'Signin',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      )),
                ],
              ),
              const Spacer(),
              Center(
                child: Container(
                  width: 120,
                  height: 5,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
