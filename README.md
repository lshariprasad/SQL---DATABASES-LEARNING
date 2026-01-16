# 📊 SQL Complete Guide & Practice Repository

A comprehensive **SQL learning and practice repository** covering everything from **MySQL installation** to **advanced SQL concepts**, **data engineering fundamentals**, and **Python–MySQL connectivity**.

This repository is designed for **students, beginners, and aspiring data engineers** who want **structured, hands-on SQL knowledge** with real-world applications.

---

## 📌 What This Repository Covers

### 🔹 SQL Foundations
- Introduction to SQL & Databases  
- SQL Architecture Overview  
- SQL Data Types  
- SQL Keywords & Syntax  

---

### 🔹 MySQL Setup & Environment
- MySQL Installation (Windows)  
- MySQL Installation (Linux)  
- Working with MySQL using:
  - Command Prompt (CMD)
  - Jupyter Notebook (SQL Notebook)

---

### 🔹 SQL Commands
- **DDL** – CREATE, ALTER, DROP, TRUNCATE  
- **DML** – INSERT, UPDATE, DELETE  
- **DCL** – GRANT, REVOKE  
- **TCL** – COMMIT, ROLLBACK, SAVEPOINT  

---

### 🔹 CRUD Operations
- Create  
- Read  
- Update  
- Delete  

---

### 🔹 Table Design & Constraints
- Different Types of `CREATE TABLE`  
- `ALTER TABLE` & `ALTER COLUMN`  
- `WHERE` Clause  
- SQL Constraints:
  - PRIMARY KEY  
  - FOREIGN KEY  
  - UNIQUE  
  - CHECK  
  - DEFAULT  
  - NOT NULL  

---

### 🔹 Keys in SQL
- Minimal Key  
- Natural Key  
- Surrogate Key  
- Super Key  
- Candidate Key  

---

### 🔹 Querying & Filtering
- AND, OR, IN, NOT IN  
- Aliases  
- CASE WHEN  
- NULL Handling  
- String Functions  
- Date & Time Functions  
- Regular Expressions (REGEX)  

---

### 🔹 Advanced SQL
- Subqueries  
- Views  
- Joins (All Types)  
- Window Functions & Their Types  
- UNION & UNION ALL  
- Indexing  
- EXPLAIN & ANALYZE  
- Partitioning  

---

### 🔹 Transactions & Security
- Commit & Rollback  
- Grant & Revoke  
- ACID Properties  

---

### 🔹 Data Engineering Concepts
- Normalization (All Normal Forms)  
- SCD – Slowly Changing Dimensions  
- Data Modeling Basics  

---

### 🔹 Python & SQL
- Python JDBC / MySQL Connectivity  
- Running SQL using Python  
- SQL Execution via Jupyter Notebook  

---

### 🔹 Projects
- 4 Real-World Data Engineering Projects  

---

## 🛠 MySQL Installation (Windows)

1. Download **MySQL Installer (Community Edition)** from the official website:  
   👉 https://dev.mysql.com/downloads/installer/

2. Choose **MySQL Installer for Windows**

3. During setup:
   - Select **Developer Default** or **Server Only**
   - Set a **root password** (remember it)

4. Default credentials:
Username: root
Password: (Set by you during installation)

5. Verify installation:
```bash
mysql -u root -p

```
💻 Working with MySQL (Command Prompt)
You can directly work with MySQL using Windows CMD:

```bash
mysql -u root -p
```

Basic commands:
```bash
sql
SHOW DATABASES;
USE database_name;
SHOW TABLES;
```

📓 SQL with Jupyter Notebook (Recommended)
Step 1: Install Python
Download Python from:
👉 https://www.python.org/downloads/

✔️ Make sure to check Add Python to PATH during installation.

Step 2: Create a Virtual Environment
```bash
mkdir sql_notebook
cd sql_notebook
python -m venv env
env\Scripts\activate
```

Step 3: Install Required Packages
```bash
pip install --upgrade pip
pip install notebook
pip install ipython-sql
pip install prettytable==0.7.2
pip install mysql-connector-python
```

Step 4: Start Jupyter Notebook
```bash
jupyter notebook
```

Step 5: Connect MySQL in Jupyter
```
sql
%load_ext sql
%sql mysql+mysqlconnector://root:YOUR_PASSWORD@localhost/test
```

📬 Support & Contact
If you face any issues or have queries, feel free to reach out:

📧 Email: 06hariumaraja@gmail.com

📧 Email: lshariprasad1410@gmail.com

🔗 LinkedIn: https://www.linkedin.com/in/lshariprasad1410/

📜 License
This project is licensed under the MIT License.

pgsql
MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files to deal in the Software
without restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies.

If you find this repository useful, star ⭐ the project and keep learning 🚀
