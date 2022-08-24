--DELETE
Delete From Employees 
Where ID=12


Delete From ProjectEmployees
Where ID=3

-- Un coleg s-a mutat din republica moldova in romania
Update Employees
Set Country='Romania',
	City='Timisoara'
Where Id=11

-- A crescut minimul pe care il luam pe un proiect
Update Projects
Set Revenue = 100000
Where Revenue < 100000

