contract C {
	function f(uint256 start, uint256 end, uint256[] calldata arr) external pure {
		arr[start:end];
	}
}
// ====
// EVMVersion: >=byzantium
// compileViaYul: also
// revertStrings: debug
// ----
// f(uint256,uint256,uint256[]): 2, 1, 0x80, 3, 1, 2, 3 -> FAILURE, hex"08c379a0", 0x20, 0x16, "Slice starts after end"
// f(uint256,uint256,uint256[]): 1, 5, 0x80, 3, 1, 2, 3 -> FAILURE, hex"08c379a0", 0x20, 0x1c, "Slice is greater than length"
