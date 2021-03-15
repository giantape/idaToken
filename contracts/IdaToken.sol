pragma solidity ^0.4.17;

contract IdaToken {
    // Constructor
    // Set the total number of tokens
    // Read the number of tokens
    uint256 public totalSupply;

    function IdaToken() public {
        totalSupply = 1000000;
    }
}