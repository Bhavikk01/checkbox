// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get uid => throw _privateConstructorUsedError;
  int get user_id => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get photoId => throw _privateConstructorUsedError;
  UserRole get userRole => throw _privateConstructorUsedError;
  String get socialSecurityNumber => throw _privateConstructorUsedError;
  String get dob => throw _privateConstructorUsedError;
  BusinessDetailsModel? get businessDetails =>
      throw _privateConstructorUsedError;
  CashBoxAccountModel get cashboxAccount => throw _privateConstructorUsedError;
  AddressModel get userAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String uid,
      int user_id,
      double balance,
      String firstName,
      String lastName,
      String photoId,
      UserRole userRole,
      String socialSecurityNumber,
      String dob,
      BusinessDetailsModel? businessDetails,
      CashBoxAccountModel cashboxAccount,
      AddressModel userAddress});

  $BusinessDetailsModelCopyWith<$Res>? get businessDetails;
  $CashBoxAccountModelCopyWith<$Res> get cashboxAccount;
  $AddressModelCopyWith<$Res> get userAddress;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? user_id = null,
    Object? balance = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? photoId = null,
    Object? userRole = null,
    Object? socialSecurityNumber = null,
    Object? dob = null,
    Object? businessDetails = freezed,
    Object? cashboxAccount = null,
    Object? userAddress = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      photoId: null == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as UserRole,
      socialSecurityNumber: null == socialSecurityNumber
          ? _value.socialSecurityNumber
          : socialSecurityNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      businessDetails: freezed == businessDetails
          ? _value.businessDetails
          : businessDetails // ignore: cast_nullable_to_non_nullable
              as BusinessDetailsModel?,
      cashboxAccount: null == cashboxAccount
          ? _value.cashboxAccount
          : cashboxAccount // ignore: cast_nullable_to_non_nullable
              as CashBoxAccountModel,
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BusinessDetailsModelCopyWith<$Res>? get businessDetails {
    if (_value.businessDetails == null) {
      return null;
    }

    return $BusinessDetailsModelCopyWith<$Res>(_value.businessDetails!,
        (value) {
      return _then(_value.copyWith(businessDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CashBoxAccountModelCopyWith<$Res> get cashboxAccount {
    return $CashBoxAccountModelCopyWith<$Res>(_value.cashboxAccount, (value) {
      return _then(_value.copyWith(cashboxAccount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get userAddress {
    return $AddressModelCopyWith<$Res>(_value.userAddress, (value) {
      return _then(_value.copyWith(userAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      int user_id,
      double balance,
      String firstName,
      String lastName,
      String photoId,
      UserRole userRole,
      String socialSecurityNumber,
      String dob,
      BusinessDetailsModel? businessDetails,
      CashBoxAccountModel cashboxAccount,
      AddressModel userAddress});

  @override
  $BusinessDetailsModelCopyWith<$Res>? get businessDetails;
  @override
  $CashBoxAccountModelCopyWith<$Res> get cashboxAccount;
  @override
  $AddressModelCopyWith<$Res> get userAddress;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? user_id = null,
    Object? balance = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? photoId = null,
    Object? userRole = null,
    Object? socialSecurityNumber = null,
    Object? dob = null,
    Object? businessDetails = freezed,
    Object? cashboxAccount = null,
    Object? userAddress = null,
  }) {
    return _then(_$_UserModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      photoId: null == photoId
          ? _value.photoId
          : photoId // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as UserRole,
      socialSecurityNumber: null == socialSecurityNumber
          ? _value.socialSecurityNumber
          : socialSecurityNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
      businessDetails: freezed == businessDetails
          ? _value.businessDetails
          : businessDetails // ignore: cast_nullable_to_non_nullable
              as BusinessDetailsModel?,
      cashboxAccount: null == cashboxAccount
          ? _value.cashboxAccount
          : cashboxAccount // ignore: cast_nullable_to_non_nullable
              as CashBoxAccountModel,
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {required this.uid,
      required this.user_id,
      required this.balance,
      required this.firstName,
      required this.lastName,
      required this.photoId,
      required this.userRole,
      required this.socialSecurityNumber,
      required this.dob,
      this.businessDetails,
      required this.cashboxAccount,
      required this.userAddress});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String uid;
  @override
  final int user_id;
  @override
  final double balance;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String photoId;
  @override
  final UserRole userRole;
  @override
  final String socialSecurityNumber;
  @override
  final String dob;
  @override
  final BusinessDetailsModel? businessDetails;
  @override
  final CashBoxAccountModel cashboxAccount;
  @override
  final AddressModel userAddress;

  @override
  String toString() {
    return 'UserModel(uid: $uid, user_id: $user_id, balance: $balance, firstName: $firstName, lastName: $lastName, photoId: $photoId, userRole: $userRole, socialSecurityNumber: $socialSecurityNumber, dob: $dob, businessDetails: $businessDetails, cashboxAccount: $cashboxAccount, userAddress: $userAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.photoId, photoId) || other.photoId == photoId) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.socialSecurityNumber, socialSecurityNumber) ||
                other.socialSecurityNumber == socialSecurityNumber) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.businessDetails, businessDetails) ||
                other.businessDetails == businessDetails) &&
            (identical(other.cashboxAccount, cashboxAccount) ||
                other.cashboxAccount == cashboxAccount) &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      user_id,
      balance,
      firstName,
      lastName,
      photoId,
      userRole,
      socialSecurityNumber,
      dob,
      businessDetails,
      cashboxAccount,
      userAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String uid,
      required final int user_id,
      required final double balance,
      required final String firstName,
      required final String lastName,
      required final String photoId,
      required final UserRole userRole,
      required final String socialSecurityNumber,
      required final String dob,
      final BusinessDetailsModel? businessDetails,
      required final CashBoxAccountModel cashboxAccount,
      required final AddressModel userAddress}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get uid;
  @override
  int get user_id;
  @override
  double get balance;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get photoId;
  @override
  UserRole get userRole;
  @override
  String get socialSecurityNumber;
  @override
  String get dob;
  @override
  BusinessDetailsModel? get businessDetails;
  @override
  CashBoxAccountModel get cashboxAccount;
  @override
  AddressModel get userAddress;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessDetailsModel _$BusinessDetailsModelFromJson(Map<String, dynamic> json) {
  return _BusinessDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$BusinessDetailsModel {
  String get businessName => throw _privateConstructorUsedError;
  String get businessEmail => throw _privateConstructorUsedError;
  String get businessEIN => throw _privateConstructorUsedError;
  String get businessAddress => throw _privateConstructorUsedError;
  String get businessZIPCode => throw _privateConstructorUsedError;
  String get businessCity => throw _privateConstructorUsedError;
  String get businessState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessDetailsModelCopyWith<BusinessDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDetailsModelCopyWith<$Res> {
  factory $BusinessDetailsModelCopyWith(BusinessDetailsModel value,
          $Res Function(BusinessDetailsModel) then) =
      _$BusinessDetailsModelCopyWithImpl<$Res, BusinessDetailsModel>;
  @useResult
  $Res call(
      {String businessName,
      String businessEmail,
      String businessEIN,
      String businessAddress,
      String businessZIPCode,
      String businessCity,
      String businessState});
}

/// @nodoc
class _$BusinessDetailsModelCopyWithImpl<$Res,
        $Val extends BusinessDetailsModel>
    implements $BusinessDetailsModelCopyWith<$Res> {
  _$BusinessDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessName = null,
    Object? businessEmail = null,
    Object? businessEIN = null,
    Object? businessAddress = null,
    Object? businessZIPCode = null,
    Object? businessCity = null,
    Object? businessState = null,
  }) {
    return _then(_value.copyWith(
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      businessEmail: null == businessEmail
          ? _value.businessEmail
          : businessEmail // ignore: cast_nullable_to_non_nullable
              as String,
      businessEIN: null == businessEIN
          ? _value.businessEIN
          : businessEIN // ignore: cast_nullable_to_non_nullable
              as String,
      businessAddress: null == businessAddress
          ? _value.businessAddress
          : businessAddress // ignore: cast_nullable_to_non_nullable
              as String,
      businessZIPCode: null == businessZIPCode
          ? _value.businessZIPCode
          : businessZIPCode // ignore: cast_nullable_to_non_nullable
              as String,
      businessCity: null == businessCity
          ? _value.businessCity
          : businessCity // ignore: cast_nullable_to_non_nullable
              as String,
      businessState: null == businessState
          ? _value.businessState
          : businessState // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BusinessDetailsModelCopyWith<$Res>
    implements $BusinessDetailsModelCopyWith<$Res> {
  factory _$$_BusinessDetailsModelCopyWith(_$_BusinessDetailsModel value,
          $Res Function(_$_BusinessDetailsModel) then) =
      __$$_BusinessDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String businessName,
      String businessEmail,
      String businessEIN,
      String businessAddress,
      String businessZIPCode,
      String businessCity,
      String businessState});
}

/// @nodoc
class __$$_BusinessDetailsModelCopyWithImpl<$Res>
    extends _$BusinessDetailsModelCopyWithImpl<$Res, _$_BusinessDetailsModel>
    implements _$$_BusinessDetailsModelCopyWith<$Res> {
  __$$_BusinessDetailsModelCopyWithImpl(_$_BusinessDetailsModel _value,
      $Res Function(_$_BusinessDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessName = null,
    Object? businessEmail = null,
    Object? businessEIN = null,
    Object? businessAddress = null,
    Object? businessZIPCode = null,
    Object? businessCity = null,
    Object? businessState = null,
  }) {
    return _then(_$_BusinessDetailsModel(
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      businessEmail: null == businessEmail
          ? _value.businessEmail
          : businessEmail // ignore: cast_nullable_to_non_nullable
              as String,
      businessEIN: null == businessEIN
          ? _value.businessEIN
          : businessEIN // ignore: cast_nullable_to_non_nullable
              as String,
      businessAddress: null == businessAddress
          ? _value.businessAddress
          : businessAddress // ignore: cast_nullable_to_non_nullable
              as String,
      businessZIPCode: null == businessZIPCode
          ? _value.businessZIPCode
          : businessZIPCode // ignore: cast_nullable_to_non_nullable
              as String,
      businessCity: null == businessCity
          ? _value.businessCity
          : businessCity // ignore: cast_nullable_to_non_nullable
              as String,
      businessState: null == businessState
          ? _value.businessState
          : businessState // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessDetailsModel implements _BusinessDetailsModel {
  const _$_BusinessDetailsModel(
      {required this.businessName,
      required this.businessEmail,
      required this.businessEIN,
      required this.businessAddress,
      required this.businessZIPCode,
      required this.businessCity,
      required this.businessState});

  factory _$_BusinessDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessDetailsModelFromJson(json);

  @override
  final String businessName;
  @override
  final String businessEmail;
  @override
  final String businessEIN;
  @override
  final String businessAddress;
  @override
  final String businessZIPCode;
  @override
  final String businessCity;
  @override
  final String businessState;

  @override
  String toString() {
    return 'BusinessDetailsModel(businessName: $businessName, businessEmail: $businessEmail, businessEIN: $businessEIN, businessAddress: $businessAddress, businessZIPCode: $businessZIPCode, businessCity: $businessCity, businessState: $businessState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusinessDetailsModel &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.businessEmail, businessEmail) ||
                other.businessEmail == businessEmail) &&
            (identical(other.businessEIN, businessEIN) ||
                other.businessEIN == businessEIN) &&
            (identical(other.businessAddress, businessAddress) ||
                other.businessAddress == businessAddress) &&
            (identical(other.businessZIPCode, businessZIPCode) ||
                other.businessZIPCode == businessZIPCode) &&
            (identical(other.businessCity, businessCity) ||
                other.businessCity == businessCity) &&
            (identical(other.businessState, businessState) ||
                other.businessState == businessState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      businessName,
      businessEmail,
      businessEIN,
      businessAddress,
      businessZIPCode,
      businessCity,
      businessState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessDetailsModelCopyWith<_$_BusinessDetailsModel> get copyWith =>
      __$$_BusinessDetailsModelCopyWithImpl<_$_BusinessDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessDetailsModelToJson(
      this,
    );
  }
}

abstract class _BusinessDetailsModel implements BusinessDetailsModel {
  const factory _BusinessDetailsModel(
      {required final String businessName,
      required final String businessEmail,
      required final String businessEIN,
      required final String businessAddress,
      required final String businessZIPCode,
      required final String businessCity,
      required final String businessState}) = _$_BusinessDetailsModel;

  factory _BusinessDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_BusinessDetailsModel.fromJson;

  @override
  String get businessName;
  @override
  String get businessEmail;
  @override
  String get businessEIN;
  @override
  String get businessAddress;
  @override
  String get businessZIPCode;
  @override
  String get businessCity;
  @override
  String get businessState;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessDetailsModelCopyWith<_$_BusinessDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CashBoxAccountModel _$CashBoxAccountModelFromJson(Map<String, dynamic> json) {
  return _CashBoxAccountModel.fromJson(json);
}

/// @nodoc
mixin _$CashBoxAccountModel {
  String get cashboxPhoneNumber => throw _privateConstructorUsedError;
  String get cashboxEmail => throw _privateConstructorUsedError;
  String get cashboxPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashBoxAccountModelCopyWith<CashBoxAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashBoxAccountModelCopyWith<$Res> {
  factory $CashBoxAccountModelCopyWith(
          CashBoxAccountModel value, $Res Function(CashBoxAccountModel) then) =
      _$CashBoxAccountModelCopyWithImpl<$Res, CashBoxAccountModel>;
  @useResult
  $Res call(
      {String cashboxPhoneNumber, String cashboxEmail, String cashboxPassword});
}

/// @nodoc
class _$CashBoxAccountModelCopyWithImpl<$Res, $Val extends CashBoxAccountModel>
    implements $CashBoxAccountModelCopyWith<$Res> {
  _$CashBoxAccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashboxPhoneNumber = null,
    Object? cashboxEmail = null,
    Object? cashboxPassword = null,
  }) {
    return _then(_value.copyWith(
      cashboxPhoneNumber: null == cashboxPhoneNumber
          ? _value.cashboxPhoneNumber
          : cashboxPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cashboxEmail: null == cashboxEmail
          ? _value.cashboxEmail
          : cashboxEmail // ignore: cast_nullable_to_non_nullable
              as String,
      cashboxPassword: null == cashboxPassword
          ? _value.cashboxPassword
          : cashboxPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CashBoxAccountModelCopyWith<$Res>
    implements $CashBoxAccountModelCopyWith<$Res> {
  factory _$$_CashBoxAccountModelCopyWith(_$_CashBoxAccountModel value,
          $Res Function(_$_CashBoxAccountModel) then) =
      __$$_CashBoxAccountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cashboxPhoneNumber, String cashboxEmail, String cashboxPassword});
}

/// @nodoc
class __$$_CashBoxAccountModelCopyWithImpl<$Res>
    extends _$CashBoxAccountModelCopyWithImpl<$Res, _$_CashBoxAccountModel>
    implements _$$_CashBoxAccountModelCopyWith<$Res> {
  __$$_CashBoxAccountModelCopyWithImpl(_$_CashBoxAccountModel _value,
      $Res Function(_$_CashBoxAccountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cashboxPhoneNumber = null,
    Object? cashboxEmail = null,
    Object? cashboxPassword = null,
  }) {
    return _then(_$_CashBoxAccountModel(
      cashboxPhoneNumber: null == cashboxPhoneNumber
          ? _value.cashboxPhoneNumber
          : cashboxPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cashboxEmail: null == cashboxEmail
          ? _value.cashboxEmail
          : cashboxEmail // ignore: cast_nullable_to_non_nullable
              as String,
      cashboxPassword: null == cashboxPassword
          ? _value.cashboxPassword
          : cashboxPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CashBoxAccountModel implements _CashBoxAccountModel {
  const _$_CashBoxAccountModel(
      {required this.cashboxPhoneNumber,
      required this.cashboxEmail,
      required this.cashboxPassword});

  factory _$_CashBoxAccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_CashBoxAccountModelFromJson(json);

  @override
  final String cashboxPhoneNumber;
  @override
  final String cashboxEmail;
  @override
  final String cashboxPassword;

  @override
  String toString() {
    return 'CashBoxAccountModel(cashboxPhoneNumber: $cashboxPhoneNumber, cashboxEmail: $cashboxEmail, cashboxPassword: $cashboxPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CashBoxAccountModel &&
            (identical(other.cashboxPhoneNumber, cashboxPhoneNumber) ||
                other.cashboxPhoneNumber == cashboxPhoneNumber) &&
            (identical(other.cashboxEmail, cashboxEmail) ||
                other.cashboxEmail == cashboxEmail) &&
            (identical(other.cashboxPassword, cashboxPassword) ||
                other.cashboxPassword == cashboxPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, cashboxPhoneNumber, cashboxEmail, cashboxPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CashBoxAccountModelCopyWith<_$_CashBoxAccountModel> get copyWith =>
      __$$_CashBoxAccountModelCopyWithImpl<_$_CashBoxAccountModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CashBoxAccountModelToJson(
      this,
    );
  }
}

abstract class _CashBoxAccountModel implements CashBoxAccountModel {
  const factory _CashBoxAccountModel(
      {required final String cashboxPhoneNumber,
      required final String cashboxEmail,
      required final String cashboxPassword}) = _$_CashBoxAccountModel;

  factory _CashBoxAccountModel.fromJson(Map<String, dynamic> json) =
      _$_CashBoxAccountModel.fromJson;

  @override
  String get cashboxPhoneNumber;
  @override
  String get cashboxEmail;
  @override
  String get cashboxPassword;
  @override
  @JsonKey(ignore: true)
  _$$_CashBoxAccountModelCopyWith<_$_CashBoxAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
  String get userAddress => throw _privateConstructorUsedError;
  String get userZIPCode => throw _privateConstructorUsedError;
  String get userState => throw _privateConstructorUsedError;
  String get userCity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
  @useResult
  $Res call(
      {String userAddress,
      String userZIPCode,
      String userState,
      String userCity});
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
    Object? userZIPCode = null,
    Object? userState = null,
    Object? userCity = null,
  }) {
    return _then(_value.copyWith(
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as String,
      userZIPCode: null == userZIPCode
          ? _value.userZIPCode
          : userZIPCode // ignore: cast_nullable_to_non_nullable
              as String,
      userState: null == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as String,
      userCity: null == userCity
          ? _value.userCity
          : userCity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressModelCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$_AddressModelCopyWith(
          _$_AddressModel value, $Res Function(_$_AddressModel) then) =
      __$$_AddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userAddress,
      String userZIPCode,
      String userState,
      String userCity});
}

/// @nodoc
class __$$_AddressModelCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$_AddressModel>
    implements _$$_AddressModelCopyWith<$Res> {
  __$$_AddressModelCopyWithImpl(
      _$_AddressModel _value, $Res Function(_$_AddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddress = null,
    Object? userZIPCode = null,
    Object? userState = null,
    Object? userCity = null,
  }) {
    return _then(_$_AddressModel(
      userAddress: null == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as String,
      userZIPCode: null == userZIPCode
          ? _value.userZIPCode
          : userZIPCode // ignore: cast_nullable_to_non_nullable
              as String,
      userState: null == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as String,
      userCity: null == userCity
          ? _value.userCity
          : userCity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressModel implements _AddressModel {
  const _$_AddressModel(
      {required this.userAddress,
      required this.userZIPCode,
      required this.userState,
      required this.userCity});

  factory _$_AddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddressModelFromJson(json);

  @override
  final String userAddress;
  @override
  final String userZIPCode;
  @override
  final String userState;
  @override
  final String userCity;

  @override
  String toString() {
    return 'AddressModel(userAddress: $userAddress, userZIPCode: $userZIPCode, userState: $userState, userCity: $userCity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressModel &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress) &&
            (identical(other.userZIPCode, userZIPCode) ||
                other.userZIPCode == userZIPCode) &&
            (identical(other.userState, userState) ||
                other.userState == userState) &&
            (identical(other.userCity, userCity) ||
                other.userCity == userCity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userAddress, userZIPCode, userState, userCity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      __$$_AddressModelCopyWithImpl<_$_AddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressModelToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel {
  const factory _AddressModel(
      {required final String userAddress,
      required final String userZIPCode,
      required final String userState,
      required final String userCity}) = _$_AddressModel;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$_AddressModel.fromJson;

  @override
  String get userAddress;
  @override
  String get userZIPCode;
  @override
  String get userState;
  @override
  String get userCity;
  @override
  @JsonKey(ignore: true)
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
