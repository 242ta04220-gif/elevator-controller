# Elevator Controller

## Description

This project implements a simple Elevator Controller using Verilog HDL.

The elevator moves between 4 floors according to the requested floor.

## Features

- 4 floors
- Floor numbers: 0, 1, 2, 3
- Up movement
- Down movement
- Simple control logic
- Easy to understand

## Inputs

| Input | Description |
|------|-------------|
| `clk` | Clock signal |
| `reset` | Resets elevator to floor 0 |
| `floor_request` | Requested floor |

## Output

| Output | Description |
|------|-------------|
| `current_floor` | Current floor of the elevator |

## Working

If the requested floor is greater than the current floor:

```text
Elevator moves UP