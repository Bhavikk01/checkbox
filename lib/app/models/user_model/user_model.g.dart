// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      uid: json['uid'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      photoId: json['photoId'] as String,
      userRole: $enumDecode(_$UserRoleEnumMap, json['userRole']),
      socialSecurityNumber: json['socialSecurityNumber'] as String,
      dob: json['dob'] as String,
      businessDetails: json['businessDetails'] == null
          ? null
          : BusinessDetailsModel.fromJson(
              json['businessDetails'] as Map<String, dynamic>),
      cashboxAccount: CashBoxAccountModel.fromJson(
          json['cashboxAccount'] as Map<String, dynamic>),
      userAddress:
          AddressModel.fromJson(json['userAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'photoId': instance.photoId,
      'userRole': _$UserRoleEnumMap[instance.userRole]!,
      'socialSecurityNumber': instance.socialSecurityNumber,
      'dob': instance.dob,
      'businessDetails': instance.businessDetails,
      'cashboxAccount': instance.cashboxAccount,
      'userAddress': instance.userAddress,
    };

const _$UserRoleEnumMap = {
  UserRole.individualRole: 'individualRole',
  UserRole.businessRole: 'businessRole',
};

_$_BusinessDetailsModel _$$_BusinessDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_BusinessDetailsModel(
      businessName: json['businessName'] as String,
      businessEmail: json['businessEmail'] as String,
      businessEIN: json['businessEIN'] as String,
      businessAddress: json['businessAddress'] as String,
      businessZIPCode: json['businessZIPCode'] as String,
      businessCity: json['businessCity'] as String,
      businessState: json['businessState'] as String,
    );

Map<String, dynamic> _$$_BusinessDetailsModelToJson(
        _$_BusinessDetailsModel instance) =>
    <String, dynamic>{
      'businessName': instance.businessName,
      'businessEmail': instance.businessEmail,
      'businessEIN': instance.businessEIN,
      'businessAddress': instance.businessAddress,
      'businessZIPCode': instance.businessZIPCode,
      'businessCity': instance.businessCity,
      'businessState': instance.businessState,
    };

_$_CashBoxAccountModel _$$_CashBoxAccountModelFromJson(
        Map<String, dynamic> json) =>
    _$_CashBoxAccountModel(
      cashboxPhoneNumber: json['cashboxPhoneNumber'] as String,
      cashboxEmail: json['cashboxEmail'] as String,
      cashboxPassword: json['cashboxPassword'] as String,
    );

Map<String, dynamic> _$$_CashBoxAccountModelToJson(
        _$_CashBoxAccountModel instance) =>
    <String, dynamic>{
      'cashboxPhoneNumber': instance.cashboxPhoneNumber,
      'cashboxEmail': instance.cashboxEmail,
      'cashboxPassword': instance.cashboxPassword,
    };

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      userAddress: json['userAddress'] as String,
      userZIPCode: json['userZIPCode'] as String,
      userState: json['userState'] as String,
      userCity: json['userCity'] as String,
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'userAddress': instance.userAddress,
      'userZIPCode': instance.userZIPCode,
      'userState': instance.userState,
      'userCity': instance.userCity,
    };
