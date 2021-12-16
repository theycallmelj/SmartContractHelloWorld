// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract CapsaicinkidHelloWorld {

    uint256 number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number = num;
    }

    function uint2str(uint256 _i) internal pure returns (string memory str) {
            if (_i == 0) {
                return "0";
            }
            uint256 j = _i;
            uint256 length;
            while (j != 0) {
                length++;
                j /= 10;
            }
            bytes memory bstr = new bytes(length);
            uint256 k = length;
            j = _i;
            while (j != 0) {
                bstr[--k] = bytes1(uint8(48 + j % 10));
                j /= 10;
            }
    str = string(bstr);
    }
    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (string memory ){
        string memory ans = "Hello world. your number is ";
       
        return string(abi.encodePacked(ans, uint2str(number) ));
    }
}
