import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/ticket/widget/custom_appbar.dart';
import 'package:movie_ticket_booking_app/utils/constants/image_strings.dart';
import 'package:movie_ticket_booking_app/utils/constants/sizes.dart';
import 'package:ticket_widget/ticket_widget.dart';

class FinalTicket extends StatelessWidget {
  const FinalTicket({
    super.key,
    required this.leftHeightFactor,
    required this.rightHeightFactor,
  });

  final double leftHeightFactor;
  final double rightHeightFactor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PreferredSize(
          preferredSize: const Size.fromHeight(145),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            flexibleSpace: ClipPath(
              clipper: CustomAppBarClipper(leftHeightFactor, rightHeightFactor),
              child: Container(
                color: const Color(0xffEA4C89),
              ),
            ),
          ),
        ),
        Positioned(
          top: 80,
          left: 16,
          right: 16,
          child: TicketWidget(
            width: 350,
            height: 633,
            isCornerRounded: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    TImages.onBoardingImage13,
                    height: 169,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title Row
                      Row(
                        children: [
                          const Text(
                            'Evil Dead Rise',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 25,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Center(
                              child: Text(
                                'XXI',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      Row(
                        children: const [
                          Icon(Icons.add_location_alt_outlined),
                          SizedBox(width: 9),
                          Text(
                            'los City Center',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Date
                          Expanded(
                            child: Column(
                              children: const [
                                Text(
                                  'Date',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '24 Apr',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 40,
                            width: 1,
                            color: Colors.grey,
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                          ),

                          Expanded(
                            child: Column(
                              children: const [
                                Text(
                                  'Hours',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '10:30',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 40,
                            width: 1,
                            color: Colors.grey,
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                          ),

                          Expanded(
                            child: Column(
                              children: const [
                                Text(
                                  'Seat',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '6',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Booking Code',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '091821912301',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Pass Key',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '129312',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: '129312',
                    width: double.infinity,
                    height: 80,
                    drawText: false,
                    backgroundColor: Colors.white,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
