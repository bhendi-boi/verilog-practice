# Commands required to run verilog files using `icarus verilog`

## Compiling a design along with its test bench

```powershell
    iverilog -o myDesign  moduleTb.v module.v
```

## Running the compiled design

```powershell
    vvp myDesign
```

## Plotting the signals with `gtkwave`

```powershell
    gtwave dump.vcd
```

- You must replace `dump.vcd` with the dumpfile name you specified in test bench
