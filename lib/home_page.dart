import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: Colors.black,
        foregroundColor: Colors.white54,
        child: const Icon(Icons.power_settings_new, size: 35,),
      ),
      appBar: AppBar(
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
      body: Center(
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
              const SizedBox(height: 20,),
              Image.asset('assets/q7.png'),
              const SizedBox(height: 10,),
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
                        child: IconButton(
                            onPressed: (){},
                            icon:const  Icon(Icons.power_settings_new, size: 40, color: Colors.black,)
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Text('시동', style: TextStyle(fontSize: 17),)
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
                        child: IconButton(
                            onPressed: (){},
                            icon:const  Icon(Icons.lock_outline, size: 40,color: Colors.black,)
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Text('도어', style: TextStyle(fontSize: 17),)
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
                        child: IconButton(
                            onPressed: (){},
                            icon:const  Icon(Icons.window, size: 40,color: Colors.black,)
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Text('창문', style: TextStyle(fontSize: 17),)
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
                        child: IconButton(
                            onPressed: (){},
                            icon:const  Icon(Icons.warning_amber, size: 40, color: Colors.black,)
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Text('비상등', style: TextStyle(fontSize: 17),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
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
                            Icon(Icons.directions_car_outlined, color: Colors.brown[200], size: 35,),
                            const SizedBox(width: 10,),
                            const Text('Vehicle control', style: TextStyle(color: Colors.white, fontSize: 18),)
                          ],
                        ),
                        const Icon(Icons.chevron_right, color: Colors.white, size: 30,),
                      ],
                    ),
                    Divider(color: Colors.grey[700],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.air_rounded, color: Colors.brown[200], size: 35,),
                            const SizedBox(width: 10,),
                            const Text('Climate', style: TextStyle(color: Colors.white, fontSize: 18),)
                          ],
                        ),
                        const Icon(Icons.chevron_right, color: Colors.white, size: 30,),
                      ],
                    ),
                    Divider(color: Colors.grey[700],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.my_location_outlined, color: Colors.brown[200], size: 35,),
                            const SizedBox(width: 10,),
                            const Text('Location', style: TextStyle(color: Colors.white, fontSize: 18),)
                          ],
                        ),
                        const Icon(Icons.chevron_right, color: Colors.white, size: 30,),
                      ],
                    ),
                    Divider(color: Colors.grey[700],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.vpn_key_outlined, color: Colors.brown[200], size: 35,),
                            const SizedBox(width: 10,),
                            const Text('Valet Mode', style: TextStyle(color: Colors.white, fontSize: 18),)
                          ],
                        ),
                        const Icon(Icons.chevron_right, color: Colors.white, size: 30,),
                      ],
                    ),
                    Divider(color: Colors.grey[700],),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


