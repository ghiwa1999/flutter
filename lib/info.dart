//import 'package:jaguar_serializer/jaguar_serializer.dart';
//part 'info.jser.dart';
//class Info{
//  final int id;
//  final String name;
//  final String description;
//  final double rate;
//  final int rooms;
//
//  Info({this.id, this.name, this.description, this.rate, this.rooms});
//  factory Info.fromJson(Map<String, dynamic> json) {
//   return Info(
//     id: json['id'],
//     name: json['name'],
//     description: json['decription'],
//     rate: json['rate'],
//     rooms: json['rooms'],
//   );
//  }
//}
//class geo_Loc{
//  final double long, lat;
//
//  geo_Loc({this.long, this.lat});
//  factory geo_Loc.fromJson(Map<String, dynamic> json) {
//    return geo_Loc(
//      long: json['long'],
//      lat: json['lat'],
//    );
//  }
//}
//class hotline{
//  final int landline, cell;
//
//  hotline({this.landline, this.cell});
//  factory hotline.fromJson(Map<String, dynamic> json) {
//    return hotline(
//      landline: json['landline'],
//      cell: json['cell'],
//    );
//  }
//}
//class location{
//  final String country, city;
//
//  location({this.country, this.city});
//  factory location.fromJson(Map<String, dynamic> json) {
//    return location(
//      country: json['country'],
//      city: json['city'],
//    );
//  }
//
//}
//@GenSerializer()
//class InfoSerializer extends Serializer<Info> with _$InfoSerializer {
//}
//@GenSerializer()
//class locationSerializer extends Serializer<location> with _$locationSerializer {
//}
//@GenSerializer()
//class hotlineSerializer extends Serializer<hotline> with _$hotlineSerializer {
//}
//@GenSerializer()
//class geo_LocSerializer extends Serializer<geo_Loc> with _$geo_LocSerializer {
//}