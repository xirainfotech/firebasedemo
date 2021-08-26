class UserModels {
  final String name;
  final String image;
  final int age;
  final int weight;

  UserModels(this.weight, this.image, {this.name, this.age});

  UserModels.fromMap(Map<String, dynamic> map)
      : this.name = map['name'],
        this.age = map['age'],
        this.image = map['image'],
        this.weight = map['weight'];
}
