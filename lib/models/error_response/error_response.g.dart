// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    _ErrorResponse(
      message: json['message'] as String?,
      documentationUrl: json['documentation_url'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ErrorResponseToJson(_ErrorResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'documentation_url': instance.documentationUrl,
      'status': instance.status,
    };
