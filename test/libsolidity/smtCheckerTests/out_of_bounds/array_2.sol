pragma experimental SMTChecker;

contract C {
	uint[] a;
	uint l;
	function p() public {
		require(a.length < type(uint).max - 1);
		a.push();
		++l;
	}
	function q() public {
		require(a.length > 0);
		a.pop();
		--l;
	}
	function r() public view returns (uint) {
		require(l > 0);
		return a[l - 1]; // safe access
	}
}
// ----
// Warning 4984: (145-148): CHC: Overflow (resulting value larger than 2**256 - 1) might happen here.
// Warning 2661: (145-148): BMC: Overflow (resulting value larger than 2**256 - 1) happens here.
