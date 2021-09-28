import 'package:flutter/material.dart';
import 'package:login_page/color.dart';
import 'package:login_page/login.dart';

class SignUp extends StatelessWidget {
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
                "assets/images/signup_top.png",
                width: size.width * 0.3,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: size.width * 0.3,
              ),
            ),
            SizedBox(height: size.height * 0.7),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // SizedBox(height: size.height * 0.1),
                  Text(
                    "Sign Up",
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
                    margin: EdgeInsets.symmetric(vertical: 10),
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
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    width: size.width * 0.4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: MaterialButton(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),                       
                        color: kPrimaryColor,
                        onPressed: (){},
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(color: Colors.white, fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Acount ?", style: TextStyle(fontWeight: FontWeight.bold),),
                      
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: MaterialButton(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                          color: Colors.white,
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.blueAccent, fontSize: 15,
                              ),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
                    width: size.width * 0.8,
                    child: Row(
                      children: [
                        Expanded(child: Divider(color: Color(0xFFD9D9D9), height: 1.5,)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Or Sign Up Using", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600,)),
                        ),
                        
                        Expanded(child: Divider(color: Color(0xFFD9D9D9), height: 1.5,)),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: kPrimaryLightColor
                          ), 
                          shape: BoxShape.circle
                        ),
                        child: Image.asset("assets/images/facebook.png", width: 20,height: 20, color: kPrimaryColor, ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: kPrimaryLightColor
                          ), 
                          shape: BoxShape.circle
                        ),
                        child: Image.asset("assets/images/twitter.png", width: 20,height: 20, color: kPrimaryColor, ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: kPrimaryLightColor,
                          ), 
                          shape: BoxShape.circle
                        ),
                        child: Image.asset("assets/images/google-plus.png", width: 20,height: 20, color: kPrimaryColor, ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}