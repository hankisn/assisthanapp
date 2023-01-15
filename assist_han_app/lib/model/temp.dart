// To parse this JSON data, do
//
//     final temp = tempFromJson(jsonString);

import 'dart:convert';

Temp? tempFromJson(String str) => Temp.fromJson(json.decode(str));

String tempToJson(Temp? data) => json.encode(data!.toJson());

class Temp {
    Temp({
        required this.temp,
    });

    double temp;

    factory Temp.fromJson(Map<String, dynamic> json) => Temp(
        temp: json["temp"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "temp": temp,
    };
}