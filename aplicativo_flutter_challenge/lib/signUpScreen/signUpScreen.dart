import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text("SIGN UP"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.pink.shade300],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 120, horizontal: 30),
        child: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(height: 150),
            GestureDetector(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(":3"),
                  backgroundColor: Colors.purpleAccent,
                ),
              ),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                        colors: [Colors.purple, Colors.pink.shade300]),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38, blurRadius: 5, spreadRadius: 0)
                    ]),
                child: Center(
                    child: Text(
                  "CREATE ACCOUNT",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      decoration: TextDecoration.none),
                )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Or use your social media account",
              style: TextStyle(fontSize: 12, color: Colors.pink.shade300),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: Colors.pink.shade300, width: 1)),
                      child: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.pink.shade300,
                      )),
                ),
                GestureDetector(
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: Colors.pink.shade300, width: 1)),
                      child: Icon(FontAwesomeIcons.facebook,
                          color: Colors.pink.shade300)),
                ),
                GestureDetector(
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: Colors.pink.shade300, width: 1)),
                      child: Icon(FontAwesomeIcons.google,
                          color: Colors.pink.shade300)),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
