// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, file_names

class ICardItem {
  final name;
  final price;
  final duration;
  final discount;
  final desc;
  final image;

  ICardItem(this.name, this.price, this.duration, this.discount, this.desc,
      this.image);
}
