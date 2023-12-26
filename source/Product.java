class Product{
  int id;
  String name;
  float importPrice;
  float retailPrice;
  String category;
  BitSet barcode;

  public Product(int id, String name, float importPrice, float retailPrice, String category, BitSet barcode) {
    this.id = id;
    this.name = name;
    this.importPrice = importPrice;
    this.retailPrice = retailPrice;
    this.category = category;
    this.barcode = barcode;
  }
}
