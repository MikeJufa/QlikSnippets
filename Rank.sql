with emp_rank_table as
(
    Select Emp_ID,
           Salary,
           Dense_Rank() Over (Order by Salary desc) as Emp_Rank
    From dept_info
)
Select Emp_ID,
       Salary,
       Emp_Rank
From emp_rank_table
Where Emp_Rank=2

/*Rank() vs Dense_Rank() 1,1,3,4, vs 1,1,2,3