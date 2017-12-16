class Contact {
  final int id;
  final String avatar;
  final String address;
  final String direction;
  final String email;
  final String name;
  final String phone;
  final String title;

  Contact({this.id, this.avatar, this.address, this.direction, this.email,
      this.name, this.phone, this.title});
}

List<Contact> contacts = [
  new Contact(id: 0, name: "Juan"),
  new Contact(id: 1, name: "Hugo"),
  new Contact(id: 2, name: "Hansel"),
  new Contact(id: 3, name: "Javier"),
  new Contact(id: 4, name: "Miguel"),
  new Contact(id: 5, name: "Jacinto"),
];