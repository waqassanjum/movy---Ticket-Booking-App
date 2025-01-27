import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_booking_app/home/home_screen.dart';
import 'package:movie_ticket_booking_app/utils/constants/colors.dart';
import 'package:movie_ticket_booking_app/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: darkMode ? TColors.black : TColors.white,
            indicatorColor: darkMode
                ? TColors.white.withAlpha(25)
                : TColors.black.withAlpha(25),
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.shop), label: 'Store'),
              NavigationDestination(
                  icon: Icon(Icons.favorite), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            ],
          )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(color: Colors.black)
  ];
}
