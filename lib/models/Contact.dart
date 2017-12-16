class Contact {
  int id;
  String avatar;
  String address;
  String description;
  String email;
  String name;
  String phone;
  String title;

  Contact({this.id, this.avatar, this.address, this.description, this.email,
      this.name, this.phone, this.title});

  Contact.fromJSON(Map data) {
    if (data.containsKey("id")) id = data["id"];
    if (data.containsKey("avatar")) avatar = data["avatar"];
    if (data.containsKey("address")) address = data["address"];
    if (data.containsKey("description")) description = data["description"];
    if (data.containsKey("email")) email = data["email"];
    if (data.containsKey("name")) name = data["name"];
    if (data.containsKey("phone")) phone = data["phone"];
    if (data.containsKey("title")) title = data["title"];
  }
}