import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          decoration: BoxDecoration(
            // border: Border.all(color: Colors.black, width: 4),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: FloatingActionButton(
            onPressed: () {
              // 버튼 동작
            },
            backgroundColor: Colors.grey[900],
            foregroundColor: Colors.white54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(Icons.power_settings_new, size: 29),
          ),
        ),

        appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Text('Q8', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Icon(Icons.chevron_right_outlined)
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.notifications_outlined, size: 30, ),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.settings_outlined, size: 30,),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.wb_sunny_outlined, size: 25,),
                            SizedBox(width: 10,),
                            Text('28.1℃', style: TextStyle(fontSize: 16),)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.local_gas_station_outlined, size: 25,),
                            SizedBox(width: 5,),
                            Text('424km', style: TextStyle(fontSize: 16),)
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Icon(Icons.my_location_outlined, size: 25,),
                        SizedBox(width: 5,),
                        Text('경상북도 경주시', style: TextStyle(fontSize: 16),)
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Image.asset('assets/q7.png'),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(Icons.power_settings_new, size: 40, color: Colors.black,)
                            ),
                            const SizedBox(height: 5,),
                            const Text('시동',)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(Icons.lock_outline, size: 40,color: Colors.black,)
                            ),
                            const SizedBox(height: 5,),
                            const Text('도어')
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SvgPicture.asset('assets/icons/car-door-svgrepo-com.svg', width: 10, height: 20, color: Colors.black,)
                            ),
                            const SizedBox(height: 5,),
                            const Text('창문',)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(Icons.warning_amber, size: 40, color: Colors.black,)
                            ),
                            const SizedBox(height: 5,),
                            const Text('비상등'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    const Row(
                      children: [
                        Text('홍길동님, 안녕하세요?', style: TextStyle(fontSize: 18, ),)
                      ],
                    ),
                    // const SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      // height: 100,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/icons/car-svgrepo-com.svg', width: 23, color: Colors.brown[400],),
                                  const SizedBox(width: 20,),
                                  const Text('Vehicle control', style: TextStyle(color: Colors.white, fontSize: 18),)
                                ],
                              ),
                              const Icon(Icons.chevron_right, color: Colors.white, size: 30,),
                            ],
                          ),
                          Divider(color: Colors.grey[800],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/icons/climate.svg', width: 23, color: Colors.brown[400],),
                                  const SizedBox(width: 20,),
                                  const Text('Climate', style: TextStyle(color: Colors.white, fontSize: 18),)
                                ],
                              ),
                              const Icon(Icons.chevron_right, color: Colors.white, size: 30,),
                            ],
                          ),
                          Divider(color: Colors.grey[800],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.my_location_outlined, color: Colors.brown[400], size: 23,),
                                  const SizedBox(width: 20,),
                                  const Text('Location', style: TextStyle(color: Colors.white, fontSize: 18),)
                                ],
                              ),
                              const Icon(Icons.chevron_right, color: Colors.white, size: 30,),
                            ],
                          ),
                          Divider(color: Colors.grey[800],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.vpn_key_outlined, color: Colors.brown[400], size: 23,),
                                  const SizedBox(width: 20,),
                                  const Text('Valet Mode', style: TextStyle(color: Colors.white, fontSize: 18),)
                                ],
                              ),
                              const Icon(Icons.chevron_right, color: Colors.white, size: 30,),
                            ],
                          ),
                          Divider(color: Colors.grey[800],),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )

        ],
      )
    );
  }
}


