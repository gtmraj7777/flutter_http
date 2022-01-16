
class User
{
  int userId ;
  String name;

  User({required this.userId, required this.name});

factory  User.fromJson(Map<String,dynamic> map)
  {
    return User(
        userId : map["id"],
      name : map["title"],

    );
  }

}