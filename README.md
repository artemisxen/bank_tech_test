## Bank tech test

### Approach to solution
- Writing the user stories from the given informations
- Designing the domain model using the user stories
- Designing the structure of the classes and their methods from the domain model
- Implementing each feature using TDD and following the Red-Green-Refactor cycle

### User stories

```
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

### Code structure

The code structure consists of two classes: Account and Statement.

Statement class is only responsible for creating the printed output of the transactions.

Account class is responsible for deposits, withdrawals and printing the statements.

### Instructions
```
> git clone https://github.com/artemisxen/bank_tech_test.git
> cd bank_tech_test
> bundle install
```

###### To run the code:
type ```irb```
```ruby
* require './lib/account'
* require './lib/statement'
* require './lib/row'
* account = Account.new(Statement.new)
* account.deposit(2000)
* account.withdraw(500)
* account.print_statement
```
###### To run the tests:
```
> rspec
```
