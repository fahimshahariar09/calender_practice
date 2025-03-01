import 'package:calender/view/controller/getx/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationBarScreen extends StatelessWidget {
  final List<Widget> _screens = [

   ];

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());
    return Scaffold(
      body: Obx(() =>
          _screens[controller.selectedIndex.value]), // Dynamic screen update
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
