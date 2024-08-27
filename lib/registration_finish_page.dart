import 'package:car/bottom_navigation_bar.dart';
import 'package:car/chosen_car_page.dart';
import 'package:flutter/material.dart';

class RegistrationFinishPage extends StatelessWidget {
  const RegistrationFinishPage({super.key});

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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chevron_left, size: 50, color: Colors.white,)
                    ),
                    Image.asset('assets/q7.png', width: 200,),
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.chevron_right_outlined, size: 50, color: Colors.white,)
                    ),
                  ],
                ),
                const Text('AUDI A8', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    Text('Remember', style: TextStyle(color: Colors.white, fontSize: 16),)
                  ],
                ),
                const SizedBox(height: 40,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomNavigationBarExample()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[900]
                    ),
                    child: const Text('이 차량 선택하기', style: TextStyle(color: Colors.white, fontSize: 18),),
                  ),
                ),
                const SizedBox(height: 25,),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ChosenCarPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white.withOpacity(0.1),
                      foregroundColor: Colors.white54
                    ),
                    child: const Text('차량 등록 하기', style: TextStyle(fontSize: 18),),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
