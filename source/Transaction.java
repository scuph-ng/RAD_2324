class Transaction{
  int id;
  int staffID;
  int customerID;
  float total;

  public Transaction(int id, int staffID, int customerID, float total) {
    this.id = id;
    this.staffID = staffID;
    this.customerID = customerID;
    this.total = total;
  }
}
