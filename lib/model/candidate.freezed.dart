// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'candidate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Candidate _$CandidateFromJson(Map<String, dynamic> json) {
  return _Candidate.fromJson(json);
}

/// @nodoc
mixin _$Candidate {
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandidateCopyWith<Candidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateCopyWith<$Res> {
  factory $CandidateCopyWith(Candidate value, $Res Function(Candidate) then) =
      _$CandidateCopyWithImpl<$Res>;
  $Res call({String name, String phoneNumber});
}

/// @nodoc
class _$CandidateCopyWithImpl<$Res> implements $CandidateCopyWith<$Res> {
  _$CandidateCopyWithImpl(this._value, this._then);

  final Candidate _value;
  // ignore: unused_field
  final $Res Function(Candidate) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CandidateCopyWith<$Res> implements $CandidateCopyWith<$Res> {
  factory _$$_CandidateCopyWith(
          _$_Candidate value, $Res Function(_$_Candidate) then) =
      __$$_CandidateCopyWithImpl<$Res>;
  @override
  $Res call({String name, String phoneNumber});
}

/// @nodoc
class __$$_CandidateCopyWithImpl<$Res> extends _$CandidateCopyWithImpl<$Res>
    implements _$$_CandidateCopyWith<$Res> {
  __$$_CandidateCopyWithImpl(
      _$_Candidate _value, $Res Function(_$_Candidate) _then)
      : super(_value, (v) => _then(v as _$_Candidate));

  @override
  _$_Candidate get _value => super._value as _$_Candidate;

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_Candidate(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Candidate implements _Candidate {
  const _$_Candidate({required this.name, required this.phoneNumber});

  factory _$_Candidate.fromJson(Map<String, dynamic> json) =>
      _$$_CandidateFromJson(json);

  @override
  final String name;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'Candidate(name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Candidate &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_CandidateCopyWith<_$_Candidate> get copyWith =>
      __$$_CandidateCopyWithImpl<_$_Candidate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CandidateToJson(
      this,
    );
  }
}

abstract class _Candidate implements Candidate {
  const factory _Candidate(
      {required final String name,
      required final String phoneNumber}) = _$_Candidate;

  factory _Candidate.fromJson(Map<String, dynamic> json) =
      _$_Candidate.fromJson;

  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_CandidateCopyWith<_$_Candidate> get copyWith =>
      throw _privateConstructorUsedError;
}
