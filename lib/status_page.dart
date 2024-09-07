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
            ),
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
              )),
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0), // bottom border 두깨
            child: Container(
              color: Colors.grey[350], // border 색상
              height: 1.0, // border 두깨
            )
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBar(
                labelColor: Colors.brown[300],
                indicatorColor: Colors.brown[400],
                labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800), // 선택된 탭의 스타일
                unselectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal), // 선택되지 않은 탭의 스타일
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3,
                tabs: const <Widget>[
                  Tab(text: '차량'),
                  Tab(text: '공조'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('차량 상태', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.directions_car, color: Colors.black, size: 25),
                                    SizedBox(width: 20),
                                    Text('도어', style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                                Text('닫힘', style: TextStyle(fontSize: 15, color: Colors.brown[900])),
                              ],
                            ),
                          ),
                          Divider(color: Colors.grey[400], height: 20),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.directions_car, color: Colors.black, size: 25),
                                    SizedBox(width: 20),
                                    Text('창문', style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                                Text('닫힘', style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                              ],
                            ),
                          ),
                          Divider(color: Colors.grey[400], height: 20),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.directions_car, color: Colors.black, size: 25),
                                    SizedBox(width: 20),
                                    Text('테일게이트', style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                                Text('닫힘', style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                              ],
                            ),
                          ),
                          Divider(color: Colors.grey[400], height: 20),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.directions_car, color: Colors.black, size: 25),
                                    SizedBox(width: 20),
                                    Text('후드', style: TextStyle(fontSize: 15)),
                                  ],
                                ),
                                Text('닫힘', style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                              ],
                            ),
                          ),
                          Divider(color: Colors.grey[400], height: 20),
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
                              const Text('공조 상태', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.directions_car, color: Colors.black, size: 25),
                                        SizedBox(width: 20),
                                        Text('냉/난방', style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    Text('꺼짐', style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[400], height: 20),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.directions_car, color: Colors.black, size: 25),
                                        SizedBox(width: 20),
                                        Text('핸들 열선', style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    Text('꺼짐', style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[400], height: 20),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.directions_car, color: Colors.black, size: 25),
                                        SizedBox(width: 20),
                                        Text('앞유리 성에 제거', style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    Text('꺼짐', style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[400], height: 20),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.directions_car, color: Colors.black, size: 25),
                                        SizedBox(width: 20),
                                        Text('뒷유리 열선', style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    Text('꺼짐', style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[400], height: 20),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.directions_car, color: Colors.black, size: 25),
                                        SizedBox(width: 20),
                                        Text('사이드 미러 열선', style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    Text('꺼짐', style: TextStyle(fontSize: 15, color: Colors.grey[600])),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[400], height: 20),
                            ],
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
