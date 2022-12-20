pragma solidity >=0.7.0 < 0.9.0;


contract highestTransaction{
 uint t1;
 uint t2;
 uint public highest;
 address public admin;


 constructor() payable{
  admin = msg.sender;
 }

 modifier onlyAdmin{
  require(admin == msg.sender, "only admin has access");
  _;
 }

 function set(uint _t1, uint _t2) public onlyAdmin{
  t1 = _t1;
  t2 = _t2;
 }

 function get() public onlyAdmin returns(uint){
  if (t1 > t2){
   highest = t1;
   return highest;
  }
  else{
   highest = t2;
   return highest;
  }
 }
}
