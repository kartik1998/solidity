pragma solidity ^0.6.0; 

contract Conditionals {
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
    address public owner;
    
    constructor() public {
        owner = msg.sender;
    }
    
    function isEvenNumber(uint _number) public view returns(bool) {
        if(_number % 2 == 0) {
            return true;
        }
        return false;
    }
    
    function countEvenNumbers() public view returns(uint) {
        uint count = 0;
        for(uint i = 0; i < numbers.length; i++) {
            if(isEvenNumber(numbers[i])) {
                count++;
            }
        }
        return count;
    }
    
    function isOwner() public view returns(bool) {
        return owner == msg.sender;
    }
}