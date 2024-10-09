class Number {
  int value;
  String order;

  Number(this.value, this.order);

  bool isEven() {
    return value % 2 == 0;
  }

  @override
  String toString() {
    return value.toString();
  }
}
