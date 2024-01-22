import 'package:flutter/material.dart';
import 'package:uzum_bank/core/app_colors/app_colors.dart';
import 'package:uzum_bank/features/main/presentation/page/chat/chat_page.dart';
import 'package:uzum_bank/features/main/presentation/page/home/home_screen.dart';
import 'package:uzum_bank/features/main/presentation/page/menu/menu_page.dart';
import 'package:uzum_bank/features/main/presentation/page/payment/payment_page.dart';
import 'package:uzum_bank/features/main/presentation/page/transfer/transfer_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  bool page1 = true;
  bool page2 = false;
  bool page3 = false;
  bool page4 = false;
  bool page5 = false;


  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
      switch (index){
        case 0:
          {
            page1 = true;
            page2 = false;
            page3 = false;
            page4 = false;
            page5 = false;
          }; break;
        case 1 :
          {
            page1 = false;
            page2 = true;
            page3 = false;
            page4 = false;
            page5 = false;
          }; break;
        case 2 :
          {
            page1 = false;
            page2 = false;
            page3 = true;
            page4 = false;
            page5 = false;
          }; break;
        case 3 :
          {
            page1 = false;
            page2 = false;
            page3 = false;
            page4 = true;
            page5 = false;
          }; break;
        case 4 :
          {
            page1 = false;
            page2 = false;
            page3 = false;
            page4 = false;
            page5 = true;
          }; break;
      }
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    TransferPage(),
    PaymentPage(),
    ChatPage(),
    MenuPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: AppColors.primary),
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/bottom_icon/home_icon.png', height: 24, width: 24, color: page1 ? AppColors.primary : Colors.grey,), label: 'Home'),
          BottomNavigationBarItem(icon: Image.asset('assets/bottom_icon/transfer_icon.png',height: 24, width: 24,color: page2 ? AppColors.primary : Colors.grey,), label: 'Transfer'),
          BottomNavigationBarItem(icon: Image.asset('assets/bottom_icon/payment_icon.png',height: 24, width: 24,color: page3 ? AppColors.primary : Colors.grey,), label: 'Payment'),
          BottomNavigationBarItem(icon: Image.asset('assets/bottom_icon/chat_icon.png',height: 24, width: 24,color: page4 ? AppColors.primary : Colors.grey,), label: 'Chat'),
          BottomNavigationBarItem(icon: Image.asset('assets/bottom_icon/menu_icon.png',height: 24, width: 24,color: page5 ? AppColors.primary : Colors.grey,), label: 'Menu'),
        ],
      ),
    );
  }
}
