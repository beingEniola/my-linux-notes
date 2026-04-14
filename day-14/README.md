# Day 14 - Loops In bash Scripting

## Objective

My goal today is to understand how loops are used in bash scripting

---

## What I Learned

I Learnt:

Loops is used to automate repetitive tasks in bash scripts, instead of copying and pasting commands repeatedly 

#### Types Of Loops

- `for` - The for loop is used to iterate over a list, it runs a command for each item in a list.

    Basic Syntax:
    ```
    for item in list
    do
        # commands to execute for each item
    done
    ```
    Example:

    1. Looping through numbers:
    ```
    #!/bin/bash
    for i in 1 2 3 4 5
    do
        echo "Processing dataset #$i"
    done
    ```
    2. looping through files - A common use case in data engineering
    ```
    #!/bin/bash
    for file in /data/raw/*.csv
    do
        echo "Processing file: $file"
        head -n 2 "$file"
    done
    ```
    This, can be used to automatically process every CSV file in a data ingestion(raw) folder.
    
    3. Loop through a sequence
    ```
    for i in {1..5}
    do
        echo "Run $i completed"
    done
    ```
    The seq commands can be used to
    ```
    for i in $(seq 1 5)
    do
        echo "Loop $i"
    done
    ```

- `while` - The while loop runs as long as a condition is true. 

    Basic syntax
    ```
    while [ condition ]
    do
        # commands to run
    done
    ```
    How it works:
    - while [ condition ] → checks the condition before each loop
    - do → starts the loop body
    - done → ends the loop
    - The loop runs as long as the condition is true

    Example:
    ```
    #!/bin/bash
    count=1

    while [ $count -le 5 ]
    do
        echo "Run #$count"
        ((count++))
    done
    ```
    This will run the echo command 5 times, from 1 to 5.

    ```
    #!/bin/bash
    while [ ! -f "/data/raw/daily_sales.csv" ]
    do
        echo "Waiting for daily_sales.csv to arrive..."
        sleep 5
    done

    echo "File detected! Starting ETL..."
    ```
    This automates waiting for new data arrivals before running transformations. The code will continue to wait for a new file until a new file is detected.

#### Nested Loops
Loops can be placed inside another loops for multi-level processing. For example, if you want to loop over multiple years and months of historical data for reprocessing.
```
for year in 2023 2024
do
  for month in Jan Feb Mar
  do
    echo "Processing data for $month, $year"
  done
done
```
#### Loop Control Statements
Control statement are important aspect of loops, thery are used to control the behavior of loops.

- `break` - It is used to exit the loop early

    ```
    for i in {1..10}
    do
        if [ $i -eq 5 ]; then
            echo "Stopping loop at $i"
            break
        fi
        echo "Count: $i"
    done
    ```

- Continue – It is used to skip to the next iteration. For example if you want to skip the processing of certain files.

    ```
    for i in {1..5}
    do
        if [ $i -eq 3 ]; then
            echo "Skipping 3"
            continue
        fi
        echo "Count: $i"
    done
    ```

---

## What I Built / Practiced

- I praticed working with conditiobal statements, loops in Bash scripting.

---

## Challenges Faced

- None

---

## Key Takeaways

- Loops are useful in automating repetitive tasks

---

## Resources

- https://github.com/Najeeb-Sulaiman/linux-and-bash-scripting-guide/blob/main/07-bash-scripting/04-loops-in-bash.md

---

## Output

(Include links, screenshots, code snippets, or results)
