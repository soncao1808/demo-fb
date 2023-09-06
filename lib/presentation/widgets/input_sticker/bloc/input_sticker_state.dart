import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_sticker_state.freezed.dart';

@freezed
class InputStickerState with _$InputStickerState {
  factory InputStickerState({
    required List<List<String>> stickers,
    required List<List<String>> gifs,
  }) = _InputStickerState;

  const InputStickerState._();

  factory InputStickerState.initial() => InputStickerState(
        stickers: [],
        gifs: [],
      );
}
