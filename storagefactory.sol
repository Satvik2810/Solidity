// SPDX-License_Identifier:MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage{

    SimpleStorage[] public simplestoragearray;

    function createSimpleStorageContract() public{
        SimpleStorage simplestorage = new SimpleStorage();
        simplestoragearray.push(simplestorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        //Address and ABI, ABI stands for Application Binary Interface
    SimpleStorage(address (simplestoragearray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return SimpleStorage(address(simplestoragearray[_simpleStorageIndex])).retrieve();
    }

}
