# Verilog Practice

## File Structure

- All file names are written in _camelCase_.
- Folder name suggests the circuit we are building.
- `design.v` contains design module.
- `designTb.v` contains test bench.
- `design` contains compiled design.
- `dump.vcd` contains all the dumped variables.

## 🤔 How to use testbench generator script

- Run the `main.py` file with variables as arguments
- For exapmle to generate testbench for 3 variables (a1,a0,s0) use the command `python3 main.py a1 a0 s`.
- It will generate `testBenchGenerator.py`
- You may find the generated testbench in `text.txt` after running `testBenchGenerator.py`.

## Last updated

| Date       | Circuit name                |
| ---------- | --------------------------- |
| 06/05/2023 | Half adder                  |
| 05/05/2023 | Full adder                  |
| 05/05/2023 | Half Subtractor             |
| 05/05/2023 | Full Subtractor             |
| 06/05/2023 | Four Bit Adder              |
| 06/05/2023 | Two X one Mux               |
| 06/05/2023 | Four X one Mux              |
| 06/05/2023 | Eight X one Mux             |
| 06/05/2023 | Two Bit Multiplier          |
| 06/05/2023 | Two X four Decoder          |
| 08/05/2023 | D Flip Flop                 |
| 10/05/2023 | T Flip Flop                 |
| 15/05/2023 | Four Bit ALU                |
| 03/08/2023 | Four Bit Async Down Counter |
