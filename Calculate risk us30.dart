double positionSizeCalculator(
  int leverage, {
  required double accountBalance,
  required double riskparacentage,
}) {
  double riskAmount = accountBalance * (riskparacentage / 100);

  double riskAmountTrade = riskAmount * leverage;
  return riskAmountTrade;
}

void main() {
  // low risk safe side
  print(
    "US30 low risk safe trade is ${positionSizeCalculator(1, accountBalance: 1000.0, riskparacentage: 1.0)}",
  );

  // high risk one
  print(
    "Us30 scalp trade positaion size High risk ;  ${positionSizeCalculator(50, accountBalance: 5000.0, riskparacentage: 2.0)}",
  );
}
