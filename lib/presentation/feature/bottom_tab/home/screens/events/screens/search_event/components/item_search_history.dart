import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemSearchEventHistory extends StatefulWidget {
  const ItemSearchEventHistory({super.key, required this.history, required this.onTap});

  final String history;
  final Function onTap;

  @override
  State<ItemSearchEventHistory> createState() => _ItemSearchEventHistoryState();
}

class _ItemSearchEventHistoryState extends State<ItemSearchEventHistory> {
  final SearchEventPresenter _searchEventPresenter = injector.get<SearchEventPresenter>();

  @override
  Widget build(BuildContext context) => BlocConsumer<SearchEventPresenter, SearchEventState>(
      bloc: _searchEventPresenter,
      listenWhen: (SearchEventState previous, SearchEventState current) =>
          (previous.searchHistory != current.searchHistory),
      listener: (BuildContext context, SearchEventState state) {},
      builder: (BuildContext context, SearchEventState state) {
        return GestureDetector(
            onTap: () {
              widget.onTap.call();
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.icSearchBar,
                    width: 20.0,
                    height: 20.0,
                    color: context.colors.textPrimary,
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Text(
                      widget.history,
                      style: AppTextStyles.labelRegular14.copyWith(
                        color: context.colors.label,
                      ),
                    ),
                  )
                ],
              ),
            ));
      });
}
