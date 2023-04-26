### Installation

<b>For Windows</b>
Download and run rustup-init from <a href="https://win.rustup.rs/x86_64" target="blank">rustup.rs</a>. It will start the installation in a console.

If you encounter an error, it is most likely the case that you do not have the VS Code Installer which you can <a href="https://visualstudio.microsoft.com/downloads/" target="blank">download here</a> and install.

After this, run the following to build Foundry from the source:

<code>cargo install --git https://github.com/foundry-rs/foundry foundry-cli anvil chisel --bins --locked</code>

### Create a new project

<code>forge init <i>dir-name</i></code> <br>
for e.g. forge init hello-foundry

### Compile Contracts

<code> forge build </code>

### Run test

1. Run all test files <br>
   <code>forge test</code><br>

2. Run a specific test
   <code>forge test —match-path filepath_from_root.t.sol</code>

3. Run test with more details
   <code>forge test -vvvv</code><br>
   v, -verbosity...

Verbosity of the EVM.

Pass multiple times to increase the verbosity (e.g. -v, -vv, -vvv).

Verbosity levels:

2: Print logs for all tests

3: Print execution traces for failing tests

4: Print execution traces for all tests, and setup traces for failing tests

5: Print execution and setup traces for all tests

<b>Gas Report:</b> forge test —match-path filepath_from_root.t.sol --gas-report

<b>Format code:</b> forge fmt
