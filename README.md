<h1 align="center">Implementation of Gitcoin Aqueducts with Superfluid
</h1>

<p align="center">
<img  width="150" align="center" padding="0 0 10px" alt="Superfluid logo" src="https://github.com/superfluid-finance/protocol-monorepo/raw/dev/sf-logo.png" /> ➕ <img src=""/> <img  width="150" align="center" padding="0 0 10px" alt="Superfluid logo" src="https://global.discourse-cdn.com/standard11/uploads/gitcoin1/original/1X/7074a77ab7768030574e7b2aebeff2d491886f55.png"/> 
</p>

In this project, an implementation of superfluid flows with gitcoin aqueducts was developed. With the objective of making quadratic votes and distributing the funds with solid transmissions.

## Let's use an example.

We have a $1000 survey, these funds will be distributed among 4 projects.

The first thing that is needed to be able to distribute the funds is to start the voting round, where each person will be able to vote for the project they want, the person will also have to contribute monetarily to the project in order to vote.
After the quadratic voting rounds are closed, we start distributing the funds with the quadratic function.

The quadratic function distributes funds using its formula, which is this.



The quadratic function does not look at how much money was contributed to the project, but how many people supported the project.

After we distribute the funds, the corresponding funds will be transferred to each project in the superfuild stream.

## Functions

Some of the features we use in this contract are:

`makePoll` create a new poll, we can see the variables that a poll has in the `Poll` structure.

`addCandidate` Add candidate to the polls.

`approveVoter` Adds a voter to the list of approved voters.

`transferAdmin` Change the administrative privileges of a survey.

`removedApprovedVoter` Remove a voter from the approved list.

`completePoll` changes the poll to the reveal phase and returns the result of the poll.