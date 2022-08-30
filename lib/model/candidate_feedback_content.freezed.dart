// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'candidate_feedback_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CandidateFeedbackContent _$CandidateFeedbackContentFromJson(
    Map<String, dynamic> json) {
  return _CandidateFeedbackContent.fromJson(json);
}

/// @nodoc
mixin _$CandidateFeedbackContent {
  ActionItemIcons get icon => throw _privateConstructorUsedError;
  @JotsRichTextConverter()
  List<JotsRichText> get richText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandidateFeedbackContentCopyWith<CandidateFeedbackContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateFeedbackContentCopyWith<$Res> {
  factory $CandidateFeedbackContentCopyWith(CandidateFeedbackContent value,
          $Res Function(CandidateFeedbackContent) then) =
      _$CandidateFeedbackContentCopyWithImpl<$Res>;
  $Res call(
      {ActionItemIcons icon,
      @JotsRichTextConverter() List<JotsRichText> richText});
}

/// @nodoc
class _$CandidateFeedbackContentCopyWithImpl<$Res>
    implements $CandidateFeedbackContentCopyWith<$Res> {
  _$CandidateFeedbackContentCopyWithImpl(this._value, this._then);

  final CandidateFeedbackContent _value;
  // ignore: unused_field
  final $Res Function(CandidateFeedbackContent) _then;

  @override
  $Res call({
    Object? icon = freezed,
    Object? richText = freezed,
  }) {
    return _then(_value.copyWith(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as ActionItemIcons,
      richText: richText == freezed
          ? _value.richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<JotsRichText>,
    ));
  }
}

/// @nodoc
abstract class _$$_CandidateFeedbackContentCopyWith<$Res>
    implements $CandidateFeedbackContentCopyWith<$Res> {
  factory _$$_CandidateFeedbackContentCopyWith(
          _$_CandidateFeedbackContent value,
          $Res Function(_$_CandidateFeedbackContent) then) =
      __$$_CandidateFeedbackContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {ActionItemIcons icon,
      @JotsRichTextConverter() List<JotsRichText> richText});
}

/// @nodoc
class __$$_CandidateFeedbackContentCopyWithImpl<$Res>
    extends _$CandidateFeedbackContentCopyWithImpl<$Res>
    implements _$$_CandidateFeedbackContentCopyWith<$Res> {
  __$$_CandidateFeedbackContentCopyWithImpl(_$_CandidateFeedbackContent _value,
      $Res Function(_$_CandidateFeedbackContent) _then)
      : super(_value, (v) => _then(v as _$_CandidateFeedbackContent));

  @override
  _$_CandidateFeedbackContent get _value =>
      super._value as _$_CandidateFeedbackContent;

  @override
  $Res call({
    Object? icon = freezed,
    Object? richText = freezed,
  }) {
    return _then(_$_CandidateFeedbackContent(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as ActionItemIcons,
      richText: richText == freezed
          ? _value._richText
          : richText // ignore: cast_nullable_to_non_nullable
              as List<JotsRichText>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CandidateFeedbackContent implements _CandidateFeedbackContent {
  const _$_CandidateFeedbackContent(
      {this.icon = ActionItemIcons.list,
      @JotsRichTextConverter() required final List<JotsRichText> richText})
      : _richText = richText;

  factory _$_CandidateFeedbackContent.fromJson(Map<String, dynamic> json) =>
      _$$_CandidateFeedbackContentFromJson(json);

  @override
  @JsonKey()
  final ActionItemIcons icon;
  final List<JotsRichText> _richText;
  @override
  @JotsRichTextConverter()
  List<JotsRichText> get richText {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_richText);
  }

  @override
  String toString() {
    return 'CandidateFeedbackContent(icon: $icon, richText: $richText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CandidateFeedbackContent &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other._richText, _richText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(_richText));

  @JsonKey(ignore: true)
  @override
  _$$_CandidateFeedbackContentCopyWith<_$_CandidateFeedbackContent>
      get copyWith => __$$_CandidateFeedbackContentCopyWithImpl<
          _$_CandidateFeedbackContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CandidateFeedbackContentToJson(
      this,
    );
  }
}

abstract class _CandidateFeedbackContent implements CandidateFeedbackContent {
  const factory _CandidateFeedbackContent(
          {final ActionItemIcons icon,
          @JotsRichTextConverter()
              required final List<JotsRichText> richText}) =
      _$_CandidateFeedbackContent;

  factory _CandidateFeedbackContent.fromJson(Map<String, dynamic> json) =
      _$_CandidateFeedbackContent.fromJson;

  @override
  ActionItemIcons get icon;
  @override
  @JotsRichTextConverter()
  List<JotsRichText> get richText;
  @override
  @JsonKey(ignore: true)
  _$$_CandidateFeedbackContentCopyWith<_$_CandidateFeedbackContent>
      get copyWith => throw _privateConstructorUsedError;
}
