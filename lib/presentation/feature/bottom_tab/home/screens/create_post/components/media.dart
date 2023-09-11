import 'package:carousel_slider/carousel_slider.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_state.dart';
import 'package:fbapp/presentation/widgets/custom_video1/custom_video1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mime/mime.dart';

class Media extends StatefulWidget {
  const Media({
    super.key,
  });

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  final CreatePostPresenter _createPostPresenter =
      injector.get<CreatePostPresenter>();
  int current = 0;
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreatePostPresenter, CreatePostState>(
      bloc: _createPostPresenter,
      listenWhen: (CreatePostState previous, CreatePostState current) =>
          previous.status != current.status ||
          previous.selectMedias != current.selectMedias,
      listener: (BuildContext context, CreatePostState state) {},
      builder: (BuildContext context, CreatePostState state) {
        final mediaQuery = MediaQuery.of(context);

        return Expanded(
          child: Column(
            children: [
              CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  enlargeFactor: 10,
                  enlargeCenterPage: true,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      current = index;
                    });
                  },
                ),
                items: state.selectMedias.map((e) {
                  return Builder(
                    builder: (BuildContext context) {
                      if (lookupMimeType(e.path)!.contains('video')) {
                        return CustomVideo1(
                            videoUrl:
                                'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
                      }
                      return Image.asset(
                        e.path,
                        width: mediaQuery.size.width,
                        fit: BoxFit.fill,
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: state.selectMedias.map(
                  (item) {
                    return Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 4.0,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: state.selectMedias[current] == item
                            ? context.colors.backgroundPrimary
                            : context.colors.cloudGray,
                      ),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
