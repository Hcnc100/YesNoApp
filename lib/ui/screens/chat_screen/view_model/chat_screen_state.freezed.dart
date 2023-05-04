// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatScreenState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Message> get listMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatScreenStateCopyWith<ChatScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatScreenStateCopyWith<$Res> {
  factory $ChatScreenStateCopyWith(
          ChatScreenState value, $Res Function(ChatScreenState) then) =
      _$ChatScreenStateCopyWithImpl<$Res, ChatScreenState>;
  @useResult
  $Res call({bool isLoading, List<Message> listMessages});
}

/// @nodoc
class _$ChatScreenStateCopyWithImpl<$Res, $Val extends ChatScreenState>
    implements $ChatScreenStateCopyWith<$Res> {
  _$ChatScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listMessages = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listMessages: null == listMessages
          ? _value.listMessages
          : listMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatScreenStateCopyWith<$Res>
    implements $ChatScreenStateCopyWith<$Res> {
  factory _$$_ChatScreenStateCopyWith(
          _$_ChatScreenState value, $Res Function(_$_ChatScreenState) then) =
      __$$_ChatScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Message> listMessages});
}

/// @nodoc
class __$$_ChatScreenStateCopyWithImpl<$Res>
    extends _$ChatScreenStateCopyWithImpl<$Res, _$_ChatScreenState>
    implements _$$_ChatScreenStateCopyWith<$Res> {
  __$$_ChatScreenStateCopyWithImpl(
      _$_ChatScreenState _value, $Res Function(_$_ChatScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listMessages = null,
  }) {
    return _then(_$_ChatScreenState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listMessages: null == listMessages
          ? _value._listMessages
          : listMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_ChatScreenState
    with DiagnosticableTreeMixin
    implements _ChatScreenState {
  const _$_ChatScreenState(
      {this.isLoading = false, final List<Message> listMessages = const []})
      : _listMessages = listMessages;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Message> _listMessages;
  @override
  @JsonKey()
  List<Message> get listMessages {
    if (_listMessages is EqualUnmodifiableListView) return _listMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listMessages);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatScreenState(isLoading: $isLoading, listMessages: $listMessages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatScreenState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('listMessages', listMessages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatScreenState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._listMessages, _listMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_listMessages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatScreenStateCopyWith<_$_ChatScreenState> get copyWith =>
      __$$_ChatScreenStateCopyWithImpl<_$_ChatScreenState>(this, _$identity);
}

abstract class _ChatScreenState implements ChatScreenState {
  const factory _ChatScreenState(
      {final bool isLoading,
      final List<Message> listMessages}) = _$_ChatScreenState;

  @override
  bool get isLoading;
  @override
  List<Message> get listMessages;
  @override
  @JsonKey(ignore: true)
  _$$_ChatScreenStateCopyWith<_$_ChatScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
