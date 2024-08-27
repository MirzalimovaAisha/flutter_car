import 'package:car/car_registration_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/logo.png', width: 70,),
                      const SizedBox(width: 20,),
                      const Text('Drive Mate', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Image.asset('assets/genesis-kr-gv80-facelift-color-glossy-mauna-red-large.png'),
                  const SizedBox(height: 30,),
                  const Text('로그인 정보를 입력하세요.', style: TextStyle(color: Colors.white, fontSize: 16),),
                  const SizedBox(height: 20,),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                        prefixIcon: Icon(Icons.person, color: Colors.grey,size: 30,),
                        contentPadding: EdgeInsets.symmetric(vertical: 18)
                      ),
                    ),
                  ),
                    const SizedBox(height: 15,),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: const TextField(
                          obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                          prefixIcon: Icon(Icons.lock, color: Colors.grey,size: 30,),
                          contentPadding: EdgeInsets.symmetric(vertical: 18)
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                      // Checkbox(value: , onChanged: )
                  const Row(
                    children: [
                  //   Switch(
                  //   value: light,
                  //   activeColor: Colors.red,
                  //   onChanged: (bool value) {
                  //     setState(() {
                  //       light = value;
                  //     });
                  //   },
                  // ),
                       Text('Remember', style: TextStyle(color: Colors.white, fontSize: 16),),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const CarRegistrationPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900]
                        ),
                        child: const Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 17),)
                    ),
                  )
                ],
              )
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[900],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey
                          ),
                          child: const Text('Sign Up', style: TextStyle(color: Colors.white),)
                      ),
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white
                          ),
                          child: const Text('Password Reset', style: TextStyle(color: Colors.black),),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
