import 'package:freezed_annotation/freezed_annotation.dart';

part '{{filename.snakeCase()}}_cubit.freezed.dart';
part '{{filename.snakeCase()}}_cubit.g.dart';

@freezed
class {{filename.pascalCase()}}State with _${{filename.pascalCase()}}State {

  factory {{filename.pascalCase()}}State() = _{{filename.pascalCase()}}State;

  factory {{filename.pascalCase()}}State.fromJson(Map<String, dynamic> json) => _${{filename.pascalCase()}}StateFromJson(json);
}