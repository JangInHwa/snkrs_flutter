import 'package:json_annotation/json_annotation.dart';
part 'model.g.dart';

// g.dart 파일 생성 : flutter pub run build_runner build --delete-conflicting-outputs

@JsonSerializable()
class SnkrsItem {
  int id;
  int price;
  String name;
  String subname;
  String imageUrl;
  String url;

  SnkrsItem({
    required this.id,
    required this.price,
    required this.name,
    required this.subname,
    required this.imageUrl,
    required this.url,
  });

  factory SnkrsItem.fromJson(Map<String, dynamic> json) => _$SnkrsItemFromJson(json);

  /// `toJson`은 클래스가 JSON 인코딩의 지원을 선언하는 규칙입니다.
  /// 이의 구현은 생성된 private 헬퍼 메서드 `_$UserToJson`을 단순히 호출합니다.
  Map<String, dynamic> toJson() => _$SnkrsItemToJson(this);
}
