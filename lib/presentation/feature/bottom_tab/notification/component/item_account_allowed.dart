import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_images.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class ItemAccounAllowed extends StatelessWidget {
  final Function onPress;
  const ItemAccounAllowed({
    super.key,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        margin: const EdgeInsets.only(bottom: 1.0),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12.0),
        color: context.colors.backgroundSecondary,
        child: Row(children: <Widget>[
          Expanded(
              child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: 68.0,
                            height: 68.0,
                            color: context.colors.backgroundSecondary,
                            child: const Avatar(
                                url: '', iconDefault: AppImages.imageSplash),
                          ),
                          // if (state.isStatusLoadingUploadImage)
                          //   Positioned(
                          //     left: 0,
                          //     top: 0,
                          //     child: SizedBox(
                          //       width: 68.0,
                          //       height: 68.0,
                          //       child: CircularProgressIndicator(
                          //         strokeWidth: 2.0,
                          //         color: context.colors.textPrimary,
                          //       ),
                          //     ),
                          //   )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 7.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hanah Food ',
                    style: AppTextStyles.labelBold14.copyWith(
                      color: context.colors.label,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    '500 người theo dõi',
                    style: AppTextStyles.labelRegular14
                        .copyWith(color: context.colors.label, height: 2.0),
                    maxLines: 1,
                  ),
                ],
              )
            ],
          )),
          PrimaryButton(
            title: 'Theo dõi',
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          )
        ]),
      ),
    );
  }
}
