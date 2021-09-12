pragma solidity ^0.6.0;

contract HotelRoom {
    address payable public owner;
    enum Statuses { Vacant, Occupied }
    event Occupy(address _occupant, uint _value);
    Statuses currentStatus;
    
    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }
    
    modifier onlyWhileVacant {
        // Check status
        require(currentStatus == Statuses.Vacant, "Currently occupied");
        _;
    }
    
    modifier costs(uint _amount) {
        require(msg.value >= _amount, "not enough ether provided");
        _;
    }
    
    receive() external payable onlyWhileVacant costs(2 ether){
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}