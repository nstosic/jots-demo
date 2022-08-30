import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jots_demo/model/jots_rich_text.dart';

class JotsRichTextConverter extends JsonConverter<JotsRichText, Map<String, dynamic>> {
  const JotsRichTextConverter();

  @override
  JotsRichText fromJson(Map<String, dynamic> json) {
    if (json['candidate'] != null) {
    } else if (json['date'] != null) {
    } else if (json['technology'] != null) {}
    return PlainJotsRichText(caption: json['caption']);
  }

  @override
  Map<String, dynamic> toJson(JotsRichText object) {
    final json = <String, dynamic>{
      'caption': object.caption,
    };
    if (object is LinkableCandidateJotsRichText) {
      json['candidate'] = object.candidate.toJson();
    } else if (object is LinkableDateJotsRichText) {
      json['date'] = object.date.toIso8601String();
    } else if (object is LinkableTechnologyJotsRichText) {
      json['technology'] = object.technology;
    }
    return json;
  }
}
