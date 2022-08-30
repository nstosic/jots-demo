// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidate_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CandidateFeedback _$$_CandidateFeedbackFromJson(Map<String, dynamic> json) =>
    _$_CandidateFeedback(
      candidate: Candidate.fromJson(json['candidate'] as Map<String, dynamic>),
      hiringDecision: json['hiringDecision'] as String,
      textualFeedback: json['textualFeedback'] as String,
      content: (json['content'] as List<dynamic>)
          .map((e) =>
              CandidateFeedbackContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CandidateFeedbackToJson(
        _$_CandidateFeedback instance) =>
    <String, dynamic>{
      'candidate': instance.candidate,
      'hiringDecision': instance.hiringDecision,
      'textualFeedback': instance.textualFeedback,
      'content': instance.content,
    };
