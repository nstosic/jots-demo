import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jots_demo/model/action_item_icons.dart';
import 'package:jots_demo/model/jots_rich_text.dart';
import 'package:jots_demo/model/jots_rich_text_converter.dart';

part 'candidate_feedback_content.freezed.dart';
part 'candidate_feedback_content.g.dart';

@freezed
class CandidateFeedbackContent with _$CandidateFeedbackContent {
  const factory CandidateFeedbackContent({
    @Default(ActionItemIcons.list) ActionItemIcons icon,
    @JotsRichTextConverter() required List<JotsRichText> richText,
  }) = _CandidateFeedbackContent;

  factory CandidateFeedbackContent.fromJson(Map<String, dynamic> json) => _$CandidateFeedbackContentFromJson(json);
}
