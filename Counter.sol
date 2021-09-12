pragma solidity ^0.6.0;

contract Counter {
    uint count; // state variable
    
    constructor() public {
        count = 0;
    }
    
    function getCount() public view returns(uint) {
        return count;
    }
    
    function incrementCount() public {
        count = count + 1;
    }
}

/*
pragma solidity ^0.6.0;

contract Counter {
    uint public count = 0; // state variable
    
    function incrementCount() public {
        count = count + 1;
    }
}
*/