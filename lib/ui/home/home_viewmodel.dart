import 'package:jots_demo/model/action_item_icons.dart';
import 'package:jots_demo/model/candidate.dart';
import 'package:jots_demo/model/candidate_feedback.dart';
import 'package:jots_demo/model/candidate_feedback_content.dart';
import 'package:jots_demo/model/jots_rich_text.dart';
import 'package:jots_demo/ui/base/base_viewmodel.dart';

class HomeViewModel extends BaseViewModel {
  final List<CandidateFeedback> data = <CandidateFeedback>[
    CandidateFeedback(
      candidate: const Candidate(
        name: 'Nikki',
        phoneNumber: '+336 XX XX XX XX',
      ),
      hiringDecision: 'Good fit',
      textualFeedback: 'Good candidate, constructive, smart, and listen to others.',
      content: [
        CandidateFeedbackContent(
          icon: ActionItemIcons.heart,
          richText: [
            LinkableCandidateJotsRichText(
              candidate: const Candidate(
                name: 'Nikki',
                phoneNumber: '+336 XX XX XX XX',
              ),
              caption: 'Nikki',
            ),
            PlainJotsRichText(
              caption: ' likes ',
            ),
            LinkableTechnologyJotsRichText(
              caption: 'Flutter',
              technology: 'Flutter',
            ),
          ],
        ),
        CandidateFeedbackContent(
          icon: ActionItemIcons.list,
          richText: [
            PlainJotsRichText(
              caption: 'Send the dev test',
            ),
          ],
        ),
      ],
    ),
    CandidateFeedback(
      candidate: const Candidate(
        name: 'James',
        phoneNumber: '+336 XX XX XX XX',
      ),
      hiringDecision: 'Not a fit',
      textualFeedback: 'He is not interested in doing some Flutter.',
      content: [
        CandidateFeedbackContent(
          icon: ActionItemIcons.list,
          richText: [
            PlainJotsRichText(
              caption: 'Send a negative answer',
            ),
          ],
        ),
      ],
    ),
    CandidateFeedback(
      candidate: const Candidate(
        name: 'Elsa',
        phoneNumber: '+336 XX XX XX XX',
      ),
      hiringDecision: 'Maybe',
      textualFeedback: 'Didn\'t express herself too much, shy?',
      content: [
        CandidateFeedbackContent(
          icon: ActionItemIcons.list,
          richText: [
            PlainJotsRichText(
              caption: 'Reconsider in ',
            ),
            LinkableDateJotsRichText(
              caption: '',
              date: DateTime.now().add(const Duration(days: 2)),
            )
          ],
        ),
      ],
    ),
  ];

  final List<JotsRichText> headerContent = [
    LinkableTopicJotsRichText(
      caption: 'Feedback',
      topic: 'Feedback',
    ),
    PlainJotsRichText(
      caption: ' about ',
    ),
    LinkableEventJotsRichText(
      caption: 'Candidate Group Interview',
      event: 'Candidate Group Interview',
    ),
    PlainJotsRichText(
      caption: ' for the ',
    ),
    LinkableTeamJotsRichText(
      caption: 'Dev team',
      team: 'Dev team',
    ),
    PlainJotsRichText(
      caption: ' with candidates ',
    ),
    LinkableCandidateJotsRichText(
      candidate: const Candidate(
        name: 'Nikki',
        phoneNumber: '+336 XX XX XX XX',
      ),
      caption: 'Nikki',
    ),
    PlainJotsRichText(caption: ', '),
    LinkableCandidateJotsRichText(
      candidate: const Candidate(
        name: 'James',
        phoneNumber: '+336 XX XX XX XX',
      ),
      caption: 'James',
    ),
    PlainJotsRichText(
      caption: ' and ',
    ),
    LinkableCandidateJotsRichText(
      candidate: const Candidate(
        name: 'Elsa',
        phoneNumber: '+336 XX XX XX XX',
      ),
      caption: 'Elsa',
    ),
    PlainJotsRichText(
      caption: ', on',
    ),
    LinkableDateJotsRichText(
      caption: '',
      date: DateTime(2022, 05, 11),
    ),
    PlainJotsRichText(caption: ' at '),
    LinkableLocationJotsRichText(
      caption: 'Jots HQ',
      location: 'Jots HQ',
    ),
    PlainJotsRichText(caption: '.'),
  ];
}
