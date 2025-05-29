
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract VotingManager {
    struct Proposal {
        string title;
        string description;
        string department;
        uint256 endTime;
        uint256 yesVotes;
        uint256 noVotes;
        bool exists;
    }

    mapping(uint256 => Proposal) public proposals;
    mapping(address => mapping(uint256 => bool)) public hasVoted;
    uint256 public proposalCount;

    event ProposalCreated(uint256 id, string title);
    event Voted(address voter, uint256 proposalId, bool vote);

    function createProposal(string memory _title, string memory _description, string memory _department, uint256 _durationDays) external {
        proposalCount++;
        proposals[proposalCount] = Proposal({
            title: _title,
            description: _description,
            department: _department,
            endTime: block.timestamp + (_durationDays * 1 days),
            yesVotes: 0,
            noVotes: 0,
            exists: true
        });

        emit ProposalCreated(proposalCount, _title);
    }

    function vote(uint256 _proposalId, bool _voteYes) external {
        require(proposals[_proposalId].exists, "Proposal not found");
        require(block.timestamp < proposals[_proposalId].endTime, "Voting ended");
        require(!hasVoted[msg.sender][_proposalId], "Already voted");

        hasVoted[msg.sender][_proposalId] = true;
        if (_voteYes) {
            proposals[_proposalId].yesVotes++;
        } else {
            proposals[_proposalId].noVotes++;
        }

        emit Voted(msg.sender, _proposalId, _voteYes);
    }

    function getProposal(uint256 _id) external view returns (Proposal memory) {
        return proposals[_id];
    }
}
