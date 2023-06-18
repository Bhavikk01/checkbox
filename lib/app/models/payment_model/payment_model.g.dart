// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentModel _$$_PaymentModelFromJson(Map<String, dynamic> json) =>
    _$_PaymentModel(
      paymentId: json['paymentId'] as String,
      sendToUserId: json['sendToUserId'] as String,
      sendToUserName: json['sendToUserName'] as String,
      paymentDescription: json['paymentDescription'] as String,
      paymentFromUID: json['paymentFromUID'] as String,
      dateOfPay: DateTime.parse(json['dateOfPay'] as String),
      amount: json['amount'] as String,
      currency: json['currency'] as String,
      paymentStatus: $enumDecode(_$PaymentStatusEnumMap, json['paymentStatus']),
    );

Map<String, dynamic> _$$_PaymentModelToJson(_$_PaymentModel instance) =>
    <String, dynamic>{
      'paymentId': instance.paymentId,
      'sendToUserId': instance.sendToUserId,
      'sendToUserName': instance.sendToUserName,
      'paymentDescription': instance.paymentDescription,
      'paymentFromUID': instance.paymentFromUID,
      'dateOfPay': instance.dateOfPay.toIso8601String(),
      'amount': instance.amount,
      'currency': instance.currency,
      'paymentStatus': _$PaymentStatusEnumMap[instance.paymentStatus]!,
    };

const _$PaymentStatusEnumMap = {
  PaymentStatus.success: 'success',
  PaymentStatus.pending: 'pending',
  PaymentStatus.rejected: 'rejected',
  PaymentStatus.cancelled: 'cancelled',
};
