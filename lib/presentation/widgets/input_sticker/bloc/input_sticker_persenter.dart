import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'input_sticker_state.dart';

class InputStickerPersenter extends Cubit<InputStickerState> {
  InputStickerPersenter({
    @visibleForTesting InputStickerState? state,
  }) : super(state ?? InputStickerState.initial());

  void init() {
    List<List<String>> stickers = [
      [
        'https://cdn.pixabay.com/photo/2020/06/16/18/05/illustrated-sticker-5306764_1280.png',
        'https://cdn.pixabay.com/photo/2021/03/05/22/44/dinosaur-6072475_1280.png',
        'https://cdn.pixabay.com/photo/2020/06/16/18/05/illustrated-sticker-5306764_1280.png',
        'https://cdn.pixabay.com/photo/2021/03/05/22/44/dinosaur-6072475_1280.png',
        'https://cdn.pixabay.com/photo/2021/03/05/22/44/dinosaur-6072475_1280.png',
      ],
      [
        'https://cdn.pixabay.com/photo/2020/06/16/18/05/illustrated-sticker-5306764_1280.png',
        'https://cdn.pixabay.com/photo/2021/03/05/22/44/dinosaur-6072475_1280.png',
        'https://cdn.pixabay.com/photo/2020/06/16/18/05/illustrated-sticker-5306764_1280.png',
        'https://cdn.pixabay.com/photo/2021/03/05/22/44/dinosaur-6072475_1280.png',
        'https://cdn.pixabay.com/photo/2021/03/05/22/44/dinosaur-6072475_1280.png',
      ],
    ];
    List<List<String>> gifs = [
      [
        'https://cdn.pixabay.com/animation/2023/06/01/08/46/08-46-22-123_512.gif',
        'https://cdn.pixabay.com/animation/2023/02/13/09/42/09-42-58-584_512.gif',
        'https://cdn.pixabay.com/animation/2023/06/01/08/46/08-46-22-123_512.gif',
        'https://cdn.pixabay.com/animation/2023/02/13/09/42/09-42-58-584_512.gif',
      ],
      [
        'https://cdn.pixabay.com/animation/2023/06/01/08/46/08-46-22-123_512.gif',
        'https://cdn.pixabay.com/animation/2023/02/13/09/42/09-42-58-584_512.gif',
        'https://cdn.pixabay.com/animation/2023/06/01/08/46/08-46-22-123_512.gif',
        'https://cdn.pixabay.com/animation/2023/02/13/09/42/09-42-58-584_512.gif',
      ],
    ];
    emit(state.copyWith(stickers: stickers, gifs: gifs));
  }

  void clearState() {
    emit(InputStickerState.initial());
  }
}
