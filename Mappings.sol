pragma solidity ^0.6.0;

contract Mappings {
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    
    struct Book {
        string title;
        string author;
    }
    
    constructor() public {
        names[1] = "ken";
        names[2] = "ron";
        names[3] = "ichigo";
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
}