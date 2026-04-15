# Day 15 - Functions In Bash Script

## Objective

My goal today is to learn and understand how functions works in Bash Script.
---

## What I Learned

#### What are Functions
A function is a named block of code that performs a specific task. You can call it multiple times in your script to avoid duplication and make your code cleaner.

#### Syntax of a Bash Function
```
# Function definition
function_name(){
    commands
    ...
}

# Function call
function_name
```

- function_name(): Name of the function being defined.
- { }: Curly braces contain the commands executed by the function.
- commands: The operations or instructions the function performs.
- function_name: Calling the function executes its commands.

#### Functions with arguments/Parameters
Bash functions can accept arguments (parameters) when they are called. These arguments lets the function to work with different inputs each time it is executed. 

Arguments passed to functions are accessed using positional parameters such as $1, $2, $3, e.t.c.

    ```
    process_file() {
        echo "Processing file: $1"
        echo "Saving to: $2"
    }

    process_file "sales.csv" "/data/processed/sales.csv"
    ```
- $1, $2, $3 represent the first, second, and third arguments passed to the function.
- $@ represents all arguments.

Output:

```
Processing file: sales.csv
Saving to: /data/processed/sales.csv
```
#### Funtions with return value
A function can return a value after completing its execution. The return value is stored in a special variable called $?, which represents the exit status of the most recently executed command.

Return values are often used to indicate whether a function executed successfully or to return a small numeric result.

N.B: `return` only supports integer values between 0 and 255. Attempting to return a string or a number outside this range will produce unexpected results.

Example:

    ```
    #!/bin/bash

    add_two_num(){
        return $(($1 + $2))
    }

    add_two_num 2 3
    echo The sum is $?
    ```

How it works:
- The function receives 2 and 3 as arguments.
- The numbers are added using arithmetic expansion.
- The result is returned and accessed using $?.

Example 2

    ```
    check_file() {
        if [ -f "$1" ]; then
            echo "File exists"
            return 0
        else
            echo "File not found"
            return 1
        fi
    }

    check_file "/data/raw/data.csv"
    echo "Status code: $?"
    ```

Output

    ```
    File exists
    Status code: 0
    ```

#### Using Variables inside a function
Variables inside a function are global by default. the local keyword is used to create function-specific variables.

```
calculate_sum() {
    local a=$1
    local b=$2
    local sum=$((a + b))
    echo "Sum: $sum"
}

calculate_sum 3 7
```

#### How Functions overrides commands
Bash allows defining functions with the same name as existing commands. When this happens, the function overrides the original command behavior.

Example:

    ```
    #!/bin/bash

    #overriding command
    echo(){
        builtin echo "The name is : $1"
    }

    echo "Satyajit Ghosh"
    ```

- A function named echo() overrides the default echo command.
- builtin echo ensures the original echo command is still used internally.
- The function automatically adds "The name is :" before the provided text.

---

## What I Built / Practiced

- I praticed writing Bash functions 

---

## Challenges Faced

- None

---

## Key Takeaways

- Functions are good for reusability
- Bash works just like other programming languages

---

## Resources

- https://github.com/Najeeb-Sulaiman/linux-and-bash-scripting-guide/blob/main/07-bash-scripting/05-functions.md
- https://www.geeksforgeeks.org/linux-unix/bash-scripting-functions/

---

