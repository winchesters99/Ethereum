pragma solidity ^0.4.2;

contract exp{
    uint number;
    function storenumber() public{
        number=200;
    }
    
    function inc() public{
    number = number +1 ;   
    }
    
    function dec() public{
        number = number -1;
    }
    
    function fetch() public constant returns(uint) {
        return number;
    }
    
    function setnumber(uint newvalue) public{
        number = newvalue;
    }
}
