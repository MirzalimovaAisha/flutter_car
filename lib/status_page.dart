import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          'Status',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Row(
          children: [
            Text(
              'Q8',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.chevron_right_outlined,
              size: 20,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.black,
                size: 30,
              )
          ),
        ],
      ),
      body:  DefaultTabController(
          initialIndex: 1,
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: const TabBar.secondary(
                tabs: <Widget>[
                  Tab(
                    text: '차량',
                  ),
                  Tab(
                    text: '공조',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('차량 상태', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                         const SizedBox(height: 20,),
                         Padding(
                          padding: const EdgeInsets.all(10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions_car, color: Colors.black, size: 35,),
                                   SizedBox(width: 20,),
                                   Text('도어', style: TextStyle( fontSize: 18),)
                                ],
                              ),
                               Text('닫힘', style: TextStyle(fontSize: 18, color: Colors.grey[600]),)
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey[400],),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions_car, color: Colors.black, size: 35,),
                                  SizedBox(width: 20,),
                                  Text('창문', style: TextStyle( fontSize: 18),)
                                ],
                              ),
                              Text('닫힘', style: TextStyle(fontSize: 18, color: Colors.grey[600]),)
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey[400],),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions_car, color: Colors.black, size: 35,),
                                  SizedBox(width: 20,),
                                  Text('테일게이트', style: TextStyle( fontSize: 18),)
                                ],
                              ),
                              Text('닫힘', style: TextStyle(fontSize: 18, color: Colors.grey[600]),)
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey[300],),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions_car, color: Colors.black, size: 35,),
                                  SizedBox(width: 20,),
                                  Text('후드', style: TextStyle( fontSize: 18),)
                                ],
                              ),
                              Text('닫힘', style: TextStyle(fontSize: 18, color: Colors.grey[600]),)
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey[400],),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('공조 상태', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                         const SizedBox(height: 20,),
                         Padding(
                          padding: const EdgeInsets.all(10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions_car, color: Colors.black, size: 35,),
                                   SizedBox(width: 20,),
                                   Text('냉/난방', style: TextStyle( fontSize: 18),)
                                ],
                              ),
                               Text('꺼짐', style: TextStyle(fontSize: 18, color: Colors.grey[600]),)
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey[400],),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions_car, color: Colors.black, size: 35,),
                                  SizedBox(width: 20,),
                                  Text('핸들 열선', style: TextStyle( fontSize: 18),)
                                ],
                              ),
                              Text('꺼짐', style: TextStyle(fontSize: 18, color: Colors.grey[600]),)
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey[400],),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions_car, color: Colors.black, size: 35,),
                                  SizedBox(width: 20,),
                                  Text('앞유리 성에 제거', style: TextStyle( fontSize: 18),)
                                ],
                              ),
                              Text('꺼짐', style: TextStyle(fontSize: 18, color: Colors.grey[600]),)
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey[300],),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions_car, color: Colors.black, size: 35,),
                                  SizedBox(width: 20,),
                                  Text('뒷유리 열선', style: TextStyle( fontSize: 18),)
                                ],
                              ),
                              Text('꺼짐', style: TextStyle(fontSize: 18, color: Colors.grey[600]),)
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey[300],),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.directions_car, color: Colors.black, size: 35,),
                                  SizedBox(width: 20,),
                                  Text('사이드 미러 열선', style: TextStyle( fontSize: 18),)
                                ],
                              ),
                              Text('꺼짐', style: TextStyle(fontSize: 18, color: Colors.grey[600]),)
                            ],
                          ),
                        ),
                        Divider(color: Colors.grey[400],),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

    );
  }
}
