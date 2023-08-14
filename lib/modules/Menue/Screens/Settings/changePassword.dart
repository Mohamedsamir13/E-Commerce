import 'package:e_commerce2/modules/Menue/Compnents/Textfields.dart';
import 'package:e_commerce2/modules/Menue/Screens/mainscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mainsettings.dart';

class ChnagePassword extends StatefulWidget {
  const ChnagePassword({Key? key}) : super(key: key);

  @override
  State<ChnagePassword> createState() => _ChnagePasswordState();
}

class _ChnagePasswordState extends State<ChnagePassword> {

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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Settings(),
                              ));
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'Chang Your password',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Current password",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileTextfield(
                errorText: "Please Enter a Valid ",
                labelText: 'Current Password',
                prefixIcon: Icon(Icons.lock),
                sufixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: '',
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "New Password",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
              ProfileTextfield(
                errorText: "Please Enter a Valid ",
                labelText: 'Current Password',
                prefixIcon: const Icon(Icons.lock),
                sufixIcon: const Icon(Icons.remove_red_eye_outlined),
                hintText: '',
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Confirm   New Password",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
              ProfileTextfield(
                errorText: "Please Enter a Valid ",
                labelText: 'Current Password',
                prefixIcon: Icon(Icons.lock),
                sufixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: '',
              ),
              Spacer(),
              Center(
                  child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF219EBC),
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: const Size(400, 48), //////// HERE
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenuScreen(),
                      ));
                },
                child: const Text("Save Changes"),
              )),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: 150,
                  height: 4,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ],
          ),
        ));
  }
}
