import '../extensions/extensions.dart';

class WarekiModel {
  WarekiModel({required this.seireki, required this.wareki, required this.eto, required this.age, required this.url});

  factory WarekiModel.fromJson(Map<String, dynamic> json) => WarekiModel(
        seireki: json['seireki'].toString(),
        wareki: json['wareki'].toString(),
        eto: json['eto'].toString(),
        age: json['age'].toString().toInt(),
        url: json['url'].toString(),
      );
  String seireki;
  String wareki;
  String eto;
  int age;
  String url;

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'seireki': seireki, 'wareki': wareki, 'eto': eto, 'age': age, 'url': url};
}
