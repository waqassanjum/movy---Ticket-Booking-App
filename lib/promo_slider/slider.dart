import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_booking_app/home_controller/home_controller.dart';
import 'package:movie_ticket_booking_app/utils/constants/colors.dart';
import 'package:movie_ticket_booking_app/utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 200, // Fixed height for the slider container
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  // autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _) =>
                      controller.updatePageIndicator(index),
                ),
                items: banners.map((url) {
                  return Stack(
                    children: [
                      // Banner Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          url,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                      // "Book Now" Button
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: TColors.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                color: TColors.white,
                                fontSize: TSizes.md,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
            // Page Indicator
            Positioned(
              bottom: 1,
              left: 0,
              right: 0,
              child: Center(
                child: Obx(
                  () => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < banners.length; i++)
                        Container(
                          width: 5,
                          height: 4,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: controller.carouselCurrentIndex.value == i
                                ? TColors.textPrimary
                                : TColors.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
      ],
    );
  }
}
