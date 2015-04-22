Feature: Dockerfile validation

  Scenario: Dockerfile basic checks
      Given the project contains Dockerfile
      Then First dockerfile instruction is FROM
       And dockerfile doesn't contain unknown instructions
