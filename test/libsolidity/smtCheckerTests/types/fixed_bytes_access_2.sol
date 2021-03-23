pragma experimental SMTChecker;
contract C {
	function f(bytes calldata x, uint y) external pure {
		require(x.length > 10);
		x[8][0];
		x[8][5%y];
	}
}
// ----
// Warning 4281: (143-146): CHC: Division by zero happens here.\nCounterexample:\n\nx = [38, 38, 38, 38, 38, 38, 9, 38, 38, 38, 13]\ny = 0\n\nTransaction trace:\nC.constructor()\nC.f([38, 38, 38, 38, 38, 38, 9, 38, 38, 38, 13], 0)
