class LoginRequestModel {
  final String? name;
  final DateTime? birthDate;

  LoginRequestModel(
     this.name,
     this.birthDate,
  );

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) {
    DateTime birthDate = DateTime.tryParse(json['birthDate'] as String) ?? DateTime.now();

    return LoginRequestModel(
      json['name'] as String,
      birthDate,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['birthDate'] = birthDate!.toIso8601String();
    return data;
  }
}
