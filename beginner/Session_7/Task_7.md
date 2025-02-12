## part 1 : Find Secret Key
- in [keys](keys) there are two columns of keys, your rule to found only key that is repeated more the one.

## part 2 :create a pattern
1. create a pattern to extract urls from file
2. create a pattern to extract phone numbers from a file
3. create a pattern to extract ip address of file

there is a file can help you in testing patterns: [ip-address](ip_address), [URLs](url), [phone numbers](phone_numbers)

#  Task Submission Guidelines
1. 0. **If you haven't already**, [set up your task repository](https://discord.com/channels/885136114275459102/892738283434541076/1314261230252462092). 
2. Make a folder Task_7 in your Task repo
3. create a file named `commands`. In this file write secret key in first line and for every line write the pattern in same sequence of the task.

**commands file structure**
```
key
pattern1_url
pattern2_phone_numbers
pattern3_ip
```
**don't write any thing in the line except secret key or pattern**

7. Once done:
   - Add and commit your `commands.sh` file to your task repo using a clear commit message (e.g., `"Added Task 7 solution"`).
   - Push your changes to GitHub using `git push`.