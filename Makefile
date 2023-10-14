forge-install:
	rm -rfv lib \
	&& forge install --no-git foundry-rs/forge-std@v1.7.1 \
	&& forge install --no-git OpenZeppelin/openzeppelin-contracts@v5.0.0 \
	&& forge install --no-git OpenZeppelin/openzeppelin-contracts-upgradeable@v5.0.0 \
	&& forge install --no-git dl-solarity/solidity-lib