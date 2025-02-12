# Task 7: Secret Key & Pattern Matching

## Part 1: Find the Secret Key  
- The **keys** file ([keys](keys)) contains two columns of keys.  
- Your task is to find and extract only the **keys that appear more than once**.

## Part 2: Create Patterns  
Use regular expressions to extract the following from the [data.txt](data.txt) file:  
1. **URLs** – Extract all URLs.  
2. **Phone Numbers** – Extract all phone numbers.  
3. **IP Addresses** – Extract all IP addresses.  

---

# Task Submission Guidelines  

### Repository Setup  
1. If you haven’t set up your task repository, follow [this guide](https://discord.com/channels/885136114275459102/892738283434541076/1314261230252462092).  

### Folder & File Structure  
2. In your repository, create a folder named **`Task_7`**.  

3. Inside `Task_7`, create the following files:  

   - **`commands.sh`**  
     - Write all `grep` commands used for extraction in this file.  
     - Ensure that:  
       - Each command is correct and replicates your solution when executed.  
       - Non-command information is written as **comments** (use `#` for comments).  
       - The output matches the expected results in [expected_output](expected_output.txt).  

   - **`key.txt`**  
     - Store the extracted keys from **Part 1** of the task.  

### Submission Steps  
4. Once you have completed the task:  
   - Add and commit your files with a clear commit message (e.g., `"Added Task 7 solution"`).  
   - Push your changes to GitHub using `git push`.  
