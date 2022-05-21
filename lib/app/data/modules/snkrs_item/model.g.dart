// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SnkrsItem _$SnkrsItemFromJson(Map<String, dynamic> json) => SnkrsItem(
      id: json['id'] as int,
      price: json['price'] as int,
      name: json['name'] as String,
      subname: json['subname'] as String,
      imageUrl: json['imageUrl'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$SnkrsItemToJson(SnkrsItem instance) => <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'name': instance.name,
      'subname': instance.subname,
      'imageUrl': instance.imageUrl,
      'url': instance.url,
    };
