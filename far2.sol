pragma solidity ^0.4.0;
contract ArrayRR {

    address creator;
    uint8 arraylength = 10;
    uint8[10] integers; // NOTE 1 see below
    int8 setarraysuccessful = -1; // 1 success, 0 fail, -1 not yet tried

    function ArrayRR() public
    {
        creator = msg.sender;
        uint8 x = 0;
        while(x < integers.length)
        {
        	integers[x] = 1; // initialize array to all zeros
        	x++;
        }
    }
    
    function setArray(uint8[10] incoming) public  // NOTE 2 see below. Also, use enough gas.
    {
    	setarraysuccessful = 0;
    	uint8 x = 0;
        while(x < arraylength)
        {
        	integers[x] = incoming[x]; // initialize array to all zeros
        	x++;
        }
        setarraysuccessful = 1;
    	return;
    }
    
    function getArraySettingResult() public constant returns (int8)
    {
    	return setarraysuccessful;
    }
    
    function getArray() public constant returns (uint8[10])  // NOTE 3 see below
    {
    	return integers;
    }
    
    function getValue(uint8 x) public constant returns (uint8)
    {
    	return integers[x];
    }
    
    /**********
     Standard kill() function to recover funds 
     **********/
    
    function kill() public
    { 
        if (msg.sender == creator)
        {
            suicide(creator);  // kills this contract and sends remaining funds back to creator
        }
    }
}
