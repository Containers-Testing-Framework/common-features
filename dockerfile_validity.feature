Feature: Dockerfile validation

  Scenario: Dockerfile basic checks
      Given the project contains Dockerfile
      Then First dockerfile instruction is FROM
       And dockerfile doesn't contain unknown instructions

  Scenario: Dockerfile_lint
      Then Dockerfile_lint passes

  Scenario: Dockerfile is buildable
      Then Image can be build from Dockerfile
