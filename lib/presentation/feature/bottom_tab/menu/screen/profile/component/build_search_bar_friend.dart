import 'dart:async';

import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/presentation/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BuildSearchBarFriend extends StatefulWidget {
  const BuildSearchBarFriend({
    super.key,
    required this.value,
    required this.onSearch,
  });

  final String value;
  final Function(String) onSearch;

  @override
  State<BuildSearchBarFriend> createState() => _BuildSearchBarFriendState();
}

class _BuildSearchBarFriendState extends State<BuildSearchBarFriend> {
  Timer? _debounceTimer;
  String searchText = '';

  void handleSearch() {
    if (_debounceTimer?.isActive ?? false) _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 700), () async {
      widget.onSearch(searchText);
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      searchText = widget.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      color: context.colors.backgroundWhite,
      child: CustomSearchBar(
        hintText: AppLocalizations.of(context)!.text_search,
        haveIcon: true,
        value: searchText,
        onChange: (String text) {
          setState(() {
            searchText = text;
          });
          handleSearch();
        },
        onSummited: (String text) {},
      ),
    );
  }
}
