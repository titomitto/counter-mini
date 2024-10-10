Feature: Counter
    As a user, I want to use a counter to track and manage a numerical value easily.

    Rule: Users can increase the counter
        Scenario Outline: User increments the counter to track progress
            Given the counter is initialized at <initialValue>
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | initialValue | times | expectedValue |
                | 0            | 1     | 1             |
                | 0            | 2     | 2             |
                | 1            | 3     | 4             |
                | 5            | 2     | 7             |

        Scenario Outline: User reaches the maximum counter limit
            Given the counter is initialized at <initialValue>
            Given the maximum limit is set to <limitValue>
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>
            And the user should be informed that the maximum limit has been reached

            Examples:
                | initialValue | limitValue | times | expectedValue |
                | 0            | 10         | 11    | 10            |
                | 5            | 8          | 4     | 8             |
                | 10           | 15         | 6     | 15            |

        Scenario Outline: User customizes the increment value
            Given the counter is initialized at <initialValue>
            Given the increment value is set to <incrementValue>
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | initialValue | incrementValue | times | expectedValue |
                | 0            | 3              | 1     | 3             |
                | 0            | 5              | 2     | 10            |
                | 5            | 2              | 3     | 11            |

        Scenario Outline: User increments the counter with a custom value but hits the maximum limit
            Given the counter is initialized at <initialValue>
            Given the increment value is set to <incrementValue>
            Given the maximum limit is set to <limitValue>
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>
            And the user should be informed that the maximum limit has been reached

            Examples:
                | initialValue | incrementValue | limitValue | times | expectedValue |
                | 5            | 3              | 10         | 2     | 10            |
                | 2            | 4              | 9          | 3     | 9             |
                | 1            | 5              | 12         | 3     | 11            |

    Rule: Users can decrease the counter
        Scenario Outline: User decrements the counter to adjust the value
            Given the counter is initialized at <initialValue>
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | initialValue | times | expectedValue |
                | 1            | 1     | 0             |
                | 3            | 2     | 1             |
                | 5            | 4     | 1             |
                | 0            | 1     | -1            |
                | 5            | 6     | -1            |

        Scenario Outline: User reaches the minimum counter limit
            Given the counter is initialized at <initialValue>
            Given the minimum limit is set to <limitValue>
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>
            And the user should be informed that the minimum limit has been reached

            Examples:
                | initialValue | limitValue | times | expectedValue |
                | 5            | 0          | 6     | 0             |
                | 10           | 2          | 9     | 2             |
                | 20           | 5          | 16    | 5             |

        Scenario Outline: User customizes the decrement value
            Given the counter is initialized at <initialValue>
            Given the decrement value is set to <decrementValue>
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | initialValue | decrementValue | times | expectedValue |
                | 10           | 2              | 1     | 8             |
                | 10           | 4              | 2     | 2             |
                | 0            | 3              | 1     | -3            |

        Scenario Outline: User decrements the counter with a custom value but hits the minimum limit
            Given the counter is initialized at <initialValue>
            Given the decrement value is set to <decrementValue>
            Given the minimum limit is set to <limitValue>
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>
            And the user should be informed that the minimum limit has been reached

            Examples:
                | initialValue | decrementValue | limitValue | times | expectedValue |
                | 5            | 2              | 0          | 3     | 0             |
                | 8            | 3              | 2          | 3     | 2             |
                | 10           | 5              | 5          | 2     | 5             |

    Rule: Users can reset the counter
        Scenario: User resets the counter to zero
            Given the counter is initialized at 6
            When the user requests to reset the counter
            And the user confirms the reset
            Then the counter should display the value of 0

        Scenario: User cancels a reset request
            Given the counter is initialized at 6
            When the user requests to reset the counter
            And the user cancels the reset
            Then the counter should still display the value of 6

    Rule: Users can customize the increment value
        Scenario Outline: User sets a valid increment value
            Given the counter is initialized at <initialValue>
            When the user sets the increment value to <incrementValue>
            Then the user should see the increment value as <incrementValue>

            Examples:
                | initialValue | incrementValue |
                | 0            | 1              |
                | 5            | 2              |
                | 10           | 5              |

        Scenario Outline: User tries to set an invalid increment value
            Given the counter is initialized at <initialValue>
            When the user sets an invalid increment value of <invalidValue>
            Then the increment value should remain unchanged
            And the user should be informed of an invalid increment value

            Examples:
                | initialValue | invalidValue |
                | 5            | 0            |
                | 10           | -1           |

    Rule: Users can customize the decrement value
        Scenario Outline: User sets a valid decrement value
            Given the counter is initialized at <initialValue>
            When the user sets the decrement value to <decrementValue>
            Then the user should see the decrement value as <decrementValue>

            Examples:
                | initialValue | decrementValue |
                | 5            | 1              |
                | 10           | 2              |

        Scenario Outline: User tries to set an invalid decrement value
            Given the counter is initialized at <initialValue>
            When the user sets an invalid decrement value of <invalidValue>
            Then the decrement value should remain unchanged
            And the user should be informed of an invalid decrement value

            Examples:
                | initialValue | invalidValue |
                | 5            | 0            |
                | 10           | -1           |

    Rule: Users can view the history of counter changes
        Scenario: User views the history of counter operations
            Given the counter is initialized at zero
            When the user increments the counter
            And the user decrements the counter
            And the user views the history of changes
            Then the history should show the following:
                | 'Action'    | 'Value' | 'Result' |
                | 'Increment' | 1       | 1        |
                | 'Decrement' | 1       | 0        |

    Rule: Users can set a maximum limit for the counter
        Scenario Outline: User sets a valid maximum limit
            Given the counter is initialized at <initialValue>
            When the user sets the maximum limit to <limitValue>
            Then the user should see the maximum limit as <limitValue>

            Examples:
                | initialValue | limitValue |
                | 0            | 10         |
                | 5            | 8          |
                | 10           | 15         |

        Scenario Outline: User tries to set an invalid maximum limit
            Given the counter is initialized at <initialValue>
            When the user sets an invalid maximum limit of <invalidValue>
            Then the maximum limit should remain unchanged
            And the user should be informed that the limit must be valid

            Examples:
                | initialValue | invalidValue |
                | 5            | 4            |
                | 10           | 9            |

    Rule: Users can set a minimum limit for the counter
        Scenario Outline: User sets a valid minimum limit
            Given the counter is initialized at <initialValue>
            When the user sets the minimum limit to <limitValue>
            Then the user should see the minimum limit as <limitValue>

            Examples:
                | initialValue | limitValue |
                | 5            | 0          |
                | 10           | 2          |

        Scenario Outline: User tries to set an invalid minimum limit
            Given the counter is initialized at <initialValue>
            When the user sets an invalid minimum limit of <invalidValue>
            Then the minimum limit should remain unchanged
            And the user should be informed that the limit must be valid

            Examples:
                | initialValue | invalidValue |
                | 5            | -1           |
                | 10           | 11           |
