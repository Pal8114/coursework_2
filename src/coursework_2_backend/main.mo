import Array "mo:base/Array";
import Debug "mo:base/Debug";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Qs "./Qs";

actor {

  /**
   * Canister封装快排
   */
  public func qsort(arr:[Int]) : async [Int] {
    if (2 > arr.size()) {
      return arr;
    };
    var newArr:[var Int] = Array.thaw(arr);
    Qs.quicksort(newArr);
  };

};