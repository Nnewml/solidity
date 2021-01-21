pragma experimental SMTChecker;
contract C {
	int x;

	function g() public  {
		x = 42;
	}

	function f() public {
		x = 0;
		bool success = false;
		try this.g() {
			success = true;
		} catch (bytes memory s) {
			assert(x == 0); // should hold
		}
		assert(success); // fails for now, since external call is over-approximated (both success and fail are considered possible) for now even for known code
	}
}
// ----
// Warning 5667: (195-209): Unused try/catch parameter. Remove or comment out the variable name to silence this warning.
// Warning 6328: (253-268): CHC: Assertion violation happens here.\nCounterexample:\nx = 0\nsuccess = false\ns = []\n\nTransaction trace:\nC.constructor()\nState: x = 0\nC.f()
