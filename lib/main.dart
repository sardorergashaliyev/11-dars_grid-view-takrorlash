import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff010101),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.sms,
                    color: Color(0xff888888),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                    color: Color(0xff888888),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Color(0xff888888),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xff888888),
                  ),
                  label: '')
            ]),
        appBar: AppBar(
          toolbarHeight: 86,
          backgroundColor: const Color(0xff131418),
          title: Container(
            margin: const EdgeInsets.only(bottom: 16, top: 23),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Qidirish',
                  hintStyle: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Color(0xff131418),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)))),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16),
              color: Colors.white,
              width: 400,
              height: 194,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 24),
                        child: const Text(
                          'Kategoriya',
                          style: TextStyle(
                              color: Color(0xff222222),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 176, top: 26),
                        child: const Text(
                          'Barchasi >',
                          style: TextStyle(
                            color: Color(0xff222222),
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 24),
                                  height: 75,
                                  width: 75,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffF6F6F6),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.home,
                                    size: 26,
                                  ),
                                ),
                                const SizedBox(
                                  width: 100,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 8),
                                    child: Text(
                                      '''Ko'chmas mulk''',
                                      style: TextStyle(
                                          color: Color(0xff131418),
                                          fontSize: 14),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, left: 16),
              child: const Text(
                'Siz uchun maxsus',
                style: TextStyle(
                    color: Color(0xff131418),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: SizedBox(
                height: 380,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 260),
                  itemBuilder: (BuildContext context, int index) => SizedBox(
                    height: 239,
                    width: 168,
                    child: Column(children: [
                      SizedBox(
                          height: 112,
                          width: 168,
                          child: Image.network(
                              "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202210/cover_3-sixteen_nine.jpg?VersionId=orYhmFyAE1W2Ec.3cAq2kd8AgCbko6v8&size=690:388")),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 8, left: 8, right: 13),
                              child: const Text(
                                  'Tovar nomi maksimum ikki qator bo’ladi...'),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8, left: 8),
                              child: const Text(
                                '23 000 UYE',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8, top: 8),
                              child: const Text(
                                'Tashkent',
                                style: TextStyle(color: Color(0xff888888)),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 8, left: 8),
                                  child: const Text(
                                    'Bugun 12:27',
                                    style: TextStyle(color: Color(0xff888888)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 59),
                                  child: const Icon(
                                    Icons.favorite_border,
                                    color: Color(0xff888888),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
