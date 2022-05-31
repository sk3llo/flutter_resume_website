import 'package:flutter/material.dart';
import 'package:flutter_resume_website/features/home/widgets/footer/widgets/widgets.dart';
import 'package:flutter_resume_website/core/utils/app_images.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: SizedBox(
        height: 120,
        child: Stack(
          alignment: Alignment.centerRight,
          children: const [
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
