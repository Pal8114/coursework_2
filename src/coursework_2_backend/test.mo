
import Array "mo:base/Array";
import Debug "mo:base/Debug";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Qs "./Qs";

/**
 * Moc 测试
 */
let testArray:[var Int] = [var 18, 8, 1, 33, 77, 18, 23, 99, 8];
let newArray = Qs.quicksort(testArray);
for (c in newArray.vals()) {
    Debug.print(Int.toText(c));
};