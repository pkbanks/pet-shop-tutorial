pragma solidity ^0.4.17;
contract Adoption {

  // adoptors is a publicly avail array, of 16 elements
  address[16] public adopters;

  function adopt(uint petId) public returns (uint) {

    // is petId positive and within the range
    // of allowable number of adopters?
    require(petId >= 0 && petId <= 15);

    // assign element of adopters array
    // to the address of the caller (msg.sender)
    adopters[petId] = msg.sender;

    // return pet.Id
    return petId;

  }

  // return all the adopters
  function getAdopters() public view returns (address[16]) {
    return adopters;
  }
}