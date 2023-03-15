# Unix-based Command-line Calculator

This is a simple command-line calculator that performs basic arithmetic operations (addition, subtraction, multiplication, and division) on two numbers entered by the user.

## Requirements
* Bash shell (tested on macOS and Linux)
* `bc` command-line utility (for floating-point division).

## Usage
To use the calculator, simply run the `calculator.sh` script in a Bash shell:

```bash
$ ./calculator.sh
Welcome to the Unix-based command-line calculator!
Enter the first number: 5
Enter the second number: 3
Select an operation:
1. Addition
2. Subtraction
3. Multiplication
4. Division
Enter the number corresponding to your choice: 3
5 * 3 = 15
```
The script will prompt you to enter two numbers, and then display a menu of available operations. Enter the number corresponding to your choice, and the script will perform the selected operation and display the result.

If you attempt to divide by zero, the script will print an error message and exit with a non-zero status code.

## Limitations
This calculator is intended for simple, basic arithmetic operations only. It does not support more advanced mathematical functions, such as trigonometry or logarithms.
    
