# 📚 Library Management System

A Java-based Library Management System that handles book tracking, member management, and book issue/return operations using **JDBC** for database connectivity.

---

## 🛠️ Tech Stack

| Technology | Usage |
|---|---|
| Java | Core programming language |
| JDBC | Database connectivity |
| MySQL | Database |
| OOP | Design principles |

---

## 🚀 Features

- 📖 Add, update, delete, and view books
- 👤 Member registration and management
- 📤 Issue books to members
- 📥 Return books and update availability
- 🗄️ Persistent data storage using MySQL

---

## 🧠 Concepts Used

- Object Oriented Programming (OOP)
- JDBC connection and query execution
- PreparedStatement for secure SQL queries
- Layered architecture: **Model → DAO → Service**

---

## 📁 Project Structure

```
library-management-system/
├── model/
│   ├── Book.java
│   └── Member.java
├── dao/
│   ├── BookDAO.java
│   └── MemberDAO.java
├── service/
│   └── LibraryService.java
└── Main.java
```

---

## ⚙️ How to Run

1. Clone the repository
```bash
git clone https://github.com/naveenaras590/Library-Management-System.git
```
2. Create the database and update DB credentials in the connection file
3. Run `Main.java`

---

## 📈 Future Improvements

- Add Spring Boot REST API
- Build web frontend using React
- Add fine calculation for late returns

---

## 👨‍💻 Author

**Naveen M M** — Java Full Stack Developer  
[LinkedIn](https://www.linkedin.com/in/naveen-m-m-506b742b2) | [GitHub](https://github.com/naveenaras590)
