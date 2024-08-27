import 'package:car/chosen_car_page.dart';
import 'package:flutter/material.dart';

class CarRegistrationPage extends StatelessWidget {
  const CarRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            const SizedBox(height: 150,),
            Image.asset('assets/q7.png'),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ChosenCarPage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[900]
                ),
                child: const Text('차량 등록 후 이용하기', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
