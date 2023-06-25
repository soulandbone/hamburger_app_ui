import 'package:flutter/material.dart';
import 'package:hamburger_app_ui/widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Theme(
        data: ThemeData(useMaterial3: false),
        child: BottomAppBar(
          color: Colors.teal,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_alert),
                color: Colors.white,
              ),
              const Spacer(),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.turned_in),
                color: Colors.white,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        elevation: 5,
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            //backgroundColor: Colors.teal,
            title:
                const Text('Deliver Me', style: TextStyle(color: Colors.white)),
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ))
            ],
          ),
          Header(),
          SliverList(
              delegate: SliverChildListDelegate([
            const Text(
              'Hamburger',
              style: TextStyle(fontSize: 300),
            )
          ]))
        ],
      ),
    );
  }
}
