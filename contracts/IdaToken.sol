pragma solidity ^0.4.17;

contract IdaToken {
    uint256 public totalSupply;
    string public name = 'Ida Token';
    string public symbol = 'IDM';
    string public standard = 'Ida Token v1.0';

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;
    function IdaToken(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }

    // TransferToken
    function transfer(address _to, uint256 _value) public returns(bool success){
        // Exception if account doesn't have enough money
        require(balanceOf[msg.sender] >= _value);
        // return a bool
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        Transfer(msg.sender, _to, _value);
        // Transfer Event 
        return true;
    }
}
