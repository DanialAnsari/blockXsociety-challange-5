pragma solidity ^0.6.0;





contract Challange5{
    
    uint256 public time;
    
    function depositEther(uint256 _minutes) public payable{
        //ether transfered to contract
        time=now+(1 minutes*_minutes);
    }
    
    function withdrawEther() public {
        require(now>time,"You can withdraw until your time runs out");
        msg.sender.transfer(address(this).balance);
    }
    
    
}

