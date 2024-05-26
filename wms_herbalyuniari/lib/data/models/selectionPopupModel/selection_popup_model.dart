//digunakan untuk setting data ke dropdowns

class SelectionPopupModel{
  SelectionPopupModel(
      {this.id, required this.title, this.value, this.isSelected = flase}
  );
  int? id;

  String title;

  dynamic value;

  bool isSelected;
}