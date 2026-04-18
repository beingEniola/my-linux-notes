# Day 18 - Functions In Bash Script

## Objective

My goal today is to learn more on functions in Bash scripting, most especially how to combine functions.

---

## What I Learned

#### How to Combine Functions for Workflow Automation
Instead of writing one long, messy scripts, it can be organised into seperate functions. Each  function handles a specific task or step in the overall process.

Example: An ETL workflow
    ```
    #!/bin/bash

    extract() {
        echo "Extracting data..."
        cp /data/raw/sales.csv /tmp/sales.csv
    }

    transform() {
        echo "Transforming data..."
        awk -F, '$6 != "Failed"' /tmp/sales.csv > /tmp/sales_clean.csv
    }

    load() {
        echo "Loading data..."
        mv /tmp/sales_clean.csv /data/processed/
    }

    main() {
        extract
        transform
        load
        echo "ETL completed successfully!"
    }

    main
    ```

#### Functions that returns data
Functions can “return” data by printing it and capturing the output with command substitution. 

Example:
    ```
    get_date() {
        date +"%Y-%m-%d"
    }

    today=$(get_date)
    echo "Today's date: $today"
    ```

#### Sourcing Functions from Another File

If there is an  utility functions often used, they can be stored in a separate file and impored using the source or `.` command.

To demonstarte this, let's create a simple function in a utility file called utils.sh

    ```
    # contents of utils.sh
    log_message() {
        echo "$(date): $1"
    }
    ```

Now let's call this utility function in the main bash file called main.sh:

    ```
    # contents of main.sh
    source utils.sh

    log_message "Data pipeline started"
    ```
How `source utils.sh` works:

- Loads the contents of utils.sh into the current script
- Makes the log_message function available in main.sh

---

## What I Built / Practiced

- I praticed creating some funtions

---

## Challenges Faced

- None
- 

---

## Key Takeaways

- Functins are really good for readability and usability.
- Function sourcing from another file works like importing modules in Python.
- 

---

## Resources

- https://github.com/Najeeb-Sulaiman/linux-and-bash-scripting-guide/blob/main/07-bash-scripting/05-functions.md

---

## Output

![](images/image.png)
