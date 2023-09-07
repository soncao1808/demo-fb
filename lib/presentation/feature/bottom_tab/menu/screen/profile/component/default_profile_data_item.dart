import 'package:dartx/dartx.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/material.dart';

class DefaultProfileDataItem extends StatelessWidget {
  const DefaultProfileDataItem({
    super.key,
    required this.title,
    required this.hint,
    required this.data,
  });

  final String title;
  final String hint;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: AppTextStyles.labelRegular14.copyWith(
                color: context.colors.label,
              ),
            ),
          ),
          const SizedBox(width: 4.0),
          Expanded(
            flex: 2,
            child: data.isNotNullOrBlank
                ? Text(
                    data,
                    style: AppTextStyles.labelRegular14.copyWith(
                      color: context.colors.label,
                    ),
                  )
                : Text(
                    hint,
                    style: AppTextStyles.labelRegular14.copyWith(
                      color: context.colors.mistyQuartz,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
