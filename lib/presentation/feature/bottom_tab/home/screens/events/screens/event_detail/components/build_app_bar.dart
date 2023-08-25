import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildEventDetailAppBar extends StatelessWidget {
  const BuildEventDetailAppBar({
    super.key,
  });

  Widget leading(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 32,
        height: 32,
        margin: const EdgeInsets.symmetric(vertical: 16.0,),
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: context.colors.black.withAlpha(80),
          borderRadius: BorderRadius.circular(200)
        ),
        child: SvgPicture.asset(AppIcons.icChevronLeftSvg,
            color: context.colors.labelSecondary),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      floating: true,
      pinned: true,
      snap: true,
      backgroundColor: context.colors.backgroundPrimary,
      automaticallyImplyLeading: false,
      title: leading(context),
      flexibleSpace: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              AppImages.eventDetailImageTest,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      context.colors.background,
                    ],
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
