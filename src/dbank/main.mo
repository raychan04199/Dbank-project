// Single import for Debug
import Debug "mo:base/Debug";


actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 98264872354387;

  // Using Debug to print a message
  Debug.print(debug_show(id));

}
