import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageViewPage extends BasePage {
  const ImageViewPage({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  State<ImageViewPage> createState() => _ImageViewPageState();
}

class _ImageViewPageState extends BasePageState<ImageViewPage> {
  @override
  Widget buildBody(BuildContext context) {
    return BaseContainer(
      backgroundColor: context.colors.black,
      backgroundColorAppBar: context.colors.black,
      body: Stack(
        children: [
          InteractiveViewer(
            minScale: 1,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                AppImages.eventDetailImageTest,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 12.0,
            left: 24.0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SvgPicture.asset(AppIcons.icX),
            ),
          )
        ],
      ),
    );
  }
}
