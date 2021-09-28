import 'package:flutter/material.dart';
import 'package:login_page/color.dart';
import 'package:login_page/signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: size.width * 0.3,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.2,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // SizedBox(height: size.height * 0.1),
                  Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
                  ),
                  SizedBox(height: size.height * 0.05),
                  // SvgPicture.asset(
                  //   "assets/icons/chat.svg",
                  //   height: size.height * 0.45,
                  // ),
                  SizedBox(height: size.height * 0.05),

                  // Text("Email", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    width: size.width * 0.8,
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person, color: kPrimaryColor),
                        hintText: "Your Email",
                      ),
                      onChanged: (value){},
                    ),
                  ),
                  // SizedBox(height: size.height * 0.05),
                  // Text("PassWord", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    width: size.width * 0.8,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock, color: kPrimaryColor),
                        hintText: "******",
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: kPrimaryColor,
                        ),
                      border: InputBorder.none,
                      ),
                      onChanged: (value){},
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment(0.70, 0.00),
                      child: TextButton(
                        child: Text("Forget Password ? ", style: TextStyle(color: Colors.black),),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    width: size.width * 0.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: MaterialButton(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),                       
                        color: kPrimaryColor,
                        onPressed: (){},
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white, fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  
                  Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Acount ?  ", style: TextStyle(fontWeight: FontWeight.bold),),
                      
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: MaterialButton(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                          color: Colors.white,
                          child: Text(
                            "Signup Now",
                            style: TextStyle(color: Colors.blueAccent, fontSize: 15,
                              ),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                          },
                        ),
                      )
                    ],
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


