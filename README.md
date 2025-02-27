# Verilog Exercises

## Repository content
- hello_word
- and3
- or
- not
- half_adder
- full_adder
- sum_product
- multiple_procedures
- literal_values
- vectors
- bitwise_operators
- reduction_operators
- logical_operators
- arithmetic_operators
- shift_operators
- relational_operators
- equality_operators
- conditional_operators
- concatenation_operator
- replicaton_operator
- precedence_operators

_________

## Arithmetic Operators:

- **`**`**: Exponentiation
- **`*`**: Product
- **`/`**: Division
- **`%`**: Modulus or Remainder
- **`+`**: Sum
- **`-`**: Difference

---

## Relational Operators:

- **`>`**: Greater than
- **`>=`**: Greater than or equal
- **`<`**: Less than
- **`<=`**: Less than or equal

---

## Bitwise Operators:

- **AND Operator `&`**: Returns 1 if both operands are 1.
- **OR Operator `|`**: Returns 1 if at least one of the operands is 1.
- **NOT Operator `~`**: Inverts the logical value of the operand (if it’s 0, it becomes 1, and vice versa).
- **XOR Operator `^`**: Returns 1 if the operands are different (if one is 1 and the other is 0).

> This type of signal manipulation is common in digital circuits, where logical operations are used to control data flow and conditions.

## Logical Operators:

- **`!`**: Logical NOT (inverts the bits).
- **`&&`**: Logical AND (returns 1 if both bits are 1).
- **`||`**: Logical OR (returns 1 if at least one bit is 1).

## Summary:

- Use **`&`** when you need to compare bit by bit between two values.
- Use **`&&`** when you need to evaluate a logical condition between two values, returning 1 (true) or 0 (false).

---

## Equality Operators:

### Logical Equality (for design):
- **`==`**: Equal
- **`!=`**: Not equal

### Case Equality (for testbench):
- **`===`**: Case equality
- **`!==`**: Case inequality

> If logical equality operators get variables with Z (high impedance) or X (unknown) values, then the result can be unknown.

