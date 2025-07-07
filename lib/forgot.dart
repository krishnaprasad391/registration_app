import 'package:flutter/material.dart';
import 'package:welcome/services.dart';


class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> { TextEditingController emailcontroller=TextEditingController();

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey,

    body: Center(
      child: Container(
        height: 650,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              SizedBox(height: 170),
              Text(
                "forgot password?",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              SizedBox(height: 30,),
              Align(
                child: Text("Enter email"),alignment: Alignment.topLeft,),TextFormField(controller: emailcontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.black),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),

              SizedBox(height: 20, width: 20),
              SizedBox(height: 50,width: 200,
                child: ElevatedButton(
                  onPressed: () {send(email: emailcontroller.text, context: context);},
                  child: Text(
                    "Send link",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,side: BorderSide(color: Colors.black,width: 1)),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}
