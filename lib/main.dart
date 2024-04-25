import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Image.asset("images/image.jpg")],
              ),
              flex: 5,
            ),
            Flexible(
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                width: 50,
                                height: 50,
                                child: Image(
                                  image: AssetImage("images/image.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "omar elwakil",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text("Nature"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12, width: 1),
                            bottom:
                                BorderSide(color: Colors.black12, width: 1))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.favorite, color: Colors.black45,),
                        Icon(Icons.comment, color: Colors.black45,),
                        Icon(Icons.share, color: Colors.black45,),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                              child: Icon(Icons.favorite, color: Colors.black45,),
                            ),
                            Text("5 faved", style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                              child: Icon(Icons.comment, color: Colors.black45,),
                            ),
                            Text("4 comments", style: TextStyle(fontSize: 12),)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
