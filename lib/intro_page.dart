import 'package:car/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            // Image.asset('assets/logo.png'),
            SvgPicture.asset('assets/icons/hub_24dp_5F6368_FILL0_wght400_GRAD0_opsz24.svg', width: 100, height: 100, color: Colors.brown[400],),
            const SizedBox(height: 15,),
            const Text('Drive Mate', style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            const Text('연결하고, 운전하고, 즐기세요', style: TextStyle(color: Colors.white, fontSize: 18),),
            const SizedBox(height: 50,),
            Image.asset('assets/car.png', width: 300,),
            const SizedBox(height: 10,),
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

