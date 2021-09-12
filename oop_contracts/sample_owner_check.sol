pragma solidity ^0.6.0;

contract OOP {
    string secret;
    address owner;
    
    constructor(string memory _secret) public {
        secret = _secret;
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }
    function getSecret() public view onlyOwner returns(string memory) {
        return secret;
    }
}