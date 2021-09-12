pragma solidity ^0.6.0;

contract HotelRoom {
    address payable public owner;
    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;
    
    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }
    
    function book() public payable {
        // Check price
        require(msg.value >= 2 ether, "not enough ether provided");
        // Check status
        require(currentStatus == Statuses.Vacant, "Currently occupied");
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
    }
}