import 'package:coffee_shop/utilities/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee_shop/utilities/cofeetype.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  void coffeTypeSelected() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
      ]),
      body: Column(
        children: [
          // Header
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Find the best coffee for you",
              style: GoogleFonts.bebasNeue(fontSize: 58),
            ),
          ),
          // Search Bar
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your coffee...',
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade600)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade600))),
            ),
          ),
          // Picker Menu

          SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Cofeetype(
                  coffeeType: 'All',
                  isSelected: true,
                ),
                Cofeetype(
                  coffeeType: 'Cappuccino',
                  isSelected: false,
                ),
                Cofeetype(
                  coffeeType: 'Latte',
                  isSelected: false,
                ),
                Cofeetype(coffeeType: 'Black', isSelected: false),
                Cofeetype(coffeeType: 'Tea', isSelected: false),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Coffee(
                  imagePath: 'lib/Images/latte.jpg',
                  coffeName: 'Latte',
                  coffeDesc: 'With oat Milk',
                  coffePrice: '₹55',
                ),
                Coffee(
                  imagePath: 'lib/Images/coffee.jpg',
                  coffeName: 'Coffee',
                  coffeDesc: 'With Love',
                  coffePrice: '₹545',
                ),
                Coffee(
                  imagePath: 'lib/Images/cappuccino.jpg',
                  coffeName: 'Cappuccino',
                  coffeDesc: 'With Chocolate',
                  coffePrice: '₹575',
                ),
                Coffee(
                  imagePath: 'lib/Images/milk.jpg',
                  coffeName: 'milk',
                  coffeDesc: 'Plain Milk',
                  coffePrice: '₹75',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
