
import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/payment_status.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
class PaymentModel with _$PaymentModel{

  const factory PaymentModel({
    required String paymentId,
    required String sendToUserId,
    required String sendToUserName,
    required String paymentDescription,
    required String paymentFromUID,
    required DateTime dateOfPay,
    required String amount,
    required String currency,
    required PaymentStatus paymentStatus,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, Object?> json) => _$PaymentModelFromJson(json);


}