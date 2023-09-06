import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/widgets/input_sticker/bloc/input_sticker_persenter.dart';
import 'package:fbapp/presentation/widgets/input_sticker/components/emoji.dart';
import 'package:fbapp/presentation/widgets/input_sticker/components/gif.dart';
import 'package:fbapp/presentation/widgets/input_sticker/components/input.dart';
import 'package:fbapp/presentation/widgets/input_sticker/components/list_media_select.dart';
import 'package:fbapp/presentation/widgets/input_sticker/components/list_tab.dart';
import 'package:fbapp/presentation/widgets/input_sticker/components/sticker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:image_picker/image_picker.dart';

import 'bloc/input_sticker_state.dart';

class InputSticker extends StatefulWidget {
  const InputSticker({
    super.key,
  });

  @override
  State<InputSticker> createState() => _InputStickerState();
}

class _InputStickerState extends State<InputSticker> {
  final InputStickerPersenter _inputStickerPersenter =
      injector.get<InputStickerPersenter>();
  final TextEditingController _controller = TextEditingController();
  bool emojiShowing = false;
  int tabSelect = -1;
  List<XFile> listMedia = [];
  final size = 100;

  @override
  void initState() {
    _inputStickerPersenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void hideKeyBoard() {
    FocusScope.of(context).unfocus();
  }

  void openImagePicker() async {
    final ImagePicker picker = ImagePicker();
    try {
      final List<XFile> pickedImage = await picker.pickMultiImage();
      setState(() {
        listMedia = pickedImage;
      });
    } catch (e) {}
  }

  void onDeleteMedia(XFile val) {
    List<XFile> newData =
        listMedia.where((element) => element.name != val.name).toList();
    setState(() {
      listMedia = newData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InputStickerPersenter, InputStickerState>(
      bloc: _inputStickerPersenter,
      listener: (BuildContext context, InputStickerState state) {},
      builder: (BuildContext context, InputStickerState state) {
        return KeyboardVisibilityBuilder(
          builder: (context, visible) {
            return Column(
              children: [
                // const Spacer(),
                ListMediaSelect(
                    listMedia: listMedia, onDeleteMedia: onDeleteMedia),
                Input(
                  controller: _controller,
                  onTapInput: () {
                    setState(() {
                      emojiShowing = false;
                      tabSelect = -1;
                    });
                  },
                  onPressEmoji: () {
                    hideKeyBoard();
                    setState(() {
                      emojiShowing = !emojiShowing;
                      tabSelect = -1;
                    });
                  },
                  onPressCamera: () {
                    openImagePicker();
                  },
                  onPressSend: () {},
                ),
                visible || emojiShowing || tabSelect != -1
                    ? ListTab(
                        tabSelect: tabSelect,
                        setTabSelect: (int val) {
                          hideKeyBoard();
                          setState(() {
                            emojiShowing = false;
                            tabSelect = val;
                          });
                        },
                      )
                    : Container(),
                emojiShowing ? Emoji(controller: _controller) : Container(),
                tabSelect == 0
                    ? Sticker(stickers: state.stickers, onSelectSticker: () {})
                    : Container(),
                tabSelect == 1
                    ? Gif(gifs: state.gifs, onSelectGif: () {})
                    : Container(),
              ],
            );
          },
        );
      },
    );
  }
}
