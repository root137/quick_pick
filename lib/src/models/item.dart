import 'dart:convert';

class Item {
  final String name;

  Item(
    this.name,
  );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  Item copyWith({
    String? name,
  }) {
    return Item(
      name ?? this.name,
    );
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['name'] ?? '',
    );
  }
}
