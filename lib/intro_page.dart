import 'package:car/login_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            const SizedBox(height: 15,),
            const Text('Drive Mate', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            const Text('연결하고, 운전하고, 즐기세요', style: TextStyle(color: Colors.white, fontSize: 20),),
            const SizedBox(height: 100,),
            Image.asset('assets/a8.png', width: 300,),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
            },
                child: const Text('다음 페이지')
            ),
          ],
        ),
      ),
    );
  }
}

