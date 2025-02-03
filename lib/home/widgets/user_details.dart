// import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/circular_image/circular_image.dart';
import 'package:movie_ticket_booking_app/home/widgets/profile_menu.dart';
import 'package:movie_ticket_booking_app/section/section_heading.dart';
import 'package:movie_ticket_booking_app/utils/constants/image_strings.dart';
import 'package:movie_ticket_booking_app/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 50, 63),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Color.fromARGB(255, 100, 50, 63),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Change Profile Picture',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
              // Details
              SizedBox(height: TSizes.spaceBtwItems / 2),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TProfileMenu(
                title: 'Name',
                value: 'Waqas Anjum',
                onPressed: () {},
              ),

              TProfileMenu(
                title: 'Email',
                value: 'Waqasanjum8541@gmail.com',
                onPressed: () {},
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),
              TProfileMenu(
                title: 'USer ID',
                icon: Icons.copy,
                value: '0259451',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Email',
                value: 'Waqasanjum8541@gmail.com',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Phone Number',
                value: '+92301 1709306',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              TProfileMenu(
                title: 'Date of birth',
                value: '01 January 1998',
                onPressed: () {},
              ),
              Divider(),
              SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}
