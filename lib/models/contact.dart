class Contact {
  String name;
  int numberAccount;
  int id;

  Contact(this.id, this.name, this.numberAccount);

  @override
  String toString() {
    return 'Contact{id: $id, name: $name, numberAccount: $numberAccount}';
  }
}
