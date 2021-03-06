import 'package:json_annotation/json_annotation.dart';

part 'point.g.dart';

@JsonSerializable(nullable: false)

///Geographical point on the canvas.
class Point implements Comparable<Point> {
  ///absolue positions
  final double x, y;

  Point(this.x, this.y);

  @override
  String toString() => ' X: $x, Y:$y';
  Map<String, Object> toJson() => _$PointToJson(this);
  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);

  Point clone(Point point) => Point(point.x, point.y);

  @override
  int compareTo(Point anotherPoint) => y == anotherPoint.y
      ? x.compareTo(anotherPoint.x)
      : y.compareTo(anotherPoint.y);
  @override
  bool operator ==(Object point) {
    if (point is Point) {
      return y == point.y ? x == point.x : y == point.y;
    }
    return false;
  }
  
  bool operator <(Object point) {
    if (point is Point) {
      return y == point.y ? x <= point.x : y <= point.y;
    }
    return false;
  }

  bool operator >(Object point) {
    if (point is Point) {
      return y == point.y ? x >= point.x : y >= point.y;
    }
    return false;
  }
}
