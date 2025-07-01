import 'package:flutter/material.dart';
import 'package:welcome/login.dart';
import 'package:welcome/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 370,
          height: 650,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("Welcome", style: TextStyle(fontSize: 35)),
              SizedBox(height: 120),
              Image(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb9lEo4fWeJoV9_Z2zWHy65xvCcVngI7M9Og&s",
                ),
              ),

              SizedBox(
                height: 46,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                  },
                  child: const Text("Login",style: TextStyle(color: Colors.black,fontSize: 15),),
                  style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.black,width: 1)),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 46,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sign(),));
                  },
                  child: const Text("Sign up",style: TextStyle(fontSize: 15,color: Colors.white),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
