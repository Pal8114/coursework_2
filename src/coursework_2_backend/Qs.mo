import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Array "mo:base/Array";
import Debug "mo:base/Debug";

module {

    /**
     * 快排
     */
    public func quicksort(arr: [var Int]) : [Int] {
        let obj = QsObj();
        obj.sort(arr, 0, arr.size() - 1);
        Array.freeze(arr)
    };

    /**
     * 分装类
     */
    class QsObj() {

        public func sort(a : [var Int], lo : Nat, hi : Nat) {
            if (lo < hi) {
                let p = partition(a, lo, hi);
                sort(a, lo, p);
                sort(a, p + 1, hi); 
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
                i += 1;
                j -= 1;
            };
        };        
    }
}

