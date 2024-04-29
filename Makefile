-include .env

# Installation commands

install:; make forge-install && npm install

forge-install:
	rm -rfv lib \
	&& forge install --no-git foundry-rs/forge-std@v1.7.6 \
	&& forge install --no-git OpenZeppelin/openzeppelin-contracts@v5.0.1 \
	&& forge install --no-git OpenZeppelin/openzeppelin-contracts-upgradeable@v5.0.1 \
	&& forge install --no-git dl-solarity/solidity-lib@2.7.0

# Developement commands

compile:; forge build

test:; forge test -vv

coverage:; forge coverage

coverage-lcov:; forge coverage --report lcov

gas:; forge test --gas-report

clean:; forge clean

# Network commands

private-network:; anvil

private-network-fork:; anvil --fork-url https://mainnet.infura.io/v3/${INFURA_KEY}

deploy-localhost:; forge script scripts/deploy.s.sol --fork-url http://localhost:8545 --broadcast

deploy-goerli:; forge script scripts/deploy.s.sol --rpc-url https://goerli.infura.io/v3/${INFURA_KEY} --private-key ${PRIVATE_KEY} --broadcast --verify -vvvv

# Types and docs commands

generate-types:; typechain --discriminate-types --target ethers-v6 --out-dir generated-types "out/**/*.json"

generate-docs:; forge doc

# Linting commands

lint-fix:; make lint-sol-fix && make lint-json-fix

lint-json-fix:; npx prettier --write "./**/*.json"

lint-sol-fix:; npx prettier --write "contracts/**/*.sol"
