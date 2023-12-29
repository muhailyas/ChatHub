// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile) sendOtp,
    required TResult Function(String mobile) validateMobile,
    required TResult Function(String otp) verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile)? sendOtp,
    TResult? Function(String mobile)? validateMobile,
    TResult? Function(String otp)? verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile)? sendOtp,
    TResult Function(String mobile)? validateMobile,
    TResult Function(String otp)? verifyOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMobileForOtp value) sendOtp,
    required TResult Function(ValidateMobile value) validateMobile,
    required TResult Function(_VerifyOtp value) verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMobileForOtp value)? sendOtp,
    TResult? Function(ValidateMobile value)? validateMobile,
    TResult? Function(_VerifyOtp value)? verifyOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMobileForOtp value)? sendOtp,
    TResult Function(ValidateMobile value)? validateMobile,
    TResult Function(_VerifyOtp value)? verifyOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendMobileForOtpImplCopyWith<$Res> {
  factory _$$SendMobileForOtpImplCopyWith(_$SendMobileForOtpImpl value,
          $Res Function(_$SendMobileForOtpImpl) then) =
      __$$SendMobileForOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobile});
}

/// @nodoc
class __$$SendMobileForOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendMobileForOtpImpl>
    implements _$$SendMobileForOtpImplCopyWith<$Res> {
  __$$SendMobileForOtpImplCopyWithImpl(_$SendMobileForOtpImpl _value,
      $Res Function(_$SendMobileForOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
  }) {
    return _then(_$SendMobileForOtpImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMobileForOtpImpl implements _SendMobileForOtp {
  const _$SendMobileForOtpImpl({required this.mobile});

  @override
  final String mobile;

  @override
  String toString() {
    return 'AuthEvent.sendOtp(mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMobileForOtpImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMobileForOtpImplCopyWith<_$SendMobileForOtpImpl> get copyWith =>
      __$$SendMobileForOtpImplCopyWithImpl<_$SendMobileForOtpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile) sendOtp,
    required TResult Function(String mobile) validateMobile,
    required TResult Function(String otp) verifyOtp,
  }) {
    return sendOtp(mobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile)? sendOtp,
    TResult? Function(String mobile)? validateMobile,
    TResult? Function(String otp)? verifyOtp,
  }) {
    return sendOtp?.call(mobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile)? sendOtp,
    TResult Function(String mobile)? validateMobile,
    TResult Function(String otp)? verifyOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(mobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMobileForOtp value) sendOtp,
    required TResult Function(ValidateMobile value) validateMobile,
    required TResult Function(_VerifyOtp value) verifyOtp,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMobileForOtp value)? sendOtp,
    TResult? Function(ValidateMobile value)? validateMobile,
    TResult? Function(_VerifyOtp value)? verifyOtp,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMobileForOtp value)? sendOtp,
    TResult Function(ValidateMobile value)? validateMobile,
    TResult Function(_VerifyOtp value)? verifyOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendMobileForOtp implements AuthEvent {
  const factory _SendMobileForOtp({required final String mobile}) =
      _$SendMobileForOtpImpl;

  String get mobile;
  @JsonKey(ignore: true)
  _$$SendMobileForOtpImplCopyWith<_$SendMobileForOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateMobileImplCopyWith<$Res> {
  factory _$$ValidateMobileImplCopyWith(_$ValidateMobileImpl value,
          $Res Function(_$ValidateMobileImpl) then) =
      __$$ValidateMobileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobile});
}

/// @nodoc
class __$$ValidateMobileImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ValidateMobileImpl>
    implements _$$ValidateMobileImplCopyWith<$Res> {
  __$$ValidateMobileImplCopyWithImpl(
      _$ValidateMobileImpl _value, $Res Function(_$ValidateMobileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
  }) {
    return _then(_$ValidateMobileImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateMobileImpl implements ValidateMobile {
  const _$ValidateMobileImpl({required this.mobile});

  @override
  final String mobile;

  @override
  String toString() {
    return 'AuthEvent.validateMobile(mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateMobileImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateMobileImplCopyWith<_$ValidateMobileImpl> get copyWith =>
      __$$ValidateMobileImplCopyWithImpl<_$ValidateMobileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile) sendOtp,
    required TResult Function(String mobile) validateMobile,
    required TResult Function(String otp) verifyOtp,
  }) {
    return validateMobile(mobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile)? sendOtp,
    TResult? Function(String mobile)? validateMobile,
    TResult? Function(String otp)? verifyOtp,
  }) {
    return validateMobile?.call(mobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile)? sendOtp,
    TResult Function(String mobile)? validateMobile,
    TResult Function(String otp)? verifyOtp,
    required TResult orElse(),
  }) {
    if (validateMobile != null) {
      return validateMobile(mobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMobileForOtp value) sendOtp,
    required TResult Function(ValidateMobile value) validateMobile,
    required TResult Function(_VerifyOtp value) verifyOtp,
  }) {
    return validateMobile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMobileForOtp value)? sendOtp,
    TResult? Function(ValidateMobile value)? validateMobile,
    TResult? Function(_VerifyOtp value)? verifyOtp,
  }) {
    return validateMobile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMobileForOtp value)? sendOtp,
    TResult Function(ValidateMobile value)? validateMobile,
    TResult Function(_VerifyOtp value)? verifyOtp,
    required TResult orElse(),
  }) {
    if (validateMobile != null) {
      return validateMobile(this);
    }
    return orElse();
  }
}

abstract class ValidateMobile implements AuthEvent {
  const factory ValidateMobile({required final String mobile}) =
      _$ValidateMobileImpl;

  String get mobile;
  @JsonKey(ignore: true)
  _$$ValidateMobileImplCopyWith<_$ValidateMobileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$VerifyOtpImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements _VerifyOtp {
  const _$VerifyOtpImpl({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile) sendOtp,
    required TResult Function(String mobile) validateMobile,
    required TResult Function(String otp) verifyOtp,
  }) {
    return verifyOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile)? sendOtp,
    TResult? Function(String mobile)? validateMobile,
    TResult? Function(String otp)? verifyOtp,
  }) {
    return verifyOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile)? sendOtp,
    TResult Function(String mobile)? validateMobile,
    TResult Function(String otp)? verifyOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMobileForOtp value) sendOtp,
    required TResult Function(ValidateMobile value) validateMobile,
    required TResult Function(_VerifyOtp value) verifyOtp,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMobileForOtp value)? sendOtp,
    TResult? Function(ValidateMobile value)? validateMobile,
    TResult? Function(_VerifyOtp value)? verifyOtp,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMobileForOtp value)? sendOtp,
    TResult Function(ValidateMobile value)? validateMobile,
    TResult Function(_VerifyOtp value)? verifyOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements AuthEvent {
  const factory _VerifyOtp({required final String otp}) = _$VerifyOtpImpl;

  String get otp;
  @JsonKey(ignore: true)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mobileVerificationLoading,
    required TResult Function() otpVerifyLoading,
    required TResult Function() mobileVerified,
    required TResult Function() navigateToOtp,
    required TResult Function() otpVerified,
    required TResult Function(String errorMessage) otpVerificationError,
    required TResult Function(String errorMessage) mobileVerificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mobileVerificationLoading,
    TResult? Function()? otpVerifyLoading,
    TResult? Function()? mobileVerified,
    TResult? Function()? navigateToOtp,
    TResult? Function()? otpVerified,
    TResult? Function(String errorMessage)? otpVerificationError,
    TResult? Function(String errorMessage)? mobileVerificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mobileVerificationLoading,
    TResult Function()? otpVerifyLoading,
    TResult Function()? mobileVerified,
    TResult Function()? navigateToOtp,
    TResult Function()? otpVerified,
    TResult Function(String errorMessage)? otpVerificationError,
    TResult Function(String errorMessage)? mobileVerificationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MobileVerificationLoading value)
        mobileVerificationLoading,
    required TResult Function(OtpVerifyLoading value) otpVerifyLoading,
    required TResult Function(MobileVerified value) mobileVerified,
    required TResult Function(NavigateToOtp value) navigateToOtp,
    required TResult Function(OtpVerified value) otpVerified,
    required TResult Function(OtpVerificationError value) otpVerificationError,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult? Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult? Function(MobileVerified value)? mobileVerified,
    TResult? Function(NavigateToOtp value)? navigateToOtp,
    TResult? Function(OtpVerified value)? otpVerified,
    TResult? Function(OtpVerificationError value)? otpVerificationError,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult Function(MobileVerified value)? mobileVerified,
    TResult Function(NavigateToOtp value)? navigateToOtp,
    TResult Function(OtpVerified value)? otpVerified,
    TResult Function(OtpVerificationError value)? otpVerificationError,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mobileVerificationLoading,
    required TResult Function() otpVerifyLoading,
    required TResult Function() mobileVerified,
    required TResult Function() navigateToOtp,
    required TResult Function() otpVerified,
    required TResult Function(String errorMessage) otpVerificationError,
    required TResult Function(String errorMessage) mobileVerificationError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mobileVerificationLoading,
    TResult? Function()? otpVerifyLoading,
    TResult? Function()? mobileVerified,
    TResult? Function()? navigateToOtp,
    TResult? Function()? otpVerified,
    TResult? Function(String errorMessage)? otpVerificationError,
    TResult? Function(String errorMessage)? mobileVerificationError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mobileVerificationLoading,
    TResult Function()? otpVerifyLoading,
    TResult Function()? mobileVerified,
    TResult Function()? navigateToOtp,
    TResult Function()? otpVerified,
    TResult Function(String errorMessage)? otpVerificationError,
    TResult Function(String errorMessage)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MobileVerificationLoading value)
        mobileVerificationLoading,
    required TResult Function(OtpVerifyLoading value) otpVerifyLoading,
    required TResult Function(MobileVerified value) mobileVerified,
    required TResult Function(NavigateToOtp value) navigateToOtp,
    required TResult Function(OtpVerified value) otpVerified,
    required TResult Function(OtpVerificationError value) otpVerificationError,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult? Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult? Function(MobileVerified value)? mobileVerified,
    TResult? Function(NavigateToOtp value)? navigateToOtp,
    TResult? Function(OtpVerified value)? otpVerified,
    TResult? Function(OtpVerificationError value)? otpVerificationError,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult Function(MobileVerified value)? mobileVerified,
    TResult Function(NavigateToOtp value)? navigateToOtp,
    TResult Function(OtpVerified value)? otpVerified,
    TResult Function(OtpVerificationError value)? otpVerificationError,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$MobileVerificationLoadingImplCopyWith<$Res> {
  factory _$$MobileVerificationLoadingImplCopyWith(
          _$MobileVerificationLoadingImpl value,
          $Res Function(_$MobileVerificationLoadingImpl) then) =
      __$$MobileVerificationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MobileVerificationLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$MobileVerificationLoadingImpl>
    implements _$$MobileVerificationLoadingImplCopyWith<$Res> {
  __$$MobileVerificationLoadingImplCopyWithImpl(
      _$MobileVerificationLoadingImpl _value,
      $Res Function(_$MobileVerificationLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MobileVerificationLoadingImpl implements MobileVerificationLoading {
  const _$MobileVerificationLoadingImpl();

  @override
  String toString() {
    return 'AuthState.mobileVerificationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileVerificationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mobileVerificationLoading,
    required TResult Function() otpVerifyLoading,
    required TResult Function() mobileVerified,
    required TResult Function() navigateToOtp,
    required TResult Function() otpVerified,
    required TResult Function(String errorMessage) otpVerificationError,
    required TResult Function(String errorMessage) mobileVerificationError,
  }) {
    return mobileVerificationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mobileVerificationLoading,
    TResult? Function()? otpVerifyLoading,
    TResult? Function()? mobileVerified,
    TResult? Function()? navigateToOtp,
    TResult? Function()? otpVerified,
    TResult? Function(String errorMessage)? otpVerificationError,
    TResult? Function(String errorMessage)? mobileVerificationError,
  }) {
    return mobileVerificationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mobileVerificationLoading,
    TResult Function()? otpVerifyLoading,
    TResult Function()? mobileVerified,
    TResult Function()? navigateToOtp,
    TResult Function()? otpVerified,
    TResult Function(String errorMessage)? otpVerificationError,
    TResult Function(String errorMessage)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (mobileVerificationLoading != null) {
      return mobileVerificationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MobileVerificationLoading value)
        mobileVerificationLoading,
    required TResult Function(OtpVerifyLoading value) otpVerifyLoading,
    required TResult Function(MobileVerified value) mobileVerified,
    required TResult Function(NavigateToOtp value) navigateToOtp,
    required TResult Function(OtpVerified value) otpVerified,
    required TResult Function(OtpVerificationError value) otpVerificationError,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
  }) {
    return mobileVerificationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult? Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult? Function(MobileVerified value)? mobileVerified,
    TResult? Function(NavigateToOtp value)? navigateToOtp,
    TResult? Function(OtpVerified value)? otpVerified,
    TResult? Function(OtpVerificationError value)? otpVerificationError,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
  }) {
    return mobileVerificationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult Function(MobileVerified value)? mobileVerified,
    TResult Function(NavigateToOtp value)? navigateToOtp,
    TResult Function(OtpVerified value)? otpVerified,
    TResult Function(OtpVerificationError value)? otpVerificationError,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (mobileVerificationLoading != null) {
      return mobileVerificationLoading(this);
    }
    return orElse();
  }
}

abstract class MobileVerificationLoading implements AuthState {
  const factory MobileVerificationLoading() = _$MobileVerificationLoadingImpl;
}

/// @nodoc
abstract class _$$OtpVerifyLoadingImplCopyWith<$Res> {
  factory _$$OtpVerifyLoadingImplCopyWith(_$OtpVerifyLoadingImpl value,
          $Res Function(_$OtpVerifyLoadingImpl) then) =
      __$$OtpVerifyLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpVerifyLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OtpVerifyLoadingImpl>
    implements _$$OtpVerifyLoadingImplCopyWith<$Res> {
  __$$OtpVerifyLoadingImplCopyWithImpl(_$OtpVerifyLoadingImpl _value,
      $Res Function(_$OtpVerifyLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpVerifyLoadingImpl implements OtpVerifyLoading {
  const _$OtpVerifyLoadingImpl();

  @override
  String toString() {
    return 'AuthState.otpVerifyLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpVerifyLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mobileVerificationLoading,
    required TResult Function() otpVerifyLoading,
    required TResult Function() mobileVerified,
    required TResult Function() navigateToOtp,
    required TResult Function() otpVerified,
    required TResult Function(String errorMessage) otpVerificationError,
    required TResult Function(String errorMessage) mobileVerificationError,
  }) {
    return otpVerifyLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mobileVerificationLoading,
    TResult? Function()? otpVerifyLoading,
    TResult? Function()? mobileVerified,
    TResult? Function()? navigateToOtp,
    TResult? Function()? otpVerified,
    TResult? Function(String errorMessage)? otpVerificationError,
    TResult? Function(String errorMessage)? mobileVerificationError,
  }) {
    return otpVerifyLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mobileVerificationLoading,
    TResult Function()? otpVerifyLoading,
    TResult Function()? mobileVerified,
    TResult Function()? navigateToOtp,
    TResult Function()? otpVerified,
    TResult Function(String errorMessage)? otpVerificationError,
    TResult Function(String errorMessage)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (otpVerifyLoading != null) {
      return otpVerifyLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MobileVerificationLoading value)
        mobileVerificationLoading,
    required TResult Function(OtpVerifyLoading value) otpVerifyLoading,
    required TResult Function(MobileVerified value) mobileVerified,
    required TResult Function(NavigateToOtp value) navigateToOtp,
    required TResult Function(OtpVerified value) otpVerified,
    required TResult Function(OtpVerificationError value) otpVerificationError,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
  }) {
    return otpVerifyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult? Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult? Function(MobileVerified value)? mobileVerified,
    TResult? Function(NavigateToOtp value)? navigateToOtp,
    TResult? Function(OtpVerified value)? otpVerified,
    TResult? Function(OtpVerificationError value)? otpVerificationError,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
  }) {
    return otpVerifyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult Function(MobileVerified value)? mobileVerified,
    TResult Function(NavigateToOtp value)? navigateToOtp,
    TResult Function(OtpVerified value)? otpVerified,
    TResult Function(OtpVerificationError value)? otpVerificationError,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (otpVerifyLoading != null) {
      return otpVerifyLoading(this);
    }
    return orElse();
  }
}

abstract class OtpVerifyLoading implements AuthState {
  const factory OtpVerifyLoading() = _$OtpVerifyLoadingImpl;
}

/// @nodoc
abstract class _$$MobileVerifiedImplCopyWith<$Res> {
  factory _$$MobileVerifiedImplCopyWith(_$MobileVerifiedImpl value,
          $Res Function(_$MobileVerifiedImpl) then) =
      __$$MobileVerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MobileVerifiedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$MobileVerifiedImpl>
    implements _$$MobileVerifiedImplCopyWith<$Res> {
  __$$MobileVerifiedImplCopyWithImpl(
      _$MobileVerifiedImpl _value, $Res Function(_$MobileVerifiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MobileVerifiedImpl implements MobileVerified {
  const _$MobileVerifiedImpl();

  @override
  String toString() {
    return 'AuthState.mobileVerified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MobileVerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mobileVerificationLoading,
    required TResult Function() otpVerifyLoading,
    required TResult Function() mobileVerified,
    required TResult Function() navigateToOtp,
    required TResult Function() otpVerified,
    required TResult Function(String errorMessage) otpVerificationError,
    required TResult Function(String errorMessage) mobileVerificationError,
  }) {
    return mobileVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mobileVerificationLoading,
    TResult? Function()? otpVerifyLoading,
    TResult? Function()? mobileVerified,
    TResult? Function()? navigateToOtp,
    TResult? Function()? otpVerified,
    TResult? Function(String errorMessage)? otpVerificationError,
    TResult? Function(String errorMessage)? mobileVerificationError,
  }) {
    return mobileVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mobileVerificationLoading,
    TResult Function()? otpVerifyLoading,
    TResult Function()? mobileVerified,
    TResult Function()? navigateToOtp,
    TResult Function()? otpVerified,
    TResult Function(String errorMessage)? otpVerificationError,
    TResult Function(String errorMessage)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (mobileVerified != null) {
      return mobileVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MobileVerificationLoading value)
        mobileVerificationLoading,
    required TResult Function(OtpVerifyLoading value) otpVerifyLoading,
    required TResult Function(MobileVerified value) mobileVerified,
    required TResult Function(NavigateToOtp value) navigateToOtp,
    required TResult Function(OtpVerified value) otpVerified,
    required TResult Function(OtpVerificationError value) otpVerificationError,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
  }) {
    return mobileVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult? Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult? Function(MobileVerified value)? mobileVerified,
    TResult? Function(NavigateToOtp value)? navigateToOtp,
    TResult? Function(OtpVerified value)? otpVerified,
    TResult? Function(OtpVerificationError value)? otpVerificationError,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
  }) {
    return mobileVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult Function(MobileVerified value)? mobileVerified,
    TResult Function(NavigateToOtp value)? navigateToOtp,
    TResult Function(OtpVerified value)? otpVerified,
    TResult Function(OtpVerificationError value)? otpVerificationError,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (mobileVerified != null) {
      return mobileVerified(this);
    }
    return orElse();
  }
}

abstract class MobileVerified implements AuthState {
  const factory MobileVerified() = _$MobileVerifiedImpl;
}

/// @nodoc
abstract class _$$NavigateToOtpImplCopyWith<$Res> {
  factory _$$NavigateToOtpImplCopyWith(
          _$NavigateToOtpImpl value, $Res Function(_$NavigateToOtpImpl) then) =
      __$$NavigateToOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateToOtpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NavigateToOtpImpl>
    implements _$$NavigateToOtpImplCopyWith<$Res> {
  __$$NavigateToOtpImplCopyWithImpl(
      _$NavigateToOtpImpl _value, $Res Function(_$NavigateToOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigateToOtpImpl implements NavigateToOtp {
  const _$NavigateToOtpImpl();

  @override
  String toString() {
    return 'AuthState.navigateToOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateToOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mobileVerificationLoading,
    required TResult Function() otpVerifyLoading,
    required TResult Function() mobileVerified,
    required TResult Function() navigateToOtp,
    required TResult Function() otpVerified,
    required TResult Function(String errorMessage) otpVerificationError,
    required TResult Function(String errorMessage) mobileVerificationError,
  }) {
    return navigateToOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mobileVerificationLoading,
    TResult? Function()? otpVerifyLoading,
    TResult? Function()? mobileVerified,
    TResult? Function()? navigateToOtp,
    TResult? Function()? otpVerified,
    TResult? Function(String errorMessage)? otpVerificationError,
    TResult? Function(String errorMessage)? mobileVerificationError,
  }) {
    return navigateToOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mobileVerificationLoading,
    TResult Function()? otpVerifyLoading,
    TResult Function()? mobileVerified,
    TResult Function()? navigateToOtp,
    TResult Function()? otpVerified,
    TResult Function(String errorMessage)? otpVerificationError,
    TResult Function(String errorMessage)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (navigateToOtp != null) {
      return navigateToOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MobileVerificationLoading value)
        mobileVerificationLoading,
    required TResult Function(OtpVerifyLoading value) otpVerifyLoading,
    required TResult Function(MobileVerified value) mobileVerified,
    required TResult Function(NavigateToOtp value) navigateToOtp,
    required TResult Function(OtpVerified value) otpVerified,
    required TResult Function(OtpVerificationError value) otpVerificationError,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
  }) {
    return navigateToOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult? Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult? Function(MobileVerified value)? mobileVerified,
    TResult? Function(NavigateToOtp value)? navigateToOtp,
    TResult? Function(OtpVerified value)? otpVerified,
    TResult? Function(OtpVerificationError value)? otpVerificationError,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
  }) {
    return navigateToOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult Function(MobileVerified value)? mobileVerified,
    TResult Function(NavigateToOtp value)? navigateToOtp,
    TResult Function(OtpVerified value)? otpVerified,
    TResult Function(OtpVerificationError value)? otpVerificationError,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (navigateToOtp != null) {
      return navigateToOtp(this);
    }
    return orElse();
  }
}

abstract class NavigateToOtp implements AuthState {
  const factory NavigateToOtp() = _$NavigateToOtpImpl;
}

/// @nodoc
abstract class _$$OtpVerifiedImplCopyWith<$Res> {
  factory _$$OtpVerifiedImplCopyWith(
          _$OtpVerifiedImpl value, $Res Function(_$OtpVerifiedImpl) then) =
      __$$OtpVerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpVerifiedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OtpVerifiedImpl>
    implements _$$OtpVerifiedImplCopyWith<$Res> {
  __$$OtpVerifiedImplCopyWithImpl(
      _$OtpVerifiedImpl _value, $Res Function(_$OtpVerifiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpVerifiedImpl implements OtpVerified {
  const _$OtpVerifiedImpl();

  @override
  String toString() {
    return 'AuthState.otpVerified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpVerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mobileVerificationLoading,
    required TResult Function() otpVerifyLoading,
    required TResult Function() mobileVerified,
    required TResult Function() navigateToOtp,
    required TResult Function() otpVerified,
    required TResult Function(String errorMessage) otpVerificationError,
    required TResult Function(String errorMessage) mobileVerificationError,
  }) {
    return otpVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mobileVerificationLoading,
    TResult? Function()? otpVerifyLoading,
    TResult? Function()? mobileVerified,
    TResult? Function()? navigateToOtp,
    TResult? Function()? otpVerified,
    TResult? Function(String errorMessage)? otpVerificationError,
    TResult? Function(String errorMessage)? mobileVerificationError,
  }) {
    return otpVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mobileVerificationLoading,
    TResult Function()? otpVerifyLoading,
    TResult Function()? mobileVerified,
    TResult Function()? navigateToOtp,
    TResult Function()? otpVerified,
    TResult Function(String errorMessage)? otpVerificationError,
    TResult Function(String errorMessage)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MobileVerificationLoading value)
        mobileVerificationLoading,
    required TResult Function(OtpVerifyLoading value) otpVerifyLoading,
    required TResult Function(MobileVerified value) mobileVerified,
    required TResult Function(NavigateToOtp value) navigateToOtp,
    required TResult Function(OtpVerified value) otpVerified,
    required TResult Function(OtpVerificationError value) otpVerificationError,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
  }) {
    return otpVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult? Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult? Function(MobileVerified value)? mobileVerified,
    TResult? Function(NavigateToOtp value)? navigateToOtp,
    TResult? Function(OtpVerified value)? otpVerified,
    TResult? Function(OtpVerificationError value)? otpVerificationError,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
  }) {
    return otpVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult Function(MobileVerified value)? mobileVerified,
    TResult Function(NavigateToOtp value)? navigateToOtp,
    TResult Function(OtpVerified value)? otpVerified,
    TResult Function(OtpVerificationError value)? otpVerificationError,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(this);
    }
    return orElse();
  }
}

abstract class OtpVerified implements AuthState {
  const factory OtpVerified() = _$OtpVerifiedImpl;
}

/// @nodoc
abstract class _$$OtpVerificationErrorImplCopyWith<$Res> {
  factory _$$OtpVerificationErrorImplCopyWith(_$OtpVerificationErrorImpl value,
          $Res Function(_$OtpVerificationErrorImpl) then) =
      __$$OtpVerificationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$OtpVerificationErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OtpVerificationErrorImpl>
    implements _$$OtpVerificationErrorImplCopyWith<$Res> {
  __$$OtpVerificationErrorImplCopyWithImpl(_$OtpVerificationErrorImpl _value,
      $Res Function(_$OtpVerificationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$OtpVerificationErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpVerificationErrorImpl implements OtpVerificationError {
  const _$OtpVerificationErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.otpVerificationError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationErrorImplCopyWith<_$OtpVerificationErrorImpl>
      get copyWith =>
          __$$OtpVerificationErrorImplCopyWithImpl<_$OtpVerificationErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mobileVerificationLoading,
    required TResult Function() otpVerifyLoading,
    required TResult Function() mobileVerified,
    required TResult Function() navigateToOtp,
    required TResult Function() otpVerified,
    required TResult Function(String errorMessage) otpVerificationError,
    required TResult Function(String errorMessage) mobileVerificationError,
  }) {
    return otpVerificationError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mobileVerificationLoading,
    TResult? Function()? otpVerifyLoading,
    TResult? Function()? mobileVerified,
    TResult? Function()? navigateToOtp,
    TResult? Function()? otpVerified,
    TResult? Function(String errorMessage)? otpVerificationError,
    TResult? Function(String errorMessage)? mobileVerificationError,
  }) {
    return otpVerificationError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mobileVerificationLoading,
    TResult Function()? otpVerifyLoading,
    TResult Function()? mobileVerified,
    TResult Function()? navigateToOtp,
    TResult Function()? otpVerified,
    TResult Function(String errorMessage)? otpVerificationError,
    TResult Function(String errorMessage)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (otpVerificationError != null) {
      return otpVerificationError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MobileVerificationLoading value)
        mobileVerificationLoading,
    required TResult Function(OtpVerifyLoading value) otpVerifyLoading,
    required TResult Function(MobileVerified value) mobileVerified,
    required TResult Function(NavigateToOtp value) navigateToOtp,
    required TResult Function(OtpVerified value) otpVerified,
    required TResult Function(OtpVerificationError value) otpVerificationError,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
  }) {
    return otpVerificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult? Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult? Function(MobileVerified value)? mobileVerified,
    TResult? Function(NavigateToOtp value)? navigateToOtp,
    TResult? Function(OtpVerified value)? otpVerified,
    TResult? Function(OtpVerificationError value)? otpVerificationError,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
  }) {
    return otpVerificationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult Function(MobileVerified value)? mobileVerified,
    TResult Function(NavigateToOtp value)? navigateToOtp,
    TResult Function(OtpVerified value)? otpVerified,
    TResult Function(OtpVerificationError value)? otpVerificationError,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (otpVerificationError != null) {
      return otpVerificationError(this);
    }
    return orElse();
  }
}

abstract class OtpVerificationError implements AuthState {
  const factory OtpVerificationError(final String errorMessage) =
      _$OtpVerificationErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$OtpVerificationErrorImplCopyWith<_$OtpVerificationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MobileVerificationErrorImplCopyWith<$Res> {
  factory _$$MobileVerificationErrorImplCopyWith(
          _$MobileVerificationErrorImpl value,
          $Res Function(_$MobileVerificationErrorImpl) then) =
      __$$MobileVerificationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$MobileVerificationErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$MobileVerificationErrorImpl>
    implements _$$MobileVerificationErrorImplCopyWith<$Res> {
  __$$MobileVerificationErrorImplCopyWithImpl(
      _$MobileVerificationErrorImpl _value,
      $Res Function(_$MobileVerificationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$MobileVerificationErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MobileVerificationErrorImpl implements MobileVerificationError {
  const _$MobileVerificationErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState.mobileVerificationError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileVerificationErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileVerificationErrorImplCopyWith<_$MobileVerificationErrorImpl>
      get copyWith => __$$MobileVerificationErrorImplCopyWithImpl<
          _$MobileVerificationErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() mobileVerificationLoading,
    required TResult Function() otpVerifyLoading,
    required TResult Function() mobileVerified,
    required TResult Function() navigateToOtp,
    required TResult Function() otpVerified,
    required TResult Function(String errorMessage) otpVerificationError,
    required TResult Function(String errorMessage) mobileVerificationError,
  }) {
    return mobileVerificationError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? mobileVerificationLoading,
    TResult? Function()? otpVerifyLoading,
    TResult? Function()? mobileVerified,
    TResult? Function()? navigateToOtp,
    TResult? Function()? otpVerified,
    TResult? Function(String errorMessage)? otpVerificationError,
    TResult? Function(String errorMessage)? mobileVerificationError,
  }) {
    return mobileVerificationError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? mobileVerificationLoading,
    TResult Function()? otpVerifyLoading,
    TResult Function()? mobileVerified,
    TResult Function()? navigateToOtp,
    TResult Function()? otpVerified,
    TResult Function(String errorMessage)? otpVerificationError,
    TResult Function(String errorMessage)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (mobileVerificationError != null) {
      return mobileVerificationError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(MobileVerificationLoading value)
        mobileVerificationLoading,
    required TResult Function(OtpVerifyLoading value) otpVerifyLoading,
    required TResult Function(MobileVerified value) mobileVerified,
    required TResult Function(NavigateToOtp value) navigateToOtp,
    required TResult Function(OtpVerified value) otpVerified,
    required TResult Function(OtpVerificationError value) otpVerificationError,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
  }) {
    return mobileVerificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult? Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult? Function(MobileVerified value)? mobileVerified,
    TResult? Function(NavigateToOtp value)? navigateToOtp,
    TResult? Function(OtpVerified value)? otpVerified,
    TResult? Function(OtpVerificationError value)? otpVerificationError,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
  }) {
    return mobileVerificationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(MobileVerificationLoading value)?
        mobileVerificationLoading,
    TResult Function(OtpVerifyLoading value)? otpVerifyLoading,
    TResult Function(MobileVerified value)? mobileVerified,
    TResult Function(NavigateToOtp value)? navigateToOtp,
    TResult Function(OtpVerified value)? otpVerified,
    TResult Function(OtpVerificationError value)? otpVerificationError,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    required TResult orElse(),
  }) {
    if (mobileVerificationError != null) {
      return mobileVerificationError(this);
    }
    return orElse();
  }
}

abstract class MobileVerificationError implements AuthState {
  const factory MobileVerificationError(final String errorMessage) =
      _$MobileVerificationErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$MobileVerificationErrorImplCopyWith<_$MobileVerificationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
