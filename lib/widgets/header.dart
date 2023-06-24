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
      Stack(
        // has one column inside
        children: [
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
                child: Column(children: [
                  const Gap(20),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white70,
                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/dog.jpg')),
                      ),
                      const Gap(5),
                      Column(
                        // this is the column for Good Boi and "he is a good Boy"
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Good Boi',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: const Text(
                              'He is a good boy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        '154 \$CAN',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ]),
              ),
              const Gap(15)
            ],
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: 50,
                width: size.width,
                child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 3,
                  child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'What does your belly want to eat ?',
                          labelStyle: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w200),
                          suffixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 20))),
                ),
              )),
        ],
      )
    ]));
  }
}
