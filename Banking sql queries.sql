---Assign a rank to customers based on account balance (highest balance = rank 1).
select customer_name, balance,
rank() over(order by balance desc)
from accounts;

---Find running total of transaction amount for each account.
select account_id, transaction_date,amount,
sum(amount) over(partition by account_id order by transaction_id ) as running_total
from transactions;

---Show previous transaction amount for each account.
select account_id, transaction_date, amount,
lag(amount) over(partition by account_id order by transaction_date asc) as previous_transaction
from transactions;



INSERT INTO transactions 
(transaction_id, account_id, amount, transaction_type, transaction_date)
VALUES
(21,1,2000,'credit','2025-03-21'),
(22,1,3000,'debit','2025-03-22'),
(23,1,4000,'credit','2025-03-23');

---Show next transaction amount for each account.
select account_id, transaction_id, amount,
lead(amount) over(partition by account_id order by transaction_id ) as next_transaction
from transactions;

---Find difference between current transaction and previous transaction.
select account_id, transaction_date ,amount,
amount - lag(amount) over(partition by account_id order by transaction_date) as difference_between_transaction
from transactions;

---Find top 2 customers in each branch based on balance.
with ranked_cust as(
	select customer_name, branch_id, balance,
	row_number() over(partition by branch_id order by balance desc) as rn
	from accounts
)
select * from ranked_cust
where rn<=2;


---Find customer with highest balance in each branch.
with ranked_cust as (
	select customer_name, branch_id, balance,
	row_number() over(partition by branch_id order by balance desc) as rn
	from accounts
)
select * from ranked_cust
where rn<=1;

---Find second highest balance overall.
with ranked_cust as(
	select customer_name, balance,
	dense_rank() over(order by balance desc) as blnc
	from accounts
)
select * from ranked_cust
where blnc = 2;


---Find top 3 branches by total balance.
select b.branch_id, b.branch_name,
sum(a.balance) as total_balance
from accounts a
join branches b
 on a.branch_id=b.branch_id
group by b.branch_id, b.branch_name
order by total_balance desc
limit 3;
--
select branch_id, sum(balance) as total_balance
from accounts
group by branch_id order by total_balance desc 
limit 3;


---Find lowest balance customer in each branch.
with cust as(
select customer_name, branch_id,balance,
row_number() over(partition by branch_id order by balance) as lb
from accounts
)
select * from cust
where lb<=1;

---Using CTE, find customers with balance above average balance.
with customer as(
	select customer_name, balance from accounts
	where balance > (select avg(balance) from accounts)
)
select * from customer;

---Using CTE, find total transaction amount per account.
with transaction as(
	select account_id, sum(amount) as total_transaction
	from transactions
	group by account_id order by total_transaction 
)
select * from transaction
order by account_id asc;

---Using CTE, rank branches by total balance.
with ranked_total as (
	select branch_id,
	sum(balance)as total_balance
	from accounts
	group by branch_id
)
select branch_id, total_balance,
rank() over(order by total_balance desc) as ranked_branch
from ranked_total;








select * from transactions
