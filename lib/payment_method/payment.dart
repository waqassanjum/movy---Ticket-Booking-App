import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_booking_app/order_summary/order_summary.dart';
import 'package:movie_ticket_booking_app/utils/constants/image_strings.dart';
import 'package:movie_ticket_booking_app/utils/constants/sizes.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text('Payment')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Debit Card',
              style: TextStyle(
                fontSize: TSizes.md,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Choose payment methods',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Image.asset(
                            TImages.masterCard,
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Mastercard',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                          border: Border.all(color: Colors.black, width: 1.5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Image.asset(
                          TImages.paypal,
                          height: 40,
                          width: 40,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'PayPal',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black, width: 1.5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Image.asset(
                          TImages.visa,
                          height: 40,
                          width: 40,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'VISA',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black, width: 1.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(50),
        child: ElevatedButton(
          onPressed: () => Get.to(() => OrderSummaryScreen()),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFEA4C89),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
          ),
          child: const Text(
            'Confirm',
            style: TextStyle(
              color: Colors.white,
              fontSize: TSizes.md,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
