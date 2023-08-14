import 'package:e_commerce2/modules/Authuntcation/presentation/components/textfieldwidget.dart';
import 'package:e_commerce2/modules/Authuntcation/presentation/screens/createnewpassword.dart';
import 'package:e_commerce2/modules/Authuntcation/presentation/screens/login.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(        backgroundColor: Colors.white,


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
                            builder: (context) => const LoginScreen(),
                          ));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 15,
                    )),
                const SizedBox(
                  width: 80,
                ),
                const Text(
                  'Forget Password',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey),
                ),
              ],
            ),
            const Text(
              'Please Enter your email adress to verify ',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                const Text(
                  "Enter your e-mail",
                  style:
                  TextStyle(color: Color(0xFF023047), fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 8),
            AuthTextField(
              hintText: "Enter your E-mail",
              prefixIcon: const Icon(Icons.email),
              validator: (value) {
                if (value!.isEmpty) {
                  return "email is required";
                }
                return null;
              },
            ),
            SizedBox(height: 20,),
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
                      builder: (context) => const CreateNewPassword(),
                    ));
              },
              child: const Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }
}
