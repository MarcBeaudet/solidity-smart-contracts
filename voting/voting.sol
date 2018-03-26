pragma solidity ^0.4.4;

contract Voting {

  struct Voter
    {
      uint weight;
      bool voted;  // if true, that person already voted
      uint vote;   // index of the voted proposal
    }

  adress public chairperson;

  mapping (bytes32 => uint8) public votesReceived;
  mapping(address => Voter) public voters;
  bytes32[] public candidateList;


  function Voting(bytes32[] candidateNames) public {
    chairperson = msg.sender;
    candidateList = candidateNames;
  }

  // Give `voter` the right to vote on this ballot.
  // May only be called by `chairperson`.
  function giveRightToVote(address voter){
      if (msg.sender != chairperson || voters[voter].voted)
          // `throw` terminates and reverts all changes to
          // the state and to Ether balances. It is often
          // a good idea to use this if functions are
          // called incorrectly. But watch out, this
          // will also consume all provided gas.
          throw;
      voters[voter].weight = 1;
  }

  function totalVotesFor(bytes32 candidate) view public returns (uint8) {
    require(validCandidate(candidate));
    return votesReceived[candidate];
  }

  function voteForCandidate(bytes32 candidate) public {
    require(validCandidate(candidate));
    Voter sender = voters[msg.sender];
    if (sender.voted) throw;
    sender.voted = true;
    votesReceived[candidate]  += 1;
  }

  function validCandidate(bytes32 candidate) view public returns (bool) {
    for(uint i = 0; i < candidateList.length; i++) {
      if (candidateList[i] == candidate) {
        return true;
      }
    }
    return false;
   }

   function kill() public {
      if(msg.sender == owner) selfdestruct(owner);
   }
}