import Int "mo:base/Int";
// Single import for Debug
import Debug "mo:base/Debug";


actor DBank {
  stable var currentValue = 300;
  //currentValue := 100;

  //let id = 123;
  //letid2 = rrkah-fqaaa-aaaaa-aaaaq-cai;

  // Using Debug to print a message
  //Debug.print(debug_show(id));

  public func topUp(amount: Nat){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount:Nat){
    let tempValue: Int = currentValue - amount;
    if (tempValue >=0){
    currentValue -=amount;
    Debug.print(debug_show(currentValue));
    }else {
      Debug.print("Not enough Blance");
    }
  };
   public query func checkBlance(): async Nat {
    return currentValue;
   };
  //topUp();

}


