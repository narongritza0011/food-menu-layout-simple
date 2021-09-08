import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<List<dynamic>> foodLists = [
    [
      "https://s359.kapook.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg",
      "ส้มตำdddddddddddddddddddddddddddddddddddddddddddddddddd",
      "250"
    ],
    [
      "https://img.kapook.com/u/2017/sarinee/July/week3/cok2.jpg",
      "ต้มยำกุ้ง",
      "300"
    ],
    [
      "https://www.ryoiireview.com/upload/article/202008/1596531563_1f126cd64f166c69499aacf15020db74.jpg",
      "ไก่ทอด",
      "199"
    ],
    [
      "https://s359.kapook.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg",
      "ส้มตำdddddddddddddddddddddddddddddddddddddddddddddddddd",
      "250"
    ],
    [
      "https://img.kapook.com/u/2017/sarinee/July/week3/cok2.jpg",
      "ต้มยำกุ้ง",
      "300"
    ],
    [
      "https://www.ryoiireview.com/upload/article/202008/1596531563_1f126cd64f166c69499aacf15020db74.jpg",
      "ไก่ทอด",
      "199"
    ],
    [
      "https://s359.kapook.com/pagebuilder/a9b86b24-fd18-4e76-9b01-cd4a273d312c.jpg",
      "ส้มตำdddddddddddddddddddddddddddddddddddddddddddddddddd",
      "250"
    ],
    [
      "https://img.kapook.com/u/2017/sarinee/July/week3/cok2.jpg",
      "ต้มยำกุ้ง",
      "300"
    ],
    [
      "https://www.ryoiireview.com/upload/article/202008/1596531563_1f126cd64f166c69499aacf15020db74.jpg",
      "ไก่ทอด",
      "199"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodLists.length,
      itemBuilder: (context, index) {
        return Card(
          // elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: Container(
              height: 100,
              width: double.infinity,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.network(
                        foodLists[index][0],
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${foodLists[index][1]}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "฿ ${foodLists[index][2]}",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    alignment: Alignment.bottomRight,
                    child: Chip(
                      backgroundColor: Colors.orangeAccent,
                      label: Text(
                        'Order Now',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
