import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:co_flutter_core/core.dart';

import 'response_converter.dart';

part 'single_m_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SingleMResponse<T extends Model, G extends Jsonable> extends Equatable {
  const SingleMResponse(this.data, this.meta);

  @ResponseConverter()
  final T data;
  @ResponseConverter()
  final G meta;

  factory SingleMResponse.fromJson(Map<String, dynamic> json) =>
      _$SingleMResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SingleMResponseToJson(this);

  @override
  List<Object?> get props => [data, meta];
}
