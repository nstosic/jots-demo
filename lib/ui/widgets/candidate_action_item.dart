import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jots_demo/jots_router.dart';
import 'package:jots_demo/model/action_item_icons.dart';
import 'package:jots_demo/model/candidate_feedback_content.dart';
import 'package:jots_demo/model/jots_rich_text.dart';
import 'package:jots_demo/utils/date_utils.dart';

class CandidateActionItem extends StatelessWidget {
  const CandidateActionItem({required this.content, Key? key}) : super(key: key);

  final CandidateFeedbackContent content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300]!,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          content.icon == ActionItemIcons.heart
              ? Icon(
                  Icons.favorite,
                  color: Colors.red[900]!,
                )
              : const Icon(
                  Icons.list,
                  color: Colors.grey,
                ),
          const SizedBox(width: 8.0),
          RichText(
            text: TextSpan(
              children: _buildTextSpansFromContent(context),
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const Spacer(),
          const Text(
            '(new)',
            style: TextStyle(
              color: Colors.green,
              fontSize: 10.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  List<TextSpan> _buildTextSpansFromContent(BuildContext context) {
    return content.richText.map((richText) {
      if (richText is LinkableCandidateJotsRichText) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.of(context).pushNamed('${JotsRoutes.candidate}/${richText.candidate.name}');
            },
          style: const TextStyle(color: Colors.blue),
          text: richText.caption,
        );
      } else if (richText is LinkableDateJotsRichText) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.of(context).pushNamed('${JotsRoutes.date}/${richText.date.toIso8601String()}');
            },
          text: JotsDateUtils.dateCaption(richText.date),
          style: const TextStyle(color: Colors.blue),
        );
      } else if (richText is LinkableTechnologyJotsRichText) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.of(context).pushNamed('${JotsRoutes.technology}/${richText.technology}');
            },
          style: const TextStyle(color: Colors.blue),
          text: richText.caption,
        );
      } else {
        return TextSpan(
          style: const TextStyle(color: Colors.black),
          text: richText.caption,
        );
      }
    }).toList();
  }
}
