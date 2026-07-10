abstract class PaymentMethod{
  double? amount;
  PaymentMethod(this.amount);

  void processPayment();

  void receipt(){
    print("Your payment amount is $amount bath");
  }
}

class CreditCard extends PaymentMethod {
  String cardNumber;
  String cardHolder;
  String cvv;
  double feePercentage = 0.03;

  CreditCard(double amount,this.cardNumber,this.cardHolder,this.cvv,this.feePercentage): super(amount);
  @override
  void processPayment() {
    double netAmong = amount! + (amount! * feePercentage);
    print("Charging to card: $cardNumber Holder is $cardHolder");
    print("Your cvv is $cvv");
    print("Your payment credit card is $netAmong bath");
  }
}
class Promtpay extends PaymentMethod{
  String phonNumber;
  Promtpay(double among,this.phonNumber):super(among);
  @override
  void processPayment(){
    print("Phon number :$phonNumber ");
    print("Your payment promtpay is $amount bath");
  }
}
class CashOnDelivery extends PaymentMethod{
  String address;
  String customrtPhon; 
  double serviceCharge = 20.0;
  CashOnDelivery(double among,this.address,this.customrtPhon,this.serviceCharge):super(among);
  @override
  void processPayment(){
    double netAmong =  amount! + serviceCharge;
    print("Delivery Addess is $address");
    print("Customer phon id $customrtPhon");
    print("Your payment cash on deliverly is $netAmong bath");
  }
}
void main(){
  PaymentMethod card = CreditCard(1000,"123-426-xxxx-789", "korn", "1xx4", 0.03);
  card.processPayment();
  print("-"*50 );
  PaymentMethod promt = Promtpay(1000, "012-xxxx-345");
  promt.processPayment();
  print("-"*50);
  PaymentMethod delivery = CashOnDelivery(1000, "12/3 raod45","012-xxxx-789", 20);
  delivery.processPayment();
}