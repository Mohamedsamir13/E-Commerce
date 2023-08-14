import 'package:e_commerce2/modules/Authuntcation/presentation/screens/forgetPassword.dart';
import 'package:e_commerce2/modules/Authuntcation/presentation/screens/login.dart';
import 'package:flutter/material.dart';

import '../components/textfieldwidget.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

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
                            builder: (context) => const ForgetPassword(),
                          ));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 15,
                    )),
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  'Create New Password',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey),
                ),
              ],
            ),
            const Text(
              'Please Enter your new password ',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Text(
                  "New Password",
                  style:
                  TextStyle(color: Color(0xFF023047), fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 10),
            AuthTextField(
              hintText: "Enter your E-mail",
              prefixIcon: const Icon(Icons.lock),
              validator: (value) {
                if (value!.isEmpty) {
                  return "email is required";
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 10,),
                Text(
                  "Confirm New Password",
                  style:
                  TextStyle(color: Color(0xFF023047), fontSize: 15),
                ),
              ],
            ),

            AuthTextField(
              hintText: "Enter your E-mail",
              prefixIcon: const Icon(Icons.lock_open),
              validator: (value) {
                if (value!.isEmpty) {
                  return "email is required";
                }
                return null;
              },
            ),
            const SizedBox(height: 15,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF219EBC),
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                minimumSize: const Size(343, 45), //////// HERE
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ));
              },
              child: const Text("Create"),
            ),
          ],
        ),
      ),
    );
  }
}
