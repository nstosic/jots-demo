import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jots_demo/model/candidate.dart';
import 'package:jots_demo/model/candidate_feedback_content.dart';

part 'candidate_feedback.freezed.dart';
part 'candidate_feedback.g.dart';

@freezed
class CandidateFeedback with _$CandidateFeedback {
  const factory CandidateFeedback({
    required Candidate candidate,
    required String hiringDecision,
    required String textualFeedback,
    required List<CandidateFeedbackContent> content,
  }) = _CandidateFeedback;

  factory CandidateFeedback.fromJson(Map<String, dynamic> json) => _$CandidateFeedbackFromJson(json);
}
