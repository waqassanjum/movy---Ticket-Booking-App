import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_booking_app/order_summary/order_summary.dart';
import 'package:movie_ticket_booking_app/utils/constants/image_strings.dart';
import 'package:movie_ticket_booking_app/utils/constants/sizes.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  // Track selected payment method
  String selectedPayment = '';

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
                  _paymentMethodRow(
                    'Mastercard',
                    TImages.masterCard,
                    'masterCard',
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  _paymentMethodRow(
                    'PayPal',
                    TImages.paypal,
                    'paypal',
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  _paymentMethodRow(
                    'VISA',
                    TImages.visa,
                    'visa',
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
          onPressed: () {
            if (selectedPayment.isNotEmpty) {
              Get.to(() => OrderSummaryScreen());
            } else {
              // Show an alert if no method is selected
              Get.snackbar(
                'Error',
                'Please select a payment method.',
                snackPosition: SnackPosition.BOTTOM,
              );
            }
          },
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

  // Reusable widget to display each payment method row
  Widget _paymentMethodRow(
    String paymentMethod,
    String imageUrl,
    String methodKey,
  ) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 30,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Image.asset(
              imageUrl,
              height: 40,
              width: 40,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          paymentMethod,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedPayment = methodKey;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selectedPayment == methodKey
                  ? Colors.blue
                  : Colors.transparent,
              border: Border.all(color: Colors.black, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
