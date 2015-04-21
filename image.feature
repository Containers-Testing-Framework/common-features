Feature:
Background:
    Given Generic container is created with custom options
    """
    -v /host:/docker -p 1234:80 --name foo
    """

Scenario:
    When commands bellow are run in the container
        | command | expected output |
        |"CREATE TABLE tbl (col1 VARCHAR(20), col2 VARCHAR(20));" | |
        |"INSERT INTO tbl VALUES ('foo1', 'bar1');" | |
        |"INSERT INTO tbl VALUES ('foo2', 'bar2');" | |
        |"INSERT INTO tbl VALUES ('foo3', 'bar3');" | |
        |"SELECT * FROM tbl;" | |
        |"DROP TABLE tbl;" | |
    Then each command passes
    And respective outputs are produced

Scenario:
    When command bellow is run in the container
        | command | expected output |
        |"CREATE TABLE tbl (col1 VARCHAR(20), col2 VARCHAR(20));" | |
    Then command passes
    And expected output is produced
