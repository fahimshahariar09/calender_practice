import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {

  List data =[
    {
      "name":"fahim","roll":123,"dep":"cse"
    }, {
      "name":"siddik","roll":345,"dep":"cse"
    }, {
      "name":"fahim","roll":567,"dep":"cse"
    }, {
      "name":"fahim","roll":789,"dep":"cse"
    }, {
      "name":"fahim","roll":912,"dep":"cse"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SafeArea(
      //   child: Container(
      //     height: double.infinity,
      //     width: double.infinity,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         gradient: LinearGradient(
      //             begin: Alignment.bottomRight,
      //             stops: [0.1, 0.9],
      //             colors: [Colors.green, Colors.orange.withBlue(3)])),
      //     child: Column(
      //       children: [
      //
      //
      //       ],
      //     ),
      //   ),
      // ),
      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     return Text("data");
      //   },
      //   itemCount: 10,
      //   separatorBuilder: (context,index) {
      //     return Divider();
      //   },
      // ),
      // body: ListView.custom(childrenDelegate:  SliverChildListDelegate(children[])),
      appBar: AppBar(
        title: Text("Design"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text("data")Text("data")Text("data")
            ],
          ),
        ),
      ),
    );
  }
}
