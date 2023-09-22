import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/dimens.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          _background(),
          _buildContent(),
          _buildTitle(),
          _buildTotalCard(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22).copyWith(bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 20),
              children: [
                Image.asset(
                  AppImages.imgClassic,
                  width: 160.dp,
                  height: 160.dp,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Soft",
                    style: AppTextStyle.common(
                      30,
                      FontWeight.w600,
                      AppColors.black,
                    ),
                  ),
                ),
                space(h: 12.dp),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20.dp),
                  child: Text(
                    "Hi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.Hi.",
                    style: AppTextStyle.common(
                      15,
                      FontWeight.w600,
                      AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildButtonAddWithMyDare(),
          space(h: 18.dp),
          _buildButtonPlay(),
        ],
      ),
    );
  }

  Widget _buildButtonAddWithMyDare() {
    return Container(
      width: double.infinity,
      height: 50.dp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.bgColor,
      ),
    );
  }

  Widget _buildButtonPlay() {
    return Container(
      width: double.infinity,
      height: 50.dp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            AppColors.sunshade,
            AppColors.coral,
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      width: 120.dp,
      height: 40.dp,
      decoration: const BoxDecoration(
        color: AppColors.sunshade,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), bottomRight: Radius.circular(48)),
      ),
    );
  }

  Widget _buildTotalCard() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 120.dp,
        height: 40.dp,
        decoration: const BoxDecoration(
          color: AppColors.sunshade,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(48), bottomRight: Radius.circular(24)),
        ),
      ),
    );
  }

  Widget _background() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(4.dp),
      decoration: BoxDecoration(
        color: AppColors.sunshade,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}
