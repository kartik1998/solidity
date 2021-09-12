pragma solidity ^0.6.0;

contract Ownable {
    address owner;
    constructor() public {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }
}

contract SecretVault {
    string secret;
    
    constructor(string memory _secret) public {
        secret = _secret;
    }
    
    function getSecret() public view returns(string memory) {
        return secret;
    }
}

contract OOP is Ownable {
    address secretVaultAddress;
    
    constructor(string memory _secret) public {
        SecretVault _secretVault = new SecretVault(_secret);
        secretVaultAddress = address(_secretVault);
        super;
    }
    
    function getSecret() public view onlyOwner returns(string memory) {
        SecretVault _secretVault = SecretVault(secretVaultAddress);
        return _secretVault.getSecret();
    }
}