# Bank
Bank Tech Test

# Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)

* Deposits, withdrawal.

* Account statement (date, amount, balance) printing.

* Data can be kept in memory (it doesn't need to be stored to a database or anything).

* Acceptance criteria

```
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

Approach
========
The approach here is to have three classes: Account, Transaction and Statement.

* Account has responsibility for account level detail eg name, list of all transactions
* Transaction has responsibility for an individual transaction
* Statement has responsibility for outputting details for the Account

All requirements have been met accept for reverse sorting by date


How to run tests
================
git clone https://github.com/philb56/Bank.git
bundle install
rspec

How to run in irb
=================
```
require './lib/transaction'
require './lib/account'
require './lib/statement'
trx_credit1 = Transaction.new('10/01/2012', 'credit',  1000 )
trx_credit2 = Transaction.new('13/01/2012', 'credit',  2000 )
trx_debit = Transaction.new('14-01-2012', 'debit',  500 )
account = Account.new('Bob')
account.transact(trx_credit1)
account.transact(trx_credit2)
account.transact(trx_debit)
statement = Statement.new(account)
statement.statement
statement.puts_statement
```
produces
```
date || credit || debit || balance
10/01/2012 || 1000 ||  || 1000
13/01/2012 || 2000 ||  || 3000
14-01-2012 ||  || 500 || 2500
```

To Do
=====
* lint - 6 violations remain

* convert date from string to date so the statement can be ordered

* refactor features/statement_spec.rb
