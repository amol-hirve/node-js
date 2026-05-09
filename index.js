const express = require('express');

const app = express();

app.get("/", (req, res) => {
    res.json(
        [
            {
                id: 1,
                employeeName: "John Doe",
                employeeSalary: 70000
            },
            {
                id: 2,
                employeeName: "Sarah Smith",
                employeeSalary: 60000
            },
            {
                id: 3,
                employeeName: "Josh Brown",
                employeeSalary: 10000
            },
            {
                id: 4,
                employeeName: "Emily Davis",
                employeeSalary: 90000
            }
        ]
    )
})

app.listen(4000, () => {
    console.log("App is running on Port No: 4000")
})