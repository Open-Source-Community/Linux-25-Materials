# Task 3: Repo From Scratch

## Task Submission Guidelines

1. Follow the instructions sent on Discord to set up your task repository. Ensure it is properly initialized and configured.
2. Create a folder named `Task_3` **in your task repo**.
3. Inside `Task_3`, create a file named `commands.sh`.
4. Write all the commands you use in `commands.sh`. Ensure:

   - Each command is correct and can replicate your solution when executed.
   - Any non-command information is written as **comments** (start comments with `#`).

   Example:

   ```bash
   # I am a bash comment. I will not be executed
   echo "hello" # I am another comment
   ```

5. Once done:
   - Add and commit your `commands.sh` file to your task repo using a clear commit message (e.g., `"Added Task 3 solution"`).
   - Push your changes to GitHub using `git push`.

```bash
# I am a bash comment. I will not be executed
echo "hello" # I am another comment
```

### Task Description

1. **Use Git internal commands:**
   - Implement the functionality of `git init`, `git add`, `git commit`, and `git tag` using their underlying Git commands. Don't use the shorthand commands directly. For reference, explore [git-verbose](https://github.com/Badr-1/git-verbose).
2. **Create a separate repository:**

   - Navigate **outside** your task repo (choose or create a new directory).
   - Initialize a Git repository named `git_started` using internal commands.
   - Create a file named `hello.txt`, write a greeting in it (make it cheerful!).
   - Add and commit the file with the message `"greatest commit ever"`.
   - Tag the commit as `V1`.

3. **Verification:**

   - Double-check each step's output for correctness before proceeding.
   - For this, you can use commands like `git status` and `git log`, but don't include them in your solution.
