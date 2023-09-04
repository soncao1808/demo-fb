import 'package:dartx/dartx.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/bloc/search_post_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/bloc/search_post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class ListTab extends StatefulWidget {
  const ListTab({
    super.key,
  });

  @override
  State<ListTab> createState() => _ListTabState();
}

class _ListTabState extends State<ListTab> {
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
          final data = [
            AppLocalizations.of(context)!.text_common_post,
            AppLocalizations.of(context)!.text_common_every_body
          ];

          return Container(
            margin: const EdgeInsets.only(top: 12),
            color: context.colors.backgroundWhite,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...data.map(
                      (e) => Container(
                        margin: data[0] == e
                            ? EdgeInsets.zero
                            : const EdgeInsets.only(left: 16),
                        child: GestureDetector(
                          onTap: () {
                            int findIndex =
                                data.indexWhere((element) => element == e);
                            _searchPostPresenter.setTabSelect(findIndex);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: data[state.tabSelect] == e
                                  ? context.colors.backgroundThirdary
                                  : context.colors.cloudGray,
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 60,
                            ),
                            child: Text(e, style: AppTextStyles.labelBold16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
}
