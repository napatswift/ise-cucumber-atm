Feature: deposit
  As a customer
  I want to deposit from my account using ATM

  Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

    Scenario: Customer deposit from the account
      When I deposit from my account 100
      Then my account balance is 300

    Scenario: Customer deposit from the account and withdraw
      When I deposit from my account 100
      Then my account balance is 300
      When I withdraw 50 from ATM
      Then my account balance is 250