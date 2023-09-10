import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:photo_view/photo_view.dart';

class CustomPhotoView extends StatelessWidget {
  const CustomPhotoView({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigationEventsHelper(
          HeroPhotoViewRouteWrapper(
            imageProvider: NetworkImage(
              url,
            ),
          ),
        );
      },
      child: Hero(
        tag: "someTag",
        child: Image.network(
          url,
          width: 350.0,
          loadingBuilder: (_, child, chunk) =>
              chunk != null ? const Text("loading") : child,
        ),
      ),
    );
  }
}

class HeroPhotoViewRouteWrapper extends StatelessWidget {
  const HeroPhotoViewRouteWrapper({
    super.key,
    required this.imageProvider,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
  });

  final ImageProvider imageProvider;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;

  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundPrimary,
      label: AppLocalizations.of(context)!.text_login_title,
      labelStyle: TextStyle(color: context.colors.labelSecondary),
      brightness: Brightness.dark,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      body: Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          children: [
            PhotoView(
              imageProvider: imageProvider,
              backgroundDecoration: backgroundDecoration,
              minScale: minScale,
              maxScale: maxScale,
              heroAttributes: const PhotoViewHeroAttributes(tag: "someTag"),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                margin: const EdgeInsets.all(16.0),
                width: 24.0,
                height: 24.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    AppIcons.icChevronLeftSvg,
                    color: context.colors.backgroundWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
