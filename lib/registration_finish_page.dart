import 'package:car/bottom_navigation_bar.dart';
import 'package:car/chosen_car_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationFinishPage extends StatelessWidget {
  const RegistrationFinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 100, 20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/hub_24dp_5F6368_FILL0_wght400_GRAD0_opsz24.svg', width: 40, color: Colors.brown[400],),
                        const SizedBox(width: 15,),
                        const Text('Drive Mate', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 100,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.chevron_left, size: 40, color: Colors.white,)
                        ),
                        Image.asset('assets/q7.png', width: 200,),
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.chevron_right_outlined, size: 40, color: Colors.white,)
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Text('AUDI A8', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 30,),
                    const Row(
                      children: [
                        Text('Remember', style: TextStyle(color: Colors.white, fontSize: 15),)
                      ],
                    ),
                    const SizedBox(height: 40,),
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomNavigationBarExample()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          )
                        ),
                        child: const Text('이 차량 선택하기', style: TextStyle(color: Colors.white, fontSize: 16),),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ChosenCarPage()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white.withOpacity(0.1),
                            foregroundColor: Colors.brown[400],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)
                          )
                        ),
                        child: const Text('차량 등록 하기', style: TextStyle(fontSize: 18),),
                      ),
                    ),
                  ],
                ),
              )
          ),
        ],
      )
    );
  }
}
