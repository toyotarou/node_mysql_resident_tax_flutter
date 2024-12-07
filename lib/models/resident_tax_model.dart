import '../extensions/extensions.dart';

class ResidentTaxModel {
  ResidentTaxModel({
    required this.id,
    required this.payLimit,
    required this.period,
    required this.price,
    required this.payDate,
    required this.interestPrice,
    required this.interestPayDate,
  });

  factory ResidentTaxModel.fromJson(Map<String, dynamic> json) => ResidentTaxModel(
        id: json['id'].toString().toInt(),
        payLimit: DateTime.parse('${json["pay_limit"]} 00:00:00'),
        period: json['period'].toString(),
        price: json['price'].toString().toInt(),
        payDate: json['pay_date'],
        interestPrice: json['interest_price'],
        interestPayDate: json['interest_pay_date'],
      );
  int id;
  DateTime payLimit;
  String period;
  int price;
  dynamic payDate;
  dynamic interestPrice;
  dynamic interestPayDate;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'pay_limit':
            "${payLimit.year.toString().padLeft(4, '0')}-${payLimit.month.toString().padLeft(2, '0')}-${payLimit.day.toString().padLeft(2, '0')}",
        'period': period,
        'price': price,
        'pay_date': payDate,
        'interest_price': interestPrice,
        'interest_pay_date': interestPayDate,
      };
}
