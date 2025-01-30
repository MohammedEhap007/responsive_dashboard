import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard_app/utils/images.dart';
import 'package:responsive_dashboard_app/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 220,
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0XFF4EB7F2),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCardBackground),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(
                left: 31,
                right: 45,
                top: 20,
              ),
              title: Text(
                'Name Card',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 27,
              ),
            )
          ],
        ),
      ),
    );
  }
}
