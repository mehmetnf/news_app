// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopNews _$TopNewsFromJson(Map<String, dynamic> json) {
  return _TopNews.fromJson(json);
}

/// @nodoc
mixin _$TopNews {
  MetaModel? get meta => throw _privateConstructorUsedError;
  List<DataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopNewsCopyWith<TopNews> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopNewsCopyWith<$Res> {
  factory $TopNewsCopyWith(TopNews value, $Res Function(TopNews) then) =
      _$TopNewsCopyWithImpl<$Res, TopNews>;
  @useResult
  $Res call({MetaModel? meta, List<DataModel>? data});

  $MetaModelCopyWith<$Res>? get meta;
}

/// @nodoc
class _$TopNewsCopyWithImpl<$Res, $Val extends TopNews>
    implements $TopNewsCopyWith<$Res> {
  _$TopNewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaModelCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopNewsImplCopyWith<$Res> implements $TopNewsCopyWith<$Res> {
  factory _$$TopNewsImplCopyWith(
          _$TopNewsImpl value, $Res Function(_$TopNewsImpl) then) =
      __$$TopNewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MetaModel? meta, List<DataModel>? data});

  @override
  $MetaModelCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$TopNewsImplCopyWithImpl<$Res>
    extends _$TopNewsCopyWithImpl<$Res, _$TopNewsImpl>
    implements _$$TopNewsImplCopyWith<$Res> {
  __$$TopNewsImplCopyWithImpl(
      _$TopNewsImpl _value, $Res Function(_$TopNewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopNewsImpl(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopNewsImpl extends _TopNews {
  _$TopNewsImpl({this.meta, final List<DataModel>? data})
      : _data = data,
        super._();

  factory _$TopNewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopNewsImplFromJson(json);

  @override
  final MetaModel? meta;
  final List<DataModel>? _data;
  @override
  List<DataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopNews(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopNewsImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, meta, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopNewsImplCopyWith<_$TopNewsImpl> get copyWith =>
      __$$TopNewsImplCopyWithImpl<_$TopNewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopNewsImplToJson(
      this,
    );
  }
}

abstract class _TopNews extends TopNews {
  factory _TopNews({final MetaModel? meta, final List<DataModel>? data}) =
      _$TopNewsImpl;
  _TopNews._() : super._();

  factory _TopNews.fromJson(Map<String, dynamic> json) = _$TopNewsImpl.fromJson;

  @override
  MetaModel? get meta;
  @override
  List<DataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$TopNewsImplCopyWith<_$TopNewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
