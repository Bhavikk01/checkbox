import 'package:checkbox1/app/models/enums/user_role.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel{

  const factory UserModel({
    required String uid,
    required double balance,
    required String firstName,
    required String lastName,
    required String photoId,
    required UserRole userRole,
    required String socialSecurityNumber,
    required String dob,
    BusinessDetailsModel? businessDetails,
    required CashBoxAccountModel cashboxAccount,
    required AddressModel userAddress
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) => _$UserModelFromJson(json);
}

@freezed
class BusinessDetailsModel with _$BusinessDetailsModel{

  const factory BusinessDetailsModel({
    required String businessName,
    required String businessEmail,
    required String businessEIN,
    required String businessAddress,
    required String businessZIPCode,
    required String businessCity,
    required String businessState,

  }) = _BusinessDetailsModel;

  factory BusinessDetailsModel.fromJson(Map<String, Object?> json) => _$BusinessDetailsModelFromJson(json);
}

@freezed
class CashBoxAccountModel with _$CashBoxAccountModel{

  const factory CashBoxAccountModel({
    required String cashboxPhoneNumber,
    required String cashboxEmail,
    required String cashboxPassword,

  }) = _CashBoxAccountModel;

  factory CashBoxAccountModel.fromJson(Map<String, Object?> json) => _$CashBoxAccountModelFromJson(json);
}

@freezed
class AddressModel with _$AddressModel{

  const factory AddressModel({
    required String userAddress,
    required String userZIPCode,
    required String userState,
    required String userCity,

  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, Object?> json) => _$AddressModelFromJson(json);
}

