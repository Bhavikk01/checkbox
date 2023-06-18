
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel{

  const factory CardModel({
    required String cardNumber,
    required String cardHolderName,
    required String cardType,
    required String cardExpiryDate,
    required String cvv,
    required String balance,
    required String cardByUserId,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, Object?> json) => _$CardModelFromJson(json);

}