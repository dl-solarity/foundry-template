# Foundry template 

Template foundry repository for ad-hoc smart contracts development.

### How to use

The template works out of the box. To clean up the repo, you may need to delete the mock contracts, tests and scripts.

#### Test

To run the tests, execute the following command:

```bash
npm run test
```

Or to see the coverage, run:

```bash
npm run coverage

```

#### Local deployment

To deploy the contracts locally, run the following commands (in the different terminals):

```bash
npm run private-network
npm run deploy-local
```

### Other niceties

- The template comes with presetup `prettier` and `solhint` that lint the project via `husky` before compilation hook.
- The `.env.example` file is provided to check what is required as ENVs
- Preinstalled `@openzeppelin/contracts` and `@solarity/solidity-lib`