import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jots_demo/jots_router.dart';
import 'package:jots_demo/model/jots_rich_text.dart';
import 'package:jots_demo/ui/base/base_view.dart';
import 'package:jots_demo/ui/home/home_viewmodel.dart';
import 'package:jots_demo/ui/widgets/candidate_list_item.dart';
import 'package:jots_demo/utils/date_utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: _buildTextSpansFromContent(context, viewModel.headerContent),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.close,
                          size: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  child: Text(
                    'All the candidates were pretty nice, we started with an introduction of Jots, then ew all presented ourselves, and the candidates got to ask questions. The session went pretty well.',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      top: 8.0,
                      right: 16.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Expanded(
                          flex: 1,
                          child: Text(
                            'Dev Candidate',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              if (index < viewModel.data.length) {
                                return CandidateListItem(data: viewModel.data[index]);
                              }
                              return _buildNewCandidateListItem();
                            },
                            itemCount: viewModel.data.length + 1,
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.0,
                        right: 16.0,
                      ),
                      child: Icon(
                        Icons.chat_bubble,
                        size: 18.0,
                      ),
                    ),
                    Text(
                      'Feedback',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' · Type',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.0,
                        right: 16.0,
                      ),
                      child: Icon(
                        Icons.account_circle_rounded,
                        size: 18.0,
                      ),
                    ),
                    Text(
                      'Jots (Private)',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
        );
      },
      viewModel: HomeViewModel(),
    );
  }

  Widget _buildNewCandidateListItem() {
    return Row(
      children: [
        Container(
          width: 4.0,
          height: 4.0,
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 6.0,
          ),
        ),
        const Expanded(
          child: Text(
            'new dev candidate',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }

  List<TextSpan> _buildTextSpansFromContent(BuildContext context, List<JotsRichText> content) {
    return content.map((richText) {
      if (richText is LinkableCandidateJotsRichText) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.of(context).pushNamed('${JotsRoutes.candidate}${richText.candidate.name}');
            },
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
          text: richText.caption,
        );
      }
      if (richText is LinkableDateJotsRichText) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.of(context).pushNamed('${JotsRoutes.date}${richText.date.toIso8601String()}');
            },
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
          text: JotsDateUtils.fullDateCaption(richText.date),
        );
      }
      if (richText is LinkableEventJotsRichText) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.of(context).pushNamed('${JotsRoutes.event}${richText.event}');
            },
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
          text: richText.caption,
        );
      }
      if (richText is LinkableLocationJotsRichText) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.of(context).pushNamed('${JotsRoutes.location}${richText.location}');
            },
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
          text: richText.caption,
        );
      }
      if (richText is LinkableTeamJotsRichText) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.of(context).pushNamed('${JotsRoutes.team}${richText.team}');
            },
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
          text: richText.caption,
        );
      }
      if (richText is LinkableTechnologyJotsRichText) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.of(context).pushNamed('${JotsRoutes.technology}${richText.technology}');
            },
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
          text: richText.caption,
        );
      }
      if (richText is LinkableTopicJotsRichText) {
        return TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.of(context).pushNamed('${JotsRoutes.topic}${richText.topic}');
            },
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
          text: richText.caption,
        );
      }
      return TextSpan(
        text: richText.caption,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      );
    }).toList();
  }
}
