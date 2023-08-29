import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/language/bloc/language_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/language/bloc/language_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguagePage extends BasePage {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends BasePageState<LanguagePage> {
  final LanguagePresenter _languagePresenter =
      injector.get<LanguagePresenter>();

  @override
  void initState() {
    _languagePresenter.init();
    super.initState();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundSecondary,
      label: AppLocalizations.of(context)!.text_menu_language,
      isCenterTitle: true,
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<LanguagePresenter, LanguageState>(
        bloc: _languagePresenter,
        listener: (BuildContext context, LanguageState state) {},
        builder: (BuildContext context, LanguageState state) {
          return BaseContainer(
            hasBackgroundImage: true,
            backgroundColor: context.colors.background,
            body: const ListLanguage(),
          );
        },
      );
}

class ListLanguage extends StatelessWidget {
  const ListLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(
        height: 28.0,
      ),
      ItemLanguage(title: 'Tiếng việt', onPress: () {}, isLanguage: true)
    ]);
  }
}

class ItemLanguage extends StatelessWidget {
  final String title;
  final Function onPress;
  final bool isLanguage;
  const ItemLanguage({
    super.key,
    required this.title,
    required this.onPress,
    required this.isLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        color: context.colors.backgroundSecondary,
        child: Row(children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: AppTextStyles.labelRegular14.copyWith(
                color: context.colors.label,
              ),
            ),
          ),
          if (isLanguage)
            Image.asset(
              width: 20.0,
              height: 20.0,
              AppIcons.icCheck,
              color: context.colors.gunmetal,
            ),
        ]),
      ),
    );
  }
}
