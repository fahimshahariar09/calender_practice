import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  const Design({super.key});

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
      body: Column(
        children: [
          Text("data"),
        ],
      ),
    );
  }
}
