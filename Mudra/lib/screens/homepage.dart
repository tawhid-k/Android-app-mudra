import 'package:flutter/material.dart';
import 'package:mudra/screens/portfolio.dart';
import 'invest_screens/invest_home.dart';
import 'settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  List<Widget> _pages = <Widget> [Center(child:Text("Home")), InvestHome(), Center(child:Text("Move")),
    Portfolio(), Settings()];
  int selectedIndex = 0;
  void _goToTappedPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: _pages[selectedIndex],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: _goToTappedPage,
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.timeline), label: "Invest"),
            BottomNavigationBarItem(icon: Icon(IconData(0xe627, fontFamily: 'MaterialIcons')), label: "Move"),
            BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "Portfolio"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
