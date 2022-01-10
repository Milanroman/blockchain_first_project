// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    uint256 favoritNumberNew = 5;
    bool favoriteBool = false;
    string favoritString = "String";
    int256 favoriteInt = -5;
    address favoritAddress = 0x8dEDF05D19C0bb58e714d2e61582e6816b334dbe;
    bytes32 favoritBytes = "cat";

    uint256 favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People public person = People({
        favoriteNumber: 2,
        name: "Patrick"
    });

    People[] public people;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view, pure 
    function retrieveView() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
    }

}