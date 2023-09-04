import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/bloc/search_post_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/bloc/search_post_state.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class ItemUser extends StatefulWidget {
  final User item;
  const ItemUser({
    super.key,
    required this.item,
  });

  @override
  State<ItemUser> createState() => _ItemUserState();
}

class _ItemUserState extends State<ItemUser> {
  final SearchPostPresenter _searchPostPresenter =
      injector.get<SearchPostPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<SearchPostPresenter, SearchPostState>(
        bloc: _searchPostPresenter,
        listenWhen: (SearchPostState previous, SearchPostState current) =>
            (previous.status != current.status),
        listener: (BuildContext context, SearchPostState state) {},
        builder: (BuildContext context, SearchPostState state) {
          return Container(
            margin: const EdgeInsets.only(top: 12),
            color: context.colors.backgroundWhite,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Avatar(
                    url: widget.item.avatar ?? '',
                    circular: 50,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.item.name ?? '',
                          style: AppTextStyles.labelBold16,
                        ),
                        const SizedBox(height: 4),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: '50 người theo dõi',
                                style: AppTextStyles.labelBold14
                                    .copyWith(color: context.colors.label),
                              ),
                              TextSpan(
                                text: '100 đang theo dõi',
                                style: AppTextStyles.labelRegular14.copyWith(
                                  color: context.colors.label,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Có Hanah + 1 người nữa đang theo dõi',
                          style: AppTextStyles.labelMedium16,
                        ),
                        const SizedBox(height: 10),
                        PrimaryButton(
                          title:
                              AppLocalizations.of(context)!.text_common_follow,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
}
