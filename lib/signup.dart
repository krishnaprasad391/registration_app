import 'package:flutter/material.dart';
import 'package:welcome/login.dart';
import 'package:welcome/services.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  bool visible = false;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmcontroller = TextEditingController();

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
              child: TextFormField(
                controller: namecontroller,
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
              child: TextFormField(
                controller: emailcontroller,
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
              child: TextFormField(
                obscureText: !visible,
                controller: passwordcontroller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    icon: visible
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
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
              child: TextFormField(obscureText: !visible,
                controller: confirmcontroller,
                decoration: InputDecoration(

    suffixIcon: IconButton(
    onPressed: () {
    setState(() {
    visible = !visible;
    });
    },
    icon: visible?Icon(Icons.visibility):Icon(Icons.visibility_off),),
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
              child: TextButton(
                onPressed: () {
                  register(
                    name: namecontroller.text,
                    email: emailcontroller.text,
                    password: passwordcontroller.text,
                    confirm: confirmcontroller.text,
                    context: context,
                  );
                },
                child: Text("sign up"),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("already have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text("login"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
