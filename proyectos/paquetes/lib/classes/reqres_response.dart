// To parse this JSON data, do
//
//     final reqresResponse = reqresResponseFromJson(jsonString);

import 'dart:convert';

import 'package:paquetes/classes/person.dart';

ReqresResponse reqresResponseFromJson(String str) => ReqresResponse.fromJson(json.decode(str));

String reqresResponseToJson(ReqresResponse data) => json.encode(data.toJson());

class ReqresResponse {
    int page;
    int perPage;
    int total;
    int totalPages;
    List<Person> data;

    ReqresResponse({
        this.page,
        this.perPage,
        this.total,
        this.totalPages,
        this.data,
    });

    factory ReqresResponse.fromJson(Map<String, dynamic> json) => new ReqresResponse(
        page        : json["page"],
        perPage     : json["per_page"],
        total       : json["total"],
        totalPages  : json["total_pages"],
        data        : new List<Person>.from(json["data"].map((x) => Person.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "page"        : page,
        "per_page"    : perPage,
        "total"       : total,
        "total_pages" : totalPages,
        "data"        : new List<dynamic>.from(data.map((x) => x.toJson())),
    };
}
