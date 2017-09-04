# Bank tech test

### User stories

```
As a client
So that I can manage my money
I want to be able to have a bank account

As a client
So that I can have savings
I want to be able to make deposits to my account

As a client
So that I can get money when I need it
I want to be able to withdraw an amount from my account

As a client
So that I can have control of my account
I want to get my account statement printed

account statement
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

```

### Instructions

* git clone https://github.com/artemisxen/bank_tech_test.git
* cd bank_tech_test
* irb
* require './lib/account'
* require './lib/statement'
* account = Account.new
* account.deposit(2000)
* account.withdraw(500)
* statement = Statement.new(account)
* statement.print_statement
