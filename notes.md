# Verilog TIPS

## 4️⃣ value logic

- Verilog uses _four_ value logic based sysytem which include 1, 0, x, z.
- | Symbol | Corresponding value |
  | :----: | :-----------------: |
  |   1    |        True         |
  |   0    |        False        |
  |   x    |   Ambiguous value   |
  |   z    |   High Impedance    |
- x represents the condition of _ambiguity_ in which the simulator _cannot determine_ whether the value of a signal is 0 or 1.
- This usually happens when a wire is driven by two primitives having opposite output values.
- z denotes a _3 state_ condition in which a wire is _disconnected_ from its driver.
