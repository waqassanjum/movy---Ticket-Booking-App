import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_ticket_booking_app/home/widgets/user_details.dart';
import 'package:movie_ticket_booking_app/layout/layout.dart';
import 'package:movie_ticket_booking_app/notification/notification_screen.dart';
import 'package:movie_ticket_booking_app/product_card/product_cart_vertical.dart';
import 'package:movie_ticket_booking_app/promo_slider/slider.dart';
import 'package:movie_ticket_booking_app/utils/constants/colors.dart';
import 'package:movie_ticket_booking_app/utils/constants/image_strings.dart';
import 'package:movie_ticket_booking_app/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> productData = [
      {
        'imageUrl': TImages.onBoardingImage14,
        'title': 'Avatar: The Way of Water',
        'subtitle': 'Sci-fi/Adventure ‧ 3h 12m',
      },
      {
        'imageUrl': TImages.onBoardingImage15,
        'title': 'M3GAN',
        'subtitle': 'Horror/Sci-fi ‧ 1h 42m',
      },
      {
        'imageUrl': TImages.onBoardingImage16,
        'title': 'Evil Dead Rise',
        'subtitle': 'Horror/Fantasy ‧ 1h 36m',
      },
      {
        'imageUrl': TImages.onBoardingImage17,
        'title': 'Everything Everywhere',
        'subtitle': 'Horror/Fantasy ‧ 1h 36m',
      },
      {
        'imageUrl': TImages.onBoardingImage18,
        'title': 'The Night House',
        'subtitle': 'Horror/Thriller ‧ 1h 48m',
      },
      {
        'imageUrl': TImages.onBoardingImage19,
        'title': 'The Ritual',
        'subtitle': 'Horror/Mystery ‧ 1h 34m',
      },
    ];

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Hide keyboard on tap
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(145),
          child: AppBar(
            automaticallyImplyLeading: true,
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF342D38), Color(0xFF6E375D)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => Get.to(() => ProfileScreen()),
                                  child: Image.asset(
                                    TImages.user,
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                const SizedBox(width: 70),
                                Icon(Icons.location_on, color: TColors.white),
                                const SizedBox(width: 5),
                                Text('Pak',
                                    style: TextStyle(color: TColors.white)),
                              ],
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                              ),
                              onPressed: () => Get.to(() => InboxScreen()),
                            )
                          ]),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: TColors
                                        .primary, // Keeps the border color
                                    width: 0.8,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: TColors.primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                hintStyle: TextStyle(color: TColors.white),
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: TColors.primary,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TPromoSlider(
                        banners: [
                          TImages.onBoardingImage13,
                          TImages.onBoardingImage2,
                          TImages.onBoardingImage3,
                        ],
                      ),
                    ),
                    SizedBox(height: TSizes.spaceBtwSections),
                    TGridLayout(
                      itemCount: productData.length,
                      itemBuilder: (_, index) => TProductCardVertical(
                        imageUrl: productData[index]['imageUrl']!,
                        title: productData[index]['title']!,
                        subtitle: productData[index]['subtitle']!,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
