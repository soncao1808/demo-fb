import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/utilities/extensions/extensions.dart';
import 'package:fbapp/utilities/helpers/image_cached/image_cached.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageViewPage extends BasePage {
  const ImageViewPage({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  State<ImageViewPage> createState() => _ImageViewPageState();
}

class _ImageViewPageState extends BasePageState<ImageViewPage> {
  final _transformationController = TransformationController();
  late TapDownDetails _doubleTapDetails;

  @override
  Widget buildBody(BuildContext context) {
    return BaseContainer(
      backgroundColor: context.colors.black,
      backgroundColorAppBar: context.colors.black,
      body: Stack(
        children: [
          GestureDetector(
            onDoubleTapDown: (d) => _doubleTapDetails = d,
            onDoubleTap: _handleDoubleTap,
            child: InteractiveViewer(
              minScale: 1,
              transformationController: _transformationController,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: (widget.image.isNotNullOrBlank)
                    ? ImageCached(
                        imageUrl: widget.image,
                        fit: BoxFit.fitWidth,
                      )
                    : const SizedBox(),
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

  void _handleDoubleTap() {
    if (_transformationController.value != Matrix4.identity()) {
      _transformationController.value = Matrix4.identity();
    } else {
      final position = _doubleTapDetails.localPosition;
      _transformationController.value = Matrix4.identity()
        ..translate(-position.dx, -position.dy)
        ..scale(2.0);
    }
  }
}
