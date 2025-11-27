# Foundry template

Template foundry repository for ad-hoc smart contracts development.

### How to install

First, install `foundryup` (foundry toolchain installer)

```bash
curl -L https://foundry.paradigm.xyz | bash
```

Second, install Foundry itself. This will download `forge`, `cast`, `anvil`, and `chisel` binaries

```bash
foundryup
```

Third, use `make` to install local dependencies:

```bash
make install
```

### How to use

The template works out of the box. To clean up the repo, you may need to delete the mock contracts and tests.

Also check out relevant dependencies in the `Makefile`.

#### Test

To run the tests, execute the following command:

```bash
make test
```

Or to see the coverage, run:

```bash
make coverage
```

#### Local deployment

To deploy the contracts locally, run the following commands (in the different terminals):

```bash
make private-network
make deploy-localhost
```

### Other niceties

- The template comes with presetup `prettier` and `slippy` that lint the project via `husky` before compilation hook.
- The `.env.example` file is provided to check what is required as ENVs
- Preinstalled `@openzeppelin/contracts` and `@solarity/solidity-lib`
