// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$InfoSerializer implements Serializer<Info> {
  @override
  Map<String, dynamic> toMap(Info model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'id', model.id);
    setMapValue(ret, 'name', model.name);
    setMapValue(ret, 'description', model.description);
    setMapValue(ret, 'rate', model.rate);
    setMapValue(ret, 'rooms', model.rooms);
    return ret;
  }

  @override
  Info fromMap(Map map) {
    if (map == null) return null;
    final obj = Info(
        id: map['id'] as int ?? getJserDefault('id'),
        name: map['name'] as String ?? getJserDefault('name'),
        description:
            map['description'] as String ?? getJserDefault('description'),
        rate: map['rate'] as double ?? getJserDefault('rate'),
        rooms: map['rooms'] as int ?? getJserDefault('rooms'));
    return obj;
  }
}

abstract class _$locationSerializer implements Serializer<location> {
  @override
  Map<String, dynamic> toMap(location model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'country', model.country);
    setMapValue(ret, 'city', model.city);
    return ret;
  }

  @override
  location fromMap(Map map) {
    if (map == null) return null;
    final obj = location(
        country: map['country'] as String ?? getJserDefault('country'),
        city: map['city'] as String ?? getJserDefault('city'));
    return obj;
  }
}

abstract class _$hotlineSerializer implements Serializer<hotline> {
  @override
  Map<String, dynamic> toMap(hotline model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'landline', model.landline);
    setMapValue(ret, 'cellular', model.cellular);
    return ret;
  }

  @override
  hotline fromMap(Map map) {
    if (map == null) return null;
    final obj = hotline(
        landline: map['landline'] as int ?? getJserDefault('landline'),
        cellular: map['cellular'] as int ?? getJserDefault('cellular'));
    return obj;
  }
}

abstract class _$geo_LocSerializer implements Serializer<geo_Loc> {
  @override
  Map<String, dynamic> toMap(geo_Loc model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'long', model.long);
    setMapValue(ret, 'lat', model.lat);
    return ret;
  }

  @override
  geo_Loc fromMap(Map map) {
    if (map == null) return null;
    final obj = geo_Loc();
    return obj;
  }
}
