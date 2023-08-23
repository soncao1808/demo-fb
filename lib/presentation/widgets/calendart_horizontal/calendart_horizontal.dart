// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fbapp/utilities/extensions/string_extensions.dart';
import 'package:fbapp/utilities/helpers/timer_helper/timer_helper.dart';

import 'bloc/calendart_horizontal_persenter.dart';
import 'bloc/calendart_horizontal_state.dart';

class CalendarHorizontalCustom extends BasePage {
  const CalendarHorizontalCustom({super.key});

  @override
  State<CalendarHorizontalCustom> createState() =>
      _CalendarHorizontalCustomState();
}

class _CalendarHorizontalCustomState extends State<CalendarHorizontalCustom> {
  final CalendartHorizontalPersenter _calendartHorizontalPersenter =
      injector.get<CalendartHorizontalPersenter>();

  @override
  void dispose() {
    _calendartHorizontalPersenter.clearState();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<CalendartHorizontalPersenter, CalendartHorizontalState>(
        bloc: _calendartHorizontalPersenter,
        listener: (BuildContext context, CalendartHorizontalState state) {},
        builder: (BuildContext context, CalendartHorizontalState state) {
          return Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: AppLocalizations.of(context)!.text_common_done,
                        style: AppTextStyles.labelBold14.copyWith(
                          color: context.colors.label,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                color: context.colors.backgroundSecondary,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        if (!_calendartHorizontalPersenter.isVisibility())
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            child: Container(
                              margin: const EdgeInsets.only(left: 8.0),
                              child: Image.asset(
                                AppIcons.icChevronLeft,
                                width: 20.0,
                                height: 20.0,
                                color: context.colors.label,
                              ),
                            ),
                            onTap: () {
                              _calendartHorizontalPersenter.previewWeek();
                            },
                          ),
                        if (_calendartHorizontalPersenter.isVisibility())
                          const SizedBox(
                            width: 20.0,
                            height: 20.0,
                          ),
                        Text(
                          state.selectedDate.dmy,
                          style: AppTextStyles.labelBold14.copyWith(
                            color: context.colors.label,
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          child: Container(
                            margin: const EdgeInsets.only(right: 8.0),
                            child: Image.asset(
                              AppIcons.icChevronRight,
                              width: 20.0,
                              height: 20.0,
                              color: context.colors.label,
                            ),
                          ),
                          onTap: () {
                            _calendartHorizontalPersenter.nextWeek();
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const CalendarHorizontal(),
                  ],
                ),
              ),
            ],
          );
        },
      );
}

class CalendarHorizontal extends BasePage {
  const CalendarHorizontal({super.key});

  @override
  State<CalendarHorizontal> createState() => _CalendarHorizontalState();
}

class _CalendarHorizontalState extends State<CalendarHorizontal> {
  final CalendartHorizontalPersenter _calendartHorizontalPersenter =
      injector.get<CalendartHorizontalPersenter>();
  bool _buildWhen(CalendartHorizontalState previous,
          CalendartHorizontalState current) =>
      previous.focusDate != current.focusDate;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<CalendartHorizontalPersenter, CalendartHorizontalState>(
        bloc: _calendartHorizontalPersenter,
        buildWhen: _buildWhen,
        builder: (BuildContext context, CalendartHorizontalState state) {
          return SizedBox(
            height: 54.h,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) =>
                  SlideFadeTransition(
                curve: Curves.ease,
                delay: 30 + (30 * index),
                id: "${state.rangeDate[index].day}${state.rangeDate[index].month}${state.rangeDate[index].year}",
                child: ItemDateCalendar(
                  dateTime: state.rangeDate[index],
                ),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 4.0),
              itemCount: state.rangeDate.length,
            ),
          );
        },
      );
}

class ItemDateCalendar extends BasePage {
  final DateTime dateTime;
  const ItemDateCalendar({
    super.key,
    required this.dateTime,
  });

  @override
  State<ItemDateCalendar> createState() => _ItemDateCalendarState();
}

class _ItemDateCalendarState extends State<ItemDateCalendar> {
  final CalendartHorizontalPersenter _calendartHorizontalPersenter =
      injector.get<CalendartHorizontalPersenter>();

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<CalendartHorizontalPersenter, CalendartHorizontalState>(
        bloc: _calendartHorizontalPersenter,
        buildWhen: (CalendartHorizontalState previous,
                CalendartHorizontalState current) =>
            (previous.focusDate != current.focusDate ||
                previous.selectedDate != current.selectedDate),
        builder: (BuildContext context, CalendartHorizontalState state) {
          final double width = MediaQuery.of(context).size.width / 7 - 8;

          final bool isCheckActiveDate =
              widget.dateTime.compareTo(state.selectedDate) == 0;

          final bool isCheckActiveCurrentDate = widget.dateTime
                  .compareTo(DateTime.now().ymd.convertStringToDateLocal) ==
              0;

          return GestureDetector(
            onTap: () {
              _calendartHorizontalPersenter
                  .onSelectDateCalendar(widget.dateTime);
            },
            child: Container(
              width: width,
              padding: EdgeInsets.symmetric(vertical: 8.w),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: isCheckActiveDate
                    ? context.colors.backgroundPrimary
                    : context.colors.backgroundSecondary,
                border: Border.all(
                    color: isCheckActiveDate || isCheckActiveCurrentDate
                        ? context.colors.backgroundPrimary
                        : context.colors.backgroundSecondary),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.dateTime.week,
                    style: !isCheckActiveDate
                        ? AppTextStyles.labelRegular11.copyWith(
                            color: context.colors.textPrimary,
                          )
                        : AppTextStyles.labelRegular11.copyWith(
                            color: context.colors.backgroundSecondary,
                          ),
                    maxLines: 1,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    widget.dateTime.day.toString(),
                    style: !isCheckActiveDate
                        ? DateTime.now().isBefore(widget.dateTime)
                            ? AppTextStyles.labelBold16.copyWith(
                                color: context.colors.label,
                              )
                            : AppTextStyles.labelMedium16.copyWith(
                                color: context.colors.textPrimary,
                              )
                        : AppTextStyles.labelBold16.copyWith(
                            color: context.colors.backgroundSecondary,
                          ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          );
        },
      );
}

class SlideFadeTransition extends StatefulWidget {
  final Widget child;
  final int? delay;
  final String id;
  final Curve? curve;

  const SlideFadeTransition({
    super.key,
    required this.child,
    required this.id,
    this.delay,
    this.curve,
  });

  @override
  SlideFadeTransitionState createState() => SlideFadeTransitionState();
}

class SlideFadeTransitionState extends State<SlideFadeTransition>
    with TickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<Offset> _animOffset;
  bool _disposed = false;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    final CurvedAnimation curve = CurvedAnimation(
        curve: widget.curve != null ? widget.curve! : Curves.decelerate,
        parent: _animController);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.25), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      if (!_disposed) _animController.forward();
    } else {
      _animController.reset();
      Future.delayed(Duration(milliseconds: widget.delay!), () {
        if (!_disposed) _animController.forward();
      });
    }
  }

  @override
  void didUpdateWidget(SlideFadeTransition oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.id != oldWidget.id) {
      _animController.reset();
      Future.delayed(Duration(milliseconds: widget.delay!), () {
        if (!_disposed) _animController.forward();
      });
    }
  }

  @override
  void dispose() {
    _disposed = true;
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animController,
      child: SlideTransition(position: _animOffset, child: widget.child),
    );
  }
}
