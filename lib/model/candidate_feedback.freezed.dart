// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'candidate_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CandidateFeedback _$CandidateFeedbackFromJson(Map<String, dynamic> json) {
  return _CandidateFeedback.fromJson(json);
}

/// @nodoc
mixin _$CandidateFeedback {
  Candidate get candidate => throw _privateConstructorUsedError;
  String get hiringDecision => throw _privateConstructorUsedError;
  String get textualFeedback => throw _privateConstructorUsedError;
  List<CandidateFeedbackContent> get content =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandidateFeedbackCopyWith<CandidateFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateFeedbackCopyWith<$Res> {
  factory $CandidateFeedbackCopyWith(
          CandidateFeedback value, $Res Function(CandidateFeedback) then) =
      _$CandidateFeedbackCopyWithImpl<$Res>;
  $Res call(
      {Candidate candidate,
      String hiringDecision,
      String textualFeedback,
      List<CandidateFeedbackContent> content});

  $CandidateCopyWith<$Res> get candidate;
}

/// @nodoc
class _$CandidateFeedbackCopyWithImpl<$Res>
    implements $CandidateFeedbackCopyWith<$Res> {
  _$CandidateFeedbackCopyWithImpl(this._value, this._then);

  final CandidateFeedback _value;
  // ignore: unused_field
  final $Res Function(CandidateFeedback) _then;

  @override
  $Res call({
    Object? candidate = freezed,
    Object? hiringDecision = freezed,
    Object? textualFeedback = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      candidate: candidate == freezed
          ? _value.candidate
          : candidate // ignore: cast_nullable_to_non_nullable
              as Candidate,
      hiringDecision: hiringDecision == freezed
          ? _value.hiringDecision
          : hiringDecision // ignore: cast_nullable_to_non_nullable
              as String,
      textualFeedback: textualFeedback == freezed
          ? _value.textualFeedback
          : textualFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<CandidateFeedbackContent>,
    ));
  }

  @override
  $CandidateCopyWith<$Res> get candidate {
    return $CandidateCopyWith<$Res>(_value.candidate, (value) {
      return _then(_value.copyWith(candidate: value));
    });
  }
}

/// @nodoc
abstract class _$$_CandidateFeedbackCopyWith<$Res>
    implements $CandidateFeedbackCopyWith<$Res> {
  factory _$$_CandidateFeedbackCopyWith(_$_CandidateFeedback value,
          $Res Function(_$_CandidateFeedback) then) =
      __$$_CandidateFeedbackCopyWithImpl<$Res>;
  @override
  $Res call(
      {Candidate candidate,
      String hiringDecision,
      String textualFeedback,
      List<CandidateFeedbackContent> content});

  @override
  $CandidateCopyWith<$Res> get candidate;
}

/// @nodoc
class __$$_CandidateFeedbackCopyWithImpl<$Res>
    extends _$CandidateFeedbackCopyWithImpl<$Res>
    implements _$$_CandidateFeedbackCopyWith<$Res> {
  __$$_CandidateFeedbackCopyWithImpl(
      _$_CandidateFeedback _value, $Res Function(_$_CandidateFeedback) _then)
      : super(_value, (v) => _then(v as _$_CandidateFeedback));

  @override
  _$_CandidateFeedback get _value => super._value as _$_CandidateFeedback;

  @override
  $Res call({
    Object? candidate = freezed,
    Object? hiringDecision = freezed,
    Object? textualFeedback = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_CandidateFeedback(
      candidate: candidate == freezed
          ? _value.candidate
          : candidate // ignore: cast_nullable_to_non_nullable
              as Candidate,
      hiringDecision: hiringDecision == freezed
          ? _value.hiringDecision
          : hiringDecision // ignore: cast_nullable_to_non_nullable
              as String,
      textualFeedback: textualFeedback == freezed
          ? _value.textualFeedback
          : textualFeedback // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<CandidateFeedbackContent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CandidateFeedback implements _CandidateFeedback {
  const _$_CandidateFeedback(
      {required this.candidate,
      required this.hiringDecision,
      required this.textualFeedback,
      required final List<CandidateFeedbackContent> content})
      : _content = content;

  factory _$_CandidateFeedback.fromJson(Map<String, dynamic> json) =>
      _$$_CandidateFeedbackFromJson(json);

  @override
  final Candidate candidate;
  @override
  final String hiringDecision;
  @override
  final String textualFeedback;
  final List<CandidateFeedbackContent> _content;
  @override
  List<CandidateFeedbackContent> get content {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  String toString() {
    return 'CandidateFeedback(candidate: $candidate, hiringDecision: $hiringDecision, textualFeedback: $textualFeedback, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CandidateFeedback &&
            const DeepCollectionEquality().equals(other.candidate, candidate) &&
            const DeepCollectionEquality()
                .equals(other.hiringDecision, hiringDecision) &&
            const DeepCollectionEquality()
                .equals(other.textualFeedback, textualFeedback) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(candidate),
      const DeepCollectionEquality().hash(hiringDecision),
      const DeepCollectionEquality().hash(textualFeedback),
      const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  _$$_CandidateFeedbackCopyWith<_$_CandidateFeedback> get copyWith =>
      __$$_CandidateFeedbackCopyWithImpl<_$_CandidateFeedback>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CandidateFeedbackToJson(
      this,
    );
  }
}

abstract class _CandidateFeedback implements CandidateFeedback {
  const factory _CandidateFeedback(
          {required final Candidate candidate,
          required final String hiringDecision,
          required final String textualFeedback,
          required final List<CandidateFeedbackContent> content}) =
      _$_CandidateFeedback;

  factory _CandidateFeedback.fromJson(Map<String, dynamic> json) =
      _$_CandidateFeedback.fromJson;

  @override
  Candidate get candidate;
  @override
  String get hiringDecision;
  @override
  String get textualFeedback;
  @override
  List<CandidateFeedbackContent> get content;
  @override
  @JsonKey(ignore: true)
  _$$_CandidateFeedbackCopyWith<_$_CandidateFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}
