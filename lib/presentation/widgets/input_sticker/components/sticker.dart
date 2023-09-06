import 'package:cached_network_image/cached_network_image.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:flutter/material.dart';

class Sticker extends StatelessWidget {
  final List<List<String>> stickers;
  final Function onSelectSticker;

  const Sticker({
    super.key,
    required this.stickers,
    required this.onSelectSticker,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size.width / 5 - 10;
    return Container(
      height: 250,
      color: context.colors.backgroundWhite,
      child: CustomList(
        padding: EdgeInsets.zero,
        page: 1,
        totalPage: 5,
        data: stickers,
        item: (int index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...stickers[index].map(
              (e) => GestureDetector(
                child: Container(
                  width: size,
                  height: size,
                  padding: const EdgeInsets.all(8),
                  child: CachedNetworkImage(
                    imageUrl: e,
                    placeholder: (context, url) => Image.asset(
                      AppIcons.icAvatar,
                      width: 40.0,
                      height: 40.0,
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    width: size,
                    height: size,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
