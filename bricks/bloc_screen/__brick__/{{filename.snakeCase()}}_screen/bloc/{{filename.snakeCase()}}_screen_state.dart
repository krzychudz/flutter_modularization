import 'package:freezed_annotation/freezed_annotation.dart';

part '{{filename.snakeCase()}}_screen_state.freezed.dart';
part '{{filename.snakeCase()}}_screen_state.g.dart';

@freezed
class {{filename.pascalCase()}}ScreenState with _${{filename.pascalCase()}}ScreenState {

  factory {{filename.pascalCase()}}ScreenState() = _{{filename.pascalCase()}}ScreenState;

  factory {{filename.pascalCase()}}ScreenState.fromJson(Map<String, dynamic> json) => _${{filename.pascalCase()}}ScreenStateFromJson(json);
}