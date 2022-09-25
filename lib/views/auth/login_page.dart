


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wha/controllers/auth/login_cont.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(



      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/login_page_background.png"),
          fit: BoxFit.cover,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(



          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,


          children: [


            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,30),//all(10),
              child: Image.asset("image/logo_big.jpg"),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,0,0),//all(8.0),
              child: Center(
                child: Row(
                  children: [
                    Text("Email or phone number",
                      style: TextStyle(
                        fontSize: 20,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),




            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(

                decoration: InputDecoration(

                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white)
                  ),

                  //prefixIcon: Icon(Icons.location_history_rounded),
                  hintText: "Enter your email or phone number",
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.white,

                ),
                //controller: emailController,
              ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(20,0,0,0),//all(8.0),
              child: Center(
                child: Row(
                  children: [
                    Text("Password",
                      style: TextStyle(
                        fontSize: 20,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(

                decoration: InputDecoration(

                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.green.shade900)
                  ),


                  //prefixIcon: Icon(Icons.location_history_rounded),
                  hintText: "Enter your password",
                  filled: true, //<-- SEE HERE
                  fillColor: Colors.white,

                ),


               // controller: passwordController,

              ),
            ),


            GestureDetector(

              onTap:(){

                //Reset_password

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             Reset_password()
                //     )
                // );



              },

              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,0,0,20),//all(8.0),
                child: Center(
                  child: Row(
                    children: [
                      Text("Forgot password ?",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.indigo
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),




            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade900
                ),
                onPressed: (){
                  //logIn(emailController.text.toString(),passwordController.text.toString());
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             Patient_Dash_Board()
                  //     )
                  // );

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Center(
                      child: Container(

                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),

                          //color: Colors.green.shade900

                        ),
                        child: Padding(
                          // padding: const EdgeInsets.all(8.0),

                          padding: const EdgeInsets.fromLTRB(117,0,0,0),
                          child: Center(
                            child: Text("Signin"),

                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(93,0,0,0),//(left, top, right, bottom)//all(8.0),
                      child: Container(
                          child: Icon(Icons.arrow_forward)

                      ),
                    )



                  ],
                ),
              ),
            ),




            Padding(
              padding: const EdgeInsets.fromLTRB(30,0,0,20),
              child: Row(
                children: [

                  Text("Didn't have a account?",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                      //fontWeight: FontWeight.bold,
                    ),
                  ),

                  GestureDetector(

                    onTap:(){

                      //Registration_Page

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             Registration_Page()
                      //     )
                      // );



                    },

                    child: Center(
                      child: Row(
                        children: [
                          Text(" Signup",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.indigo
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
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