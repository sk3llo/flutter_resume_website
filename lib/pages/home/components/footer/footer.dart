import 'package:flutter/material.dart';
import 'package:flutter_resume_website/pages/home/components/footer/components/components.dart';
import 'package:flutter_resume_website/utils/app_images.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: SizedBox(
        height: 120,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Positioned(
              right: 0.0,
              child: FooterLogo(
                logoAsset: AppImages.gitLogo,
              ),
            ),
            Positioned(
              right: 70.0,
              child: FooterLogo(
                logoAsset: AppImages.linkeinLogo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
