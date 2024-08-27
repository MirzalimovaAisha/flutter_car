import 'package:car/car_registration_page.dart';
import 'package:car/registration_finish_page.dart';
import 'package:flutter/material.dart';

class ChosenCarPage extends StatelessWidget {
  const ChosenCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
          child: Column(
              children: [

                const SizedBox(height: 70,),
                Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo.png', width: 70,),
                        const SizedBox(width: 20,),
                        const Text('Drive Mate', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                      ],
                    ),
                ),
                Container(
                  color: Colors.white.withOpacity(0.9),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 40),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('차량등록하기', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                            IconButton(
                                onPressed: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const CarRegistrationPage()));
                                },
                                icon: const Icon(Icons.cancel_outlined, size: 30,)
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: '차량 이름',
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.directions_car_filled_outlined),
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.symmetric(vertical: 12)
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                hintText: '차량 번호',
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.directions_car_filled_outlined),
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.symmetric(vertical: 12)
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.image_outlined, size: 40, color: Colors.grey[600],)
                              ],
                            ),
                        ),
                        const SizedBox(height: 10,),
                         Text('이미지를 선택 해 주세요', style: TextStyle(color: Colors.grey[700]),),
                         Text('갤러리 앱 또는 카메라 이용하실 수 있습니다.', style: TextStyle(color: Colors.grey[700])),
                        const SizedBox(height: 30,),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: (){
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context)=> const RegistrationFinishPage())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red[900],
                                foregroundColor: Colors.white
                              ),
                              child: const Text('차량 등록 후 이용하기')
                          ),
                        )
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
