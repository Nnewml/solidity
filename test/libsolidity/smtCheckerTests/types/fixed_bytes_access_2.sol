pragma experimental SMTChecker;
contract C {
	function f(bytes calldata x, uint y) external pure {
		require(x.length > 10);
		x[8][0];
		x[8][5%y];
	}
}
// ----
// Warning 4281: (143-146): CHC: Division by zero happens here.\nCounterexample:\n\nx = [13, 13, 13, 13, 13, 13, 9, 13, 38, 13, 13]\ny = 0\n\nTransaction trace:\nC.constructor()\nC.f([13, 13, 13, 13, 13, 13, 9, 13, 38, 13, 13], 0)
// Warning 6368: (138-147): CHC: Out of bounds access happens here.\nCounterexample:\n\nx = [12, 12, 12, 12, 12, 12, 12, 12, 38, 12, 12]\ny = 2\n\nTransaction trace:\nC.constructor()\nC.f([12, 12, 12, 12, 12, 12, 12, 12, 38, 12, 12], 2)
