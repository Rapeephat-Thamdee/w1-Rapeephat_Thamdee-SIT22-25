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
        '/':(context) => const MyHomepage(),
        '/NartheeSong' : (context) =>  Nartheesong()
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
                    Text("rapeephat.thamdee@e-teh.ac.th"),
                  ],
                ),
              ),
            ),
            Container(child: Column(children: [
              Padding(padding: EdgeInsets.all(8),child:Row(
                children: [Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFF72DD58),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.phone,size: 40,color: Color(0xFF45A125)
                  ),
                ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("เบอร์"),Text("085-5555565")],)
                ],
              ),
              ),
              Padding(padding: EdgeInsets.all(8),child:Row(
                children: [Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFDC8CD6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.cake,size: 40,color: Color(0xFFEF55A7)
                  ),
                ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("วันเกิด"),Text("15 มกราคม 2549")],)
                ],
              ),
              ),
              Padding(padding: EdgeInsets.all(8),child:Row(
                children: [Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFEAB96D),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.pin_drop,size: 40,color: Color(0xFFED8B1A)
                  ),
                ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("ที่อยู่"),Text("ชลบุรี")],)
                ],
              ),
              ),
              Padding(padding: EdgeInsets.all(8),child:Row(
                children: [Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFA871C6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.pin_drop,size: 40,color: Color(0xFF8B1CCA)
                  ),
                ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("ที่อยู่"),Text("ชลบุรี")],)
                ],
              ),
              ),

              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, '/NartheeSong'), child: Text("เปลี่ยนหน้า"),style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.orange
              ),)
            ])),
          ],
        ),
      ),
    );
  }
}

class Nartheesong extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("NarTheeSong"),),
    );
  }
  
  
}





























