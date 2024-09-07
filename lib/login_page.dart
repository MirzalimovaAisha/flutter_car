import 'package:car/car_registration_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
        Center(
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
                      SvgPicture.asset('assets/icons/hub_24dp_5F6368_FILL0_wght400_GRAD0_opsz24.svg', width: 45, height: 45, color: Colors.brown[400],),
                      const SizedBox(width: 15,),
                      const Text('Drive Mate', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Image.asset('assets/red_car.png'),
                  const SizedBox(height: 10,),
                  const Text('로그인 정보를 입력하세요.', style: TextStyle(color: Colors.white, fontSize: 16),),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        prefixIcon: Icon(Icons.person, color: Colors.grey,size: 25,),
                      ),
                    ),
                  ),

                    const SizedBox(height: 15,),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: const TextField(
                          obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                          prefixIcon: Icon(Icons.lock, color: Colors.grey,size: 25,),
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
                          backgroundColor: Colors.red[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7), // 테두리를 10px로 둥글게 설정
                          ),
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
                padding: const EdgeInsets.fromLTRB(50, 40, 50, 40),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 37,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)
                            )
                          ),
                          child: const Text('Sign Up', style: TextStyle(color: Colors.white),)
                      ),
                    ),
                    const SizedBox(height: 15,),
                    SizedBox(
                      width: double.infinity,
                      height: 37,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2)
                              )
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
        ],
      )
    );
  }
}
