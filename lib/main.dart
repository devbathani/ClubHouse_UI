import 'package:clubhouse_clone/details.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Details> details = [
    Details(
      id: 'Lets Have some thing special',
      subid: 'aman',
      dp: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('icon/dpclub.jpg'))),
      ),
      name: 'Dev',
      subName: 'Janki ',
      subName1: 'Nidhi',
    ),
    Details(
      id: 'Hey All !!',
      subid: 'dev',
      dp: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('icon/dpclub.jpg'))),
      ),
      name: 'Prachi',
      subName: 'Himani ',
      subName1: 'Kaniska',
    ),
    Details(
      id: 'Welcome to Flutter',
      subid: 'frsrg',
      dp: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('icon/dpclub.jpg'))),
      ),
      name: 'Aman',
      subName: 'Pankaj ',
      subName1: 'Aryan',
    ),
    Details(
      id: 'Code for Fun',
      subid: 'frsrg',
      dp: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('icon/dpclub.jpg'))),
      ),
      name: 'Krutik',
      subName: 'Mehank ',
      subName1: 'Shrey',
    ),
    Details(
      id: 'Thank you',
      subid: 'frsrg',
      dp: Container(
        width: 75,
        height: 75,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('icon/dpclub.jpg'))),
      ),
      name: 'Aanshi',
      subName: 'Jinkal ',
      subName1: 'Aliena',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff2f0e4),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xfff2f0e4),
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 25,
                    width: 25,
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'icon/envelop.png',
                      ),
                    )),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 25,
                    width: 25,
                    child: GestureDetector(
                      onLongPress: () {},
                      child: Image.asset(
                        'icon/calendar.png',
                      ),
                    )),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 25,
                    width: 25,
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'icon/bell.png',
                      ),
                    )),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('icon/dpclub.jpg'))),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: details.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(11.0),
              child: Container(
                height: screenHeight * 0.23,
                width: screenWidth * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0.5,
                          blurRadius: 3,
                          offset: Offset(2, 2))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(details[index].id,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: details[index].dp,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(details[index].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                Text(details[index].subName,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                Text(details[index].subName1,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xff28ae61)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add),
              SizedBox(
                width: 10,
              ),
              Text('Start a Room')
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
