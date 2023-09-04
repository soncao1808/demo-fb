import 'package:comment_tree/comment_tree.dart';
import 'package:fbapp/core/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommentPostDetail extends StatelessWidget {
  const CommentPostDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: CommentTreeWidget<Comment, Comment>(
        Comment(
            avatar: 'null',
            userName: 'null',
            content: 'felangel made felangel/cubit_and_beyond public '),
        [
          Comment(
              avatar: 'null',
              userName: 'null',
              content: 'A Dart template generator which helps teams'),
          Comment(
              avatar: 'null',
              userName: 'null',
              content:
                  'A Dart template generator which helps teams generator which helps teams generator which helps teams'),
          Comment(
              avatar: 'null',
              userName: 'null',
              content: 'A Dart template generator which helps teams'),
          Comment(
            avatar: 'null',
            userName: 'null',
            content:
                'A Dart template generator which helps teams generator which helps teams ',
          ),
        ],
        treeThemeData: const TreeThemeData(lineColor: Colors.white),
        avatarRoot: (context, data) => const PreferredSize(
          preferredSize: Size.fromRadius(18),
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage(AppImages.eventImageTest),
          ),
        ),
        avatarChild: (context, data) => const PreferredSize(
          preferredSize: Size.fromRadius(12),
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage(AppImages.eventImageTest),
          ),
        ),
        contentChild: (context, data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Test reply',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${data.content}',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w300, color: Colors.black),
                    ),
                  ],
                ),
              ),
              DefaultTextStyle(
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.grey[700], fontWeight: FontWeight.bold),
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Text(AppLocalizations.of(context)!.text_common_like),
                      const SizedBox(
                        width: 24,
                      ),
                      Text(AppLocalizations.of(context)!.text_common_reply),
                    ],
                  ),
                ),
              )
            ],
          );
        },
        contentRoot: (context, data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Test',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${data.content}',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w300, color: Colors.black),
                    ),
                  ],
                ),
              ),
              DefaultTextStyle(
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.grey[700], fontWeight: FontWeight.bold),
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 8,
                      ),
                      Text('Like'),
                      SizedBox(
                        width: 24,
                      ),
                      Text('Reply'),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
