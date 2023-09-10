/* P-01 create post */
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/components/expandable_content.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/components/persister_header.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/components/top_action.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/create_post_presenter.dart';
import 'bloc/create_post_state.dart';
import 'components/media.dart';
import 'components/persister_footer.dart';

class CreatePostPage extends BasePage {
  const CreatePostPage({
    super.key,
  });

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends BasePageState<CreatePostPage> {
  final CreatePostPresenter _createPostPresenter =
      injector.get<CreatePostPresenter>();
  bool isExtend = false;

  @override
  void initState() {
    super.initState();
    _createPostPresenter.init();
  }

  @override
  void dispose() {
    _createPostPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundWhite,
      label: AppLocalizations.of(context)!.text_create_post_title,
      isBorderBottom: true,
      labelStyle: TextStyle(
        color: context.colors.black,
      ),
      isCenterTitle: true,
      customIcBack: Icon(
        Icons.close,
        color: context.colors.black,
      ),
      actions: <Widget>[
        GestureDetector(
          child: Text(
            AppLocalizations.of(context)!.text_create_post_post,
            style: AppTextStyles.labelMedium16.copyWith(
              color: context.colors.textPrimary,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<CreatePostPresenter, CreatePostState>(
        bloc: _createPostPresenter,
        listenWhen: (CreatePostState previous, CreatePostState current) =>
            previous.status != current.status,
        listener: (BuildContext context, CreatePostState state) {},
        builder: (BuildContext context, CreatePostState state) {
          final padding = MediaQuery.of(context).padding;

          return ExpandableBottomSheet(
            background: BaseContainer(
              backgroundColor: context.colors.backgroundWhite,
              hasBackgroundImage: false,
              body: Column(
                children: [
                  const TopAction(),
                  TextField(
                    minLines: 15,
                    maxLines: 15,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: AppLocalizations.of(context)!
                          .text_create_post_placeholder,
                      hintStyle: AppTextStyles.labelRegular16.copyWith(
                          color: context.colors.mistyQuartz, height: 0.6),
                      isDense: true,
                      contentPadding: const EdgeInsets.all(12.0),
                    ),
                  ),
                  const Media(),
                ],
              ),
            ),
            persistentHeader: const PersisterHeader(),
            expandableContent: const ExpandableContent(),
            persistentFooter: isExtend
                ? Container(
                    height: padding.bottom,
                  )
                : const PersisterFooter(),
            onIsExtendedCallback: () {
              setState(() {
                isExtend = true;
              });
            },
            onIsContractedCallback: () {
              setState(() {
                isExtend = false;
              });
            },
          );
        },
      );
}
