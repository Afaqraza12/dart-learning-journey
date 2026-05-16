
//Add premium discount logic practice script
void main() {
  double cartTotal = 150.0;
  bool isPremiumMember = true;
  String couponCode = "Save20";
  int maxDiscount = 40;
  if (isPremiumMember == true && couponCode == "Save20") {
    double alocated = ((30 / 100) * cartTotal);
    if (alocated <= maxDiscount) {
      print(
        "Your purches with the discount applied is ${cartTotal - alocated}",
      );
    } else {
      print("Discount exceeding the max cap $maxDiscount");
      print("final discount is ${cartTotal - maxDiscount}");
    }
  } else if (isPremiumMember == false && couponCode == "Save20") {
    double allacoated = ((20 / 100) * cartTotal);
    if (allacoated <= maxDiscount) {
      print(
        "Your purches with the discount applied is ${cartTotal - allacoated}"
      );
    } else {
      print("Max possiable discount applieed ${cartTotal - maxDiscount}");
    }
  } else {
    print(
      "You didint use any discount code Your  total price will be $cartTotal",
    );
  }
}
