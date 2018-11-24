pragma solidity ^0.4.23;

contract Nicknames {
  address public owner;

  constructor() public {
    owner = msg.sender;
  }

  modifier restricted() {
    if (msg.sender == owner) _;
  }
}
