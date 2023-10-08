// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteDtoImpl _$$NoteDtoImplFromJson(Map<String, dynamic> json) =>
    _$NoteDtoImpl(
      title: json['title'] as String,
      document: json['document'] as List<dynamic>,
      date: DateTime.parse(json['date'] as String),
      colorString: json['colorString'] as String,
      serverTimeStamp: const ServerTimeStampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$NoteDtoImplToJson(_$NoteDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'document': instance.document,
      'date': instance.date.toIso8601String(),
      'colorString': instance.colorString,
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };
