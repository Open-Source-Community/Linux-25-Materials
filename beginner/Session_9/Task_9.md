### **Task 1: User Profile Generator** (Covers: Variables, User Input)  
#### **Objective:**  
Create a script that collects user details.

#### **Instructions:**  
1. Create a script named `user_profile.sh`.  
2. Ask the user for their **name, age, and favorite programming language**.   
3. Display a confirmation message like:  
   
```bash
Thank you, [name]! Your profile has been created successfully with the following details:  
- Name: [name]  
- Age: [age]  
- Favorite Programming Language: [language]
```
---

### **Task 2: Basic Login System** (Covers: Case Statements)  
#### **Objective:**  
Create a simple login system where the user can select different access levels.  

#### **Instructions:**  
1. Create a script named `login_system.sh`.  
2. Ask the user to enter their **role** (Admin, Editor, Viewer).  
3. Use a `case` statement to display different messages:  
   - **Admin** → "Welcome, Admin! You have full access."  
   - **Editor** → "Welcome, Editor! You can edit content."  
   - **Viewer** → "Welcome, Viewer! You can only view content."  
   - (Default: "Invalid role. Please enter Admin, Editor, or Viewer.")  

---

### **Task 4: Countdown Timer** (Covers: Loops, Functions)  
#### **Objective:**  
Create a countdown timer where the user enters a number, and the script counts down to zero.  

#### **Instructions:**  
1. Create a script named `countdown.sh`.  
2. Ask the user to enter a starting number.  
3. Use a **function** to handle the countdown process.   
4. Use the `sleep 1` command to make the countdown more realistic.  
5. When the countdown reaches zero, print: **"Time's up!"**  

---

### **Task 5: Linux System Manager Script**  

### **What Your Script Should Do:**  
Your script should display a menu with the following options:  

1️⃣ **Show System Information**  
   - Display the current user.  

2️⃣ **Check File Permissions**  
   - Allow users to enter a filename and display its permissions.  

3️⃣ **Change File Permissions**  
   - Allow users to enter a filename and modify its permissions using `chmod`.  

4️⃣ **Compress a File/Directory**  
   - Ask the user to enter a file or folder name.  
   - Provide options to compress it into `.tar.gz` or `.zip` format.  

5️⃣ **Decompress a File**  
   - Ask the user for a compressed file name and extract it if it exists.  

6️⃣ **Exit**  
   - Allow the user to quit the script.  

---

### **Instructions:** 

1. **Write your script** and save it as `sys_manager.sh`.  
2. Make sure that you follow output scenario.
---

### **Expected Output Example:**  

#### **Menu Display**  
```
========== Linux System Manager ==========
1. Show System Information
2. Check File Permissions
3. Change File Permissions
4. Compress a File/Directory
5. Decompress a File
6. Exit
==========================================
Enter your choice: 
```

#### **Option 1: Show System Information**  
**User selects 1**

```bash
Current User: habiba  
```

#### **Option 2: Check File Permissions**  
**User selects 2 and enters `myfile.txt`**  

```bash
Enter the filename: myfile.txt  
Permissions for myfile.txt: -rw-r--r--  
```

#### **Option 3: Change File Permissions**  
**User selects 3 and enters `myfile.txt` with permission `755`**  

```bash
Enter the filename: myfile.txt  
Enter new permission : 755  
Permissions changed successfully.  
```

#### **Option 4: Compress a File/Directory**  
**User selects 4, enters `documents` folder, and chooses `.tar.gz`**  

```bash
Enter the file/directory name: documents  
Choose compression type:  
1. tar.gz  
2. zip  
Enter choice: 1  
Compression successful: documents.tar.gz created.  
```

#### **Option 5: Decompress a File**  
**User selects 5 and enters `documents.tar.gz`**  

```bash
Enter the compressed file name: documents.tar.gz  
Extracting...  
Decompression successful.  
```

#### **Option 6: Exit**  
**User selects 6**

```bash
Exiting the system manager. Goodbye!
```

---
