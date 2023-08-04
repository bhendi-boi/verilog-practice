# Verilog Notes

## 4️⃣ value logic

- Verilog uses _four_ value logic based system which include 1, 0, x, z.
- | Symbol | Corresponding value |
  | :----: | :-----------------: |
  |   1    |        True         |
  |   0    |        False        |
  |   x    |   Ambiguous value   |
  |   z    |   High Impedance    |
- x represents the condition of _ambiguity_ in which the simulator _cannot determine_ whether the value of a signal is 0 or 1.
- This usually happens when a wire is driven by two primitives having opposite output values.
- z denotes a _3 state_ condition in which a wire is _disconnected_ from its driver.

## Block statement Keyword pair (begin ... end)

- **begin** . . . **end** keyword pair is used to create a new block in verilog.
- They work similar to `{ }` in C programming language.
- Example

```verilog
    initial begin
        a1 = 0;
    end
```

## Conditional Operator

- `?, :` operator is called conditional operator.
- Works the same as a ternary operator in c and js.
- Example

```verilog
  assign v = expression ? value1 : value2
```

- Here if expression evaluates to true v is assigned with value1 else value2.

## Case statement

- `case` keyword is used to create a case statement.
- Works the same as switch in c and js
- It searches from top to bottom to find a match between the case expression and case item, expressed as a value in Verilog's four-value logic system.
- It executes the first match and ignores the remaining possibilities.
- Here in this example we can see how to represent a 2 X 1 MUX using case statements.

```verilog
  case(select)
  0:  data0;
  1:  data1;
  default:  1'bx;
```

## For loop

- Same as c

```verilog
for(initialState;controlStatement;increment/decrement) begin
  ---
  ---
  ---
end

```
## Repeat statement
- Used to run a block of code a specific no of times
- Can be prematurely terminated using `disable` statement

```verilog
repeat (8) begin
  ---
  ---
  ---
end
```