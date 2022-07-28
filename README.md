<h1 align="center">Implementation of Gitcoin Aqueducts with Superfluid
</h1>

<img  width="150" align="center" padding="0 0 10px" alt="Superfluid logo" src="https://github.com/superfluid-finance/protocol-monorepo/raw/dev/sf-logo.png" /> + <img  width="150" align="center" padding="0 0 10px" alt="Superfluid logo" src="https://global.discourse-cdn.com/standard11/uploads/gitcoin1/original/1X/7074a77ab7768030574e7b2aebeff2d491886f55.png" /> 
<p>

`CREATE_NEW_RESOLVER=1` forces the script to deploy a new resolver even if there's one already deployed (this is the case on Ethereum testnets). That's useful because otherwise the script would try to use the pre-existing resolver and have failing transactions due to lacking permissions.