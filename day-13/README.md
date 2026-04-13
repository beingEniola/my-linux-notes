# Day 13 - Conditional Statements in Bash Scripting

## Objective

My goal today is to how conditional statements work in Bash Scripting

---

## What I Learned
I Learnt:

#### Conditional statements use case in Data Engineering
Conditional statements are used in data engineering in the following scenarios:
- Check if a file or directory exists before processing it.
- Stop the script if an error occurs.
- Validate inputs or configuration before running a pipeline.

#### How to write Conditionals
- **if Statement**

    Structure of an if-statement
    ```
    if [ condition ]
    then
        # commands to execute if condition is true
    fi
    ```
    Example:
    ```
    #!/bin/bash
    if [ -f "/data/raw/sales.csv" ]
    then
        echo "File exists. Proceeding with processing..."
    fi
    ```
    It means:

    - -f: checks if the file exists and is a regular file.
    - The condition must be wrapped in [ ] and separated by spaces.
    - then starts the block of code to execute if true.
    - fi ends the if statement.

- **if-else Statement**

    if-else statement is used when both outcome of the conditions needs to be handled, i.e the true and false.

    Example:
    ```
    #!/bin/bash
    if [ -d "/data/raw" ]
    then
        echo "Raw data directory found!"
    else
        echo "Raw data directory missing! Please create it first."
    fi
    ```
    This script checks wether a directory exists and then taking action based on the outcome (true or false).
- **The if-elif-else (Multiple Conditions)**

    The if-elif-else statement is used to handle multiple conditions. Example:
    ```
    #!/bin/bash
    size=50

    if [ $size -gt 100 ]; then
        echo "Large dataset"
    elif [ $size -gt 10 ]; then
        echo "Medium dataset"
    else
        echo "Small dataset"
    fi
    ```
    Explanation:

    - elif = “else if”
    - -gt means greater than

    If size is greater than 100, then echo "Large dataset" will be excuted. Else if size is greater than 10, then echo "Medium dataset" will be executed. Else, if none of these is true, then execute echo "Small dataset".

#### Common Conditional Operators
Conditional operators are  used in conditional statements to check the condition of an expression. 

| Type	| Operator	| Meaning	| Example
| ------- | -------- | -------- | -------- |
| File test | -f | File exists | [ -f file.csv ] |
| | -d |	Directory exists |	[ -d /data/raw ] |
| | -e |	File or directory exists |	[ -e /tmp/log.txt ] |
| | -s |	File is not empty |	[ -s data.csv ] |
| String comparison | == |	Strings are equal | [ "$var" == "yes" ] |
| | !=|	Strings are not equal |	[ "$var" != "no" ] |
| | -z|	String is empty	| [ -z "$name" ] |
| Numeric comparison| -eq|	Equal |	[ $a -eq 10 ]|
|  | -ne|	Not equal |	[ $a -ne 5 ]|
|  | -gt|	Greater than |	[ $a -gt 5 ]|
|  | -lt|	Less than |	[ $a -lt 10 ]|
|  | -ge |	Greater or equal |	[ $a -ge 10 ]|
|  | -le |	Less or equal |	[ $a -le 10 ]|

#### Combining Conditions (AND/OR)
Multiple conditions can tests can be combined using:
- && - AND
- || - OR

AND
```
if [ -d "/data/raw" ] && [ -s "/data/raw/sales.csv" ]; then
    echo "Data folder and file are ready."
else
    echo "Missing folder or empty file."
fi
```

OR
```
if [ -d "/data/raw" ] && [ -s "/data/raw/sales.csv" ]; then
    echo "Data folder and file are ready."
else
    echo "Missing folder or empty file."
fi
```

#### CASE statements 
Just like in SQL or a switch statement in Python, Case is used for cleaner multi-condition handling.

Example
```
#!/bin/bash
echo "Enter environment (dev, staging, prod):"
read env

case $env in
  dev)
    echo "You selected development environment."
    ;;
  staging)
    echo "You selected staging environment."
    ;;
  prod)
    echo "You selected production environment."
    ;;
  *)
    echo "Unknown environment: $env"
    ;;
esac
```

---

## Challenges Faced

- None

---



