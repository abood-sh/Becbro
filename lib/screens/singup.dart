import 'package:flutter/material.dart';
import 'package:becbro/screens/customtextfield.dart';
import 'package:becbro/screens/login_screen.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/1.png'), fit: BoxFit.cover),
          gradient: LinearGradient(
              colors: [Color(0xff0B1EFF), Colors.blue],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  SizedBox(width: 20,),
                  Text(
                    'becbro',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text(
                'Sign up',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: 'becbro',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: 'Last name',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: 'E-mail',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: 'Phone number',
                issecured: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(

                hint: 'Password',
                issecured: true,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: 're-Password',
                issecured: true,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25,top: 15),
                child: ButtonTheme(
                    buttonColor: Colors.blueAccent,
                    minWidth: 170,
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Create account',
                        style: TextStyle(color: Colors.white,fontSize: 22),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    )),
              ),
              SizedBox(height: 80,),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                      LoginScreen()), (Route<dynamic> route) => false);
                },
                child: RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an Account? ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
            ),
          ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
