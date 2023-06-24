import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildListDelegate([
      Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: size.height / 5,
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                  )
                ],
                color: Colors.teal,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(45),
                )),
            child: const Column(children: [
              Gap(20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white70,
                  )
                ],
              )
            ]),
          )
        ],
      )
    ]));
  }
}
