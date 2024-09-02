import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'favorites_page.dart';
import 'history_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(),
    CartPage(),
    FavoritesPage(),
    HistoryPage(),
  ];
  final List<String> _titles = [
    'Home',
    'Cart',
    'Favorites',
    'History',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          _titles[_selectedIndex], // Update title based on selected index
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFFFA4A0C),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.black), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.black), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.history, color: Colors.black), label: 'History'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}


class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 200),
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/413f/bd8a/ca31034a72190c6c9631df7c477c3b1f?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BUa9mxGn8DTQuP~gLWgViDYIz2~EZHWen45lq1R2z6roP3PAtRPsQA88JLuNBJIqhFE00ae7VPiJE8wjz-Q0wnzUqFCqlY6o8qTOmf1hPLqJrG-inbOjn7~WeZr4jEK3HJcyf~l3PgOI7Z5ibXyCUCXQXo982OO-P1ozMRZ2MotGiT8KfKkBLzyq1yyjBBv8Fd-zWgoznngGufLFeXG9yQxy7kbn1aJ~zl5ZQh2-JGs8FJXA~gZX3hHziQINjb2kz47KI4RCnrrvMPLLgd5~xVNhL5Mei~wgfGN4o6vdIIi~o3jYMyUHfQVaSTzMff1ehm1Gg-jEhJeFM8uHbkC8~Q__',
              width: 195,
              height: 189,
            ),
          ),
          const Text(
            'No internet Connection',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Your internet connection is currently not available. Please check or try again.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontFamily: 'Poppins', color: Colors.grey),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFA4A0C),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12), // padding
            ),
            child: const Text('Try again', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
