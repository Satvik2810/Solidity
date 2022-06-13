pragma solidity ^0.6.0;
contract SimpleStorage {

    uint256 favouritenumber; // this will gets initialised as 0

    struct people{
        uint256 favouritenumber;
        string name;
    }

    people[] public peeps;
    mapping(string => uint256) public name2favnum;

    // people public person = people({favouritenumber: 2, name: "Satvik"});

    function store(uint _favouritenumber) public{
        favouritenumber = _favouritenumber;
    }
    function retrieve() public view returns(uint256){
        return favouritenumber;
    }
    function addpeeps(string memory _name, uint256 _favouritenumber) public{
        peeps.push(people(_favouritenumber, _name));
        name2favnum[_name] = _favouritenumber;
    }
}
