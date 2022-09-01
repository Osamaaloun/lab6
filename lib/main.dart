import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List text1 = [
    Text(""),
    Text(""),
    Text(""),
    Text(""),
  ];
  List image0 = [
    Image(
        image: NetworkImage(
            "https://res.cloudinary.com/grover/image/upload/f_webp,q_auto/b_white,c_pad,dpr_2.0,h_500,w_520/f_auto,q_auto/v1630928834/edoh3amtfipnhqhlcxme.png")),
    Image(
        image: NetworkImage(
            "https://mobizil.com/wp-content/uploads/2021/01/S21-5G.jpg")),
    Image(
        image: NetworkImage(
            "https://cdn.shortpixel.ai/spai/w_427+q_glossy+ret_img+to_webp/https://mobizil.com/wp-content/uploads/2022/03/Huawei-P50-Pro-400x400.jpg")),
    Image(
        image: NetworkImage(
            "https://cdn.shortpixel.ai/spai/w_427+q_glossy+ret_img+to_webp/https://mobizil.com/wp-content/uploads/2020/11/Nokia-3.4-1-400x400.jpg")),
  ];
  List list = [Text(""), Text(""), Text(""), Text("")];
  List list0 = [
    Text(
      "iphone",
      style: TextStyle(fontSize: 30, color: Colors.green),
    ),
    Text(
      "samsong",
      style: TextStyle(fontSize: 30, color: Colors.green),
    ),
    Text("huawei",style: TextStyle(fontSize: 30,color: Colors.green),),
    Text("nokia",style: TextStyle(fontSize: 30,color: Colors.green),)
  ];
  List list1 = [
    Text(
      "500",
      style: TextStyle(decoration: TextDecoration.lineThrough),
    ),
    Text(
      "400",
      style: TextStyle(decoration: TextDecoration.lineThrough),
    ),
    Text(
      "300",
      style: TextStyle(decoration: TextDecoration.lineThrough),
    ),
    Text(
      "200",
      style: TextStyle(decoration: TextDecoration.lineThrough),
    )
  ];
  List list2 = [Text("399"), Text("299"), Text("199"), Text("110")];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.yellow, Colors.pink])),
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int i) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 250),
                    child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            list[i] = Text(
                              "added to card",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.blue),
                            );
                          });
                        },
                        icon: Icon(Icons.add),
                        label: Text("add to cart")),
                  ),
                  ListTile(
                    title: list0[i],
                    subtitle: Row(
                      children: [
                        list1[i],
                        SizedBox(
                          width: 35,
                        ),
                        list2[i]
                      ],
                    ),
                    trailing: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            text1[i] = Text("added to favorite",style: TextStyle(fontSize: 30,color: Colors.blue),);
                          });
                        },
                        icon: Icon(Icons.favorite),
                        label: Text("")),
                    leading: image0[i],
                  ),
                  list[i],
                  text1[i],
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
