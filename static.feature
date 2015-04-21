Feature: Generic Dockerfile is sane

    Background:
        Given Dockerfile

    Scenario: Static analysis of dockerfile
        When Generic Dockerlint is run
        Then it passes

    Scenario: Dockerfile is buildable
        When Generic image is build from Dockerfile
        Then it satisfies best practices
