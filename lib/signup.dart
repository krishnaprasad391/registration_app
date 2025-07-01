import 'package:flutter/material.dart';
import 'package:welcome/login.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("sign up", style: TextStyle(fontSize: 50)),
            SizedBox(height: 10),
            Text("create an account ,its free", style: TextStyle(fontSize: 15)),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  labelText: "username",
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  labelText: "email",
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  labelText: "password",
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  labelText: "confirm password",
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 50,
              width: 300,
              child: TextButton(onPressed: () {}, child: Text("sign up")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("already have an account?"),TextButton(onPressed: ()  {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                }, child: Text("login"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
