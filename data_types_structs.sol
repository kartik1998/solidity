pragma solidity ^0.6.0;
// Topics Covered [Variables: {State, Local}, data types, Custom data structures]

contract MyContract {
    string public myString = "Hello, World";
    bytes32 public myBytes32 = "Hello, World";
    int public myInt = 1;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    struct Person {
        uint id;
        string name;
    }
    
    Person public user = Person(1, "user1");
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}