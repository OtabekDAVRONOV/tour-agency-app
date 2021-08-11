// ignore_for_file: avoid_print

import 'package:examination/models/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

FirebaseAuth _authUser = FirebaseAuth.instance;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var send = Firebase.initializeApp();

  String? phoneNumber;
  TextEditingController smsCode = TextEditingController();
  bool forPhone = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOG IN"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: "Phone Number",
                  ),
                  initialValue: "+998",
                  maxLength: 13,
                  validator: (text) {
                    if (text!.isEmpty) {
                      return "You are requested enter your phone number";
                    }
                  },
                  onSaved: (p) {
                    phoneNumber = p;
                  },
                ),
                ElevatedButton(
                  child: const Text("Send"),
                  onPressed: () {
                    _phoneVerify();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                ),
                ElevatedButton(
                  child: const Text("Skip"),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _phoneVerify() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _authUser.verifyPhoneNumber(
        phoneNumber: phoneNumber!,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException credential) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              duration: Duration(seconds: 3),
              content: Text("Smsni tekshirib qaytadan urinib ko'ring!"),
            ),
          );
        },
        codeSent: (String verificationId, int? forceResendingToken) async {
          //show dialog to take input from the user
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              title: const Text("Enter SMS Code"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    controller: smsCode,
                  ),
                ],
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text("Done"),
                  onPressed: () async {
                    FirebaseAuth auth = FirebaseAuth.instance;
                    var _credential = PhoneAuthProvider.credential(
                        verificationId: verificationId, smsCode: smsCode.text);
                    auth.signInWithCredential(_credential);
                     await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                ),
              ],
            ),
          );
        },
        codeAutoRetrievalTimeout: (String text) {
          print("TEXT: $text");
        },
      );
    }
  }
}
