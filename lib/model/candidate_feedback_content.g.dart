// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate_feedback_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CandidateFeedbackContent _$$_CandidateFeedbackContentFromJson(
        Map<String, dynamic> json) =>
    _$_CandidateFeedbackContent(
      icon: $enumDecodeNullable(_$ActionItemIconsEnumMap, json['icon']) ??
          ActionItemIcons.list,
      richText: (json['richText'] as List<dynamic>)
          .map((e) =>
              const JotsRichTextConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CandidateFeedbackContentToJson(
        _$_CandidateFeedbackContent instance) =>
    <String, dynamic>{
      'icon': _$ActionItemIconsEnumMap[instance.icon]!,
      'richText':
          instance.richText.map(const JotsRichTextConverter().toJson).toList(),
    };

const _$ActionItemIconsEnumMap = {
  ActionItemIcons.heart: 'heart',
  ActionItemIcons.list: 'list',
};
