//SPDX-Licence-Identifier:MIT
pragma solidity 0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {

    FundMe fundMe;
    // uint256 number=1;
    function setUp() external {
        // number =2;

     fundMe =new FundMe();
    }

    function testDemo() public {
        //console.log(number);
        //console.log("Hello!");  //if youwant to see console.log o/p run : forge test -vv
        // assertEq(number,2);
    }


    function testMinimumDollarIsFive() public{
   assertEq(fundMe.MINIMUM_USD(),5e18);
    }



    function testOwnerIsMsgSender() public{
            
             assertEq(fundMe.i_owner(),address(this));

    }
}
