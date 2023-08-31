import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_images.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';

class ItemNotification extends StatelessWidget {
  final Function onPress;
  const ItemNotification({
    super.key,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12.0),
        color: context.colors.backgroundSecondary,
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Hanah Food',
                          style: AppTextStyles.labelBold14
                              .copyWith(color: context.colors.label),
                        ),
                        TextSpan(
                          text:
                              ' đã bình luận vào bài đã bình luận vào bài đã bình luận vào bài đã bình luận vào bài đã bình luận vào bài đã bình luận vào bài ',
                          style: AppTextStyles.labelRegular14.copyWith(
                              color: context.colors.label, height: 1.50),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '5 phút',
                    style: AppTextStyles.labelRegular14
                        .copyWith(color: context.colors.label, height: 1.50),
                    maxLines: 1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
