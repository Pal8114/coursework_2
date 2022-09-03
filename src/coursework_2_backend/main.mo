import Array "mo:base/Array";
import Debug "mo:base/Debug";
import Int "mo:base/Int";
import Nat "mo:base/Nat";

actor {

  public func qsort(arr:[Int]) : async [Int] {
    var newArr:[var Int] = Array.thaw(arr);
    let qs = QS();
    qs.quicksort(newArr, 0, newArr.size()-1);
    Array.freeze(newArr)
  };
  
  class QS() {
    public func quicksort(a : [var Int], lo : Nat, hi : Nat) {
      if (lo < hi) {
        let p = partition(a, lo, hi);
        quicksort(a, lo, p);
        quicksort(a, p + 1, hi); 
      }
    };

    func swap(a : [var Int], i : Nat, j : Nat) {
      let temp = a[i];
      a[i] := a[j];
      a[j] := temp;
    };

    func cmpi(i : Int, j : Int) : Int {
      i - j;
    };

    func partition(a : [var Int], lo : Nat, hi : Nat) : Nat {
      let pivot = a[lo];
      var i = lo;
      var j = hi;
      loop {
        while (cmpi(a[i], pivot) < 0) {
          i += 1;
        };

        while (cmpi(a[j], pivot) > 0) {
          j -= 1;
        };

        if (i >= j) {
          return j;
        };

        swap(a, i, j);
      };
    };
  };
};