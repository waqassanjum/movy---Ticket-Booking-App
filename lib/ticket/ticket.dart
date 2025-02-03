import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_booking_app/booking_screen/booking.dart';
import 'package:movie_ticket_booking_app/bottom_navigation/navigation.dart';
import 'package:movie_ticket_booking_app/home/home_screen.dart';
import 'package:movie_ticket_booking_app/notification/notification_screen.dart';
import 'package:movie_ticket_booking_app/ticket/widget/final_ticket.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    double leftHeightFactor = 0.5;
    double rightHeightFactor = 0.3;

    return Scaffold(
      body: FinalTicket(
          leftHeightFactor: leftHeightFactor,
          rightHeightFactor: rightHeightFactor),
      bottomNavigationBar: Obx(
        () => ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF6E375D),
                  Color(0xFF342D38),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: NavigationBarTheme(
              data: NavigationBarThemeData(
                labelTextStyle: WidgetStateProperty.all(
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              child: NavigationBar(
                height: 80,
                elevation: 0,
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) {
                  if (index == 0) {
                    controller.selectedIndex.value = 0;
                    Get.off(() => const HomeScreen());
                  } else {
                    controller.selectedIndex.value = index;

                    if (index == 1) {
                      // controller.selectedIndex.value = 0;
                      Get.to(() => const BookingScreen());
                    } else if (index == 2) {
                      controller.selectedIndex.value = 2;
                      Get.to(() => const TicketScreen());
                    } else if (index == 3) {
                      controller.selectedIndex.value = 2;
                      Get.to(() => const InboxScreen());
                    }
                  }
                },
                backgroundColor: Colors.transparent,
                indicatorColor: Colors.white,
                destinations: const [
                  NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
                  NavigationDestination(
                      icon: Icon(Icons.movie), label: 'Movie'),
                  NavigationDestination(
                      icon: Icon(Icons.check), label: 'Check'),
                  NavigationDestination(
                      icon: Icon(Icons.inbox), label: 'Inbox'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
