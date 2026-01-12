import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomepage(),
        '/NartheeSong': (context) => Nartheesong(),
      },
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.amberAccent),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(76),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://i.pinimg.com/1200x/88/23/43/8823432b265ee5fbdeaaaf18c6075490.jpg",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text("Rapeephat Thamdee"),
                    Text(
                      "rapeephat.thamdee@e-teh.ac.th",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ข้อมูลส่วนตัว",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFF72DD58),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.phone,
                            size: 40,
                            color: Color(0xFF45A125),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("เบอร์"),
                            Text(
                              "085-5555565",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFDC8CD6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.cake,
                            size: 40,
                            color: Color(0xFFEF55A7),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("วันเกิด"),
                            Text(
                              "15 มกราคม 2549",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFEAB96D),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.pin_drop,
                            size: 40,
                            color: Color(0xFFED8B1A),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ที่อยู่"),
                            Text(
                              "ชลบุรี",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFA871C6),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.school,
                            size: 40,
                            color: Color(0xFF8B1CCA),
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("การศึกษา"),
                            Text(
                              "วิทยาลัยเทคโนโลยีภาคตะวันออก(อีเทค)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/NartheeSong'),
                    child: Text("เปลี่ยนหน้า"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.orange,
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

class Nartheesong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.network(
                            "https://i.pinimg.com/1200x/88/23/43/8823432b265ee5fbdeaaaf18c6075490.jpg",
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 20),

                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "5",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "กำลังติดตาม",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),

                            VerticalDivider(
                              color: Colors.grey,
                              thickness: 1,
                              width: 16,
                              indent: 17,
                              endIndent: 17,
                            ),

                            Column(
                              children: [
                                Text(
                                  "128.1 K",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "ผู้ติดตาม",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),

                            VerticalDivider(//เส้นก๋วยเตี๋ยว
                              color: Colors.grey,
                              thickness: 1,
                              width: 16,
                              indent: 17,
                              endIndent: 17,
                            ),

                            Column(
                              children: [
                                Text(
                                  "329.9 K",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "ถูกใจและบันทึก",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Text(
                        "Rapeephat Thamdee",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(Icons.verified, color: Colors.blue),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.tiktok),
                      Text("Rapeephat", style: TextStyle(color: Colors.grey)),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  child: ElevatedButton(
                    onPressed: () => (),
                    child: Text("ตฺิดตาม"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.yellow,
                      fixedSize: Size(300, 1),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Icon(Icons.share),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://i.pinimg.com/736x/e5/a0/0b/e5a00bb885be24479d816183057df974.jpg",
                  width: 170,
                  height: 170,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 15),
                Image.network(
                  "https://i.pinimg.com/736x/e6/66/35/e666359bc1537c96cfeb344da2927077.jpg",
                  width: 170,
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
