// task 11.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <fstream>
using namespace std;
class StudentData
{
public:
	int registerationNo;
	string firstname;
	string lastname;
	float cgp;
	string cNo;
	string program;

};
class student : public StudentData
{
private:
	//using file handling data type
	int rNo;
	string fname;
	string lname;
	float c;
	string cno;
	string p;
public:
	void StudentData()
	{
		cout << "Enter Registeration No: " << endl;
		cin >> registerationNo;
		cout << "Enter First Name: " << endl;
		cin >> firstname;
		cout << "Enter Last Name" << endl;
		cin >> lastname;
		cout << "Enter CGPA" << endl;
		cin >> cgp;

		cout << "Enter Program" << endl;
		cin >> program;
		cout << "Enter Contact No" << endl;
		cin >> cNo;
		fstream f;
		f.open("Student.csv", ios::app | ios::out);
		f << registerationNo << " " << firstname << " " << lastname << " " << program << " " << cgp << " " << cNo << endl;
		f.close();
	}
	void cgpa()
	{
		int i = 0;
		fstream f;
		f.open("Student.csv", ios::in);
		f >> registerationNo >> firstname >> lastname >> program >> cgp >> cNo;
		while (!f.eof())
		{
			if (cgp >= 3.5)
			{
				cout << ++i << ":" << firstname << " " << lastname << " " << cgp << endl;
			}
			f >> registerationNo >> firstname >> lastname >> program >> cgp >> cNo;
		}
		f.close();
	}

	//depertment
	void employeeData()
	{
		int empid, deptid;
		string empname, contact, marStatus, empJoinningDate;
		double salary;
		string deptname;
		int i = 0;
		fstream emp;
		emp.open("employee.csv", ios::app | ios::out);
		emp << 1 << " " << "Imran" << " " << "12/12/2022" << " " << 1 << " " << "03000000000" << " " << 30000 << " " << "Yes" << endl;
		emp << 2 << " " << "Fahad" << " " << "12/12/2022" << " " << 5 << " " << "03000000000" << " " << 230000 << " " << "Yes" << endl;
		emp << 3 << " " << "Ali" << " " << "12/12/2022" << " " << 1 << " " << "03000000000" << " " << 630000 << " " << "No" << endl;
		emp << 4 << " " << "Ahmad" << " " << "12/12/2022" << " " << 3 << " " << "03000000003" << " " << 130000 << " " << "Yes" << endl;
		emp.close();
		//department
		fstream dept;
		dept.open("department.csv", ios::app | ios::out);
		dept << 1 << " " << "CS" << endl;
		dept << 5 << " " << "IT" << endl;
		dept.close();
	}
	void Research()
	{
		int empid, deptid;
		string empname, contact, marStatus, empJoinningDate;
		double salary;
		string deptname;
		fstream emp;

		//department data type
		int id; string dname;
		fstream dept;
		int i;
		cout << "Enter ID: " << endl;
		cin >> i;
		dept.open("department.csv", ios::in);
		emp.open("employee.csv", ios::in);
		dept >> id >> dname;
		while (!dept.eof())
		{
			if (id == i)
			{
				emp >> empid >> empname >> empJoinningDate >> deptid >> contact >> salary >> marStatus;
				while (!emp.eof())
				{
					if (deptid == id)
					{
						cout << empid << empname << empJoinningDate << deptid << contact << salary << marStatus << endl;
					}
					emp >> empid >> empname >> empJoinningDate >> deptid >> contact >> salary >> marStatus;
				}
			}
			dept >> id >> dname;
		}
		dept.close();
		emp.close();
	}


	//lab 4

	void tast4()
	{

		int empid, deptid;
		string empname, contact, marStatus, empJoinningDate;
		double salary;
		string deptname;
		fstream emp, dept;
		//salary
		float salaryYear;
		emp.open("employee.csv", ios::in);
		emp >> empid >> empname >> empJoinningDate >> deptid >> contact >> salary >> marStatus;
		while (!emp.eof())
		{
			salaryYear = salary * 12;
			if (salaryYear >= 1500000)
			{
				cout << "Name: " << empname << endl;
				cout << "salary" << salary << endl;
			}
			emp >> empid >> empname >> empJoinningDate >> deptid >> contact >> salary >> marStatus;
		}
		emp.close();

	}



};
int main()
{
	int c;
	student s;
	cout << "1. Enter Student Data " << endl;
	cout << "2. Check CGPA " << endl;
	cout << "3. Research " << endl;
	cout << "4. Task 4 " << endl;
	cout << "5. Exit" << endl;
	//s.employeeData();
	cin >> c;
	switch (c)
	{
	case 1:
	{
		s.StudentData();
		system("pause");
		break;
	}
	case 2:
	{
		s.cgpa();
		system("pause");
		break;
	}
	case 3:
	{
		s.Research();
		break;
	}
	case 4:
	{
		s.tast4();
		break;
	}
	case 5:
	{
		exit(0);
	}
	default:
		break;
	}
}

