import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ListMediaSelect extends StatelessWidget {
  final List<XFile> listMedia;
  final Function onDeleteMedia;

  const ListMediaSelect({
    super.key,
    required this.listMedia,
    required this.onDeleteMedia,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size.width / 5 - 10;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...listMedia.map(
          (e) => GestureDetector(
            child: Stack(
              children: [
                Container(
                  width: size,
                  height: size,
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    e.path,
                    width: size,
                    height: size,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black87, width: 1.0),
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(1000.0),
                        onTap: () {
                          onDeleteMedia(e);
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.black87,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
