pragma solidity ^0.8.1;

contract Coursetro {
    string fName;
    uint8 age;

    event Instructor (
        string fName,
        uint8 age
    );

    function setInstructor(string memory _fName, uint8 _age) public {
        fName = _fName;
        age = _age;
        emit Instructor(_fName, _age);
    }
    
    function getInstructor() public view returns (string memory, uint8) {
        return (fName, age);
    }
}