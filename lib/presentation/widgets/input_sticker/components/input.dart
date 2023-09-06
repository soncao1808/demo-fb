import 'package:fbapp/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Input extends StatefulWidget {
  final TextEditingController controller;
  final Function onPressEmoji;
  final Function onTapInput;
  final Function onPressCamera;
  final Function onPressSend;

  const Input({
    super.key,
    required this.onPressEmoji,
    required this.onTapInput,
    required this.controller,
    required this.onPressCamera,
    required this.onPressSend,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 66.0,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: context.colors.background,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: widget.controller,
                      style: TextStyle(
                          fontSize: 16.0, color: context.colors.title),
                      autocorrect: false,
                      enableSuggestions: false,
                      autofocus: false,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText:
                            AppLocalizations.of(context)!.text_common_enter,
                        filled: true,
                        fillColor: context.colors.background,
                        contentPadding: const EdgeInsets.only(
                            left: 16.0, bottom: 8.0, top: 8.0, right: 16.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onTap: () {
                        widget.onTapInput();
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      widget.onPressEmoji();
                    },
                    icon: Icon(
                      Icons.emoji_emotions_outlined,
                      color: context.colors.textPrimary,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      widget.onPressCamera();
                    },
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: context.colors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {
                widget.onPressSend();
              },
              icon: Icon(
                Icons.send,
                color: context.colors.backgroundPrimary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
