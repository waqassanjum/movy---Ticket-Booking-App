import 'package:flutter/material.dart';
import 'package:movie_ticket_booking_app/utils/constants/colors.dart';
import 'package:movie_ticket_booking_app/utils/constants/sizes.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Icons.search,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
    this.textColor,
    this.iconColor,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final Color? textColor, iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(13),
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: showBorder ? Border.all(color: TColors.primary) : null,
        ),
        child: Row(
          children: [
            SizedBox(width: TSizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: TColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
