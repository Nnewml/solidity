==== Source: A ====
pragma abicoder               v2;

contract C {
    struct Item {
        uint[] y;
    }

    function get() external view returns(Item memory) {}
}
==== Source: B ====
import "A";

contract Test {
    function foo() public view {
        C(address(0x00)).get();
    }
}
// ----
// TypeError 2428: (B:70-92): The type of return parameter 1, struct C.Item, is only supported in ABI coder v2. Use "pragma abicoder v2;" to enable the feature.
