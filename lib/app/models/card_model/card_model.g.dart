// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardModel _$$_CardModelFromJson(Map<String, dynamic> json) => _$_CardModel(
      cardNumber: json['cardNumber'] as String,
      cardHolderName: json['cardHolderName'] as String,
      cardType: json['cardType'] as String,
      cardExpiryDate: json['cardExpiryDate'] as String,
      cvv: json['cvv'] as String,
      balance: json['balance'] as String,
      cardByUserId: json['cardByUserId'] as String,
    );

Map<String, dynamic> _$$_CardModelToJson(_$_CardModel instance) =>
    <String, dynamic>{
      'cardNumber': instance.cardNumber,
      'cardHolderName': instance.cardHolderName,
      'cardType': instance.cardType,
      'cardExpiryDate': instance.cardExpiryDate,
      'cvv': instance.cvv,
      'balance': instance.balance,
      'cardByUserId': instance.cardByUserId,
    };
