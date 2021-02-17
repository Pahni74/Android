import 'package:flutter/material.dart';

List<Color> colors = [
  Colors.red,
  Colors.amber,
  Colors.black,
  Colors.blue,
  Colors.orange,
  Colors.green,
  Colors.pink,
  Colors.purple,
  Colors.blueGrey,
  Colors.deepOrange,
  Colors.lightGreenAccent,
  Colors.pinkAccent
];
List<Color> colors2 = [
  Colors.red,
  Colors.amber,
  Colors.black,
  Colors.green,
  Colors.pink,
  Colors.deepOrange,
];
final titles2 = [
  'Pahni',
  'Asep',
  'Unggul',
  'Susan',
  'Erna',
  'Syarief',
];
final titles = [
  'Pahni',
  'Asep',
  'Unggul',
  'Susan',
  'Erna',
  'Syarief',
  'Deni',
  'Rizky',
  'Syahrul',
  'Andre',
  'Ferdinand',
  'Ilham'
];
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('ListView'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors2.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Center(
                              child: Text(
                                titles2[index],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            width: 100,
                            height: 400,
                            color: colors2[index],
                          );
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20, top: 20),
                    height: 200,
                    width: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: colors2.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Center(
                              child: Text(
                                titles2[index],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            width: 400,
                            height: 200,
                            color: colors2[index],
                          );
                        }),
                  ),
                  Container(
                    height: 200,
                    child: GridView.count(
                      scrollDirection: Axis.horizontal,
                      crossAxisCount: 2,
                      children: List.generate(12, (index) {
                        return Container(
                          child: Card(
                            margin: EdgeInsets.all(2),
                            child: Center(
                              child: Text(
                                titles[index],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            color: colors[index],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
