Feature: Counter
    In order to track progress efficiently and manage goals accurately
    As a project manager
    I want a customizable counter that lets me increase, decrease, and set limits easily, while receiving feedback when limits are reached.

    Background:
        Given the app is running

    Rule: The counter should be initialized at zero
        Scenario: User opens the counter app
            Then the counter should display the value of {'0'}

    Rule: A user should be able to increase the counter
        Scenario Outline: User increments the counter to track progress
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | times | expectedValue |
                | 1     | 1             |
                | 5     | 5             |
                | 9     | 9             |

        Scenario Outline: User reaches the maximum counter limit
            Given the maximum limit is set to <limitValue>
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>
            And the user should be informed that the maximum limit has been reached

            Examples:
                | limitValue | times | expectedValue |
                | 10         | 11    | 10            |
                | 8          | 9     | 8             |
                | 15         | 16    | 15            |

        Scenario Outline: User customizes the increment value
            Given the increment value is set to <incrementValue>
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | incrementValue | times | expectedValue |
                | 3              | 1     | 3             |
                | 5              | 2     | 10            |
                | 2              | 3     | 6             |

        Scenario Outline: User increments the counter with a custom value but hits the maximum limit
            Given the increment value is set to <incrementValue>
            And the maximum limit is set to <limitValue>
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>
            And the user should be informed that the maximum limit has been reached

            Examples:
                | incrementValue | limitValue | times | expectedValue |
                | 3              | 10         | 4     | 9             |
                | 4              | 9          | 3     | 8             |
                | 5              | 12         | 3     | 10            |

    Rule: A user should be able to decrease the counter
        Scenario Outline: User decrements the counter to adjust the value
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | times | expectedValue |
                | 1     | 0             |
                | 2     | 1             |
                | 4     | 1             |
                | 1     | -1            |
                | 6     | -1            |

        Scenario Outline: User reaches the minimum counter limit
            Given the minimum limit is set to <limitValue>
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>
            And the user should be informed that the minimum limit has been reached

            Examples:
                | limitValue | times | expectedValue |
                | 0          | 6     | 0             |
                | 2          | 9     | 2             |
                | 5          | 16    | 5             |

        Scenario Outline: User customizes the decrement value
            Given the decrement value is set to <decrementValue>
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | decrementValue | times | expectedValue |
                | 2              | 1     | 8             |
                | 4              | 2     | 2             |
                | 3              | 1     | -3            |

        Scenario Outline: User decrements the counter with a custom value but hits the minimum limit
            Given the decrement value is set to <decrementValue>
            And the minimum limit is set to <limitValue>
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>
            And the user should be informed that the minimum limit has been reached

            Examples:
                | decrementValue | limitValue | times | expectedValue |
                | 2              | 0          | 3     | 0             |
                | 3              | 2          | 3     | 2             |
                | 5              | 5          | 2     | 5             |

    Rule: A user should be able to reset the counter
        Scenario: User resets the counter to zero
            Given the counter is displaying {'6'}
            When the user requests to reset the counter
            And the user confirms the reset
            Then the counter should display the value of {'0'}

        Scenario: User cancels a reset request
            Given the counter is displaying {'6'}
            When the user requests to reset the counter
            And the user cancels the reset
            Then the counter should still display the value of {'6'}

    Rule: Users can customize the increment value
        Scenario Outline: User sets a valid increment value
            When the user sets the increment value to <incrementValue>
            Then the user should see the increment value as <incrementValue>

            Examples:
                | incrementValue |
                | 1              |
                | 2              |
                | 5              |

        Scenario Outline: User tries to set an invalid increment value
            Given the increment value is set to <currentIncrementValue>
            When the user sets an invalid increment value of <invalidValue>
            Then the increment value should remain <currentIncrementValue>
            And the user should be informed of the invalid increment value

            Examples:
                | currentIncrementValue | invalidValue |
                | 1                     | 0            |
                | 2                     | -1           |

    Rule: A user should be able customize the decrement value
        Scenario Outline: User sets a valid decrement value
            When the user sets the decrement value to <decrementValue>
            Then the user should see the decrement value as <decrementValue>

            Examples:
                | decrementValue |
                | 1              |
                | 2              |

        Scenario Outline: User tries to set an invalid decrement value
            Given the decrement value is set to <currentDecrementValue>
            When the user sets an invalid decrement value of <invalidValue>
            Then the decrement value should remain <currentDecrementValue>
            And the user should be informed of the invalid decrement value

            Examples:
                | currentDecrementValue | invalidValue |
                | 1                     | 0            |
                | 2                     | -1           |

    Rule: A user should be able to view the history of counter changes
        Scenario: User views the history of counter operations
            When the user increments the counter
            And the user decrements the counter
            And the user views the history of changes
            Then the history should show the following:
                | 'Action'    | 'Value' | 'Result' |
                | 'Increment' | 1       | 1        |
                | 'Decrement' | 1       | 0        |

    Rule: A user should be able to set the maximum limit for the counter
        Scenario Outline: User sets a valid maximum limit
            When the user sets the maximum limit to <limitValue>
            Then the user should see the maximum limit as <limitValue>

            Examples:
                | limitValue |
                | 10         |
                | 8          |
                | 15         |

        Scenario Outline: User tries to set an invalid maximum limit
            Given the maximum limit is set to <currentLimitValue>
            When the user sets an invalid maximum limit of <invalidValue>
            Then the maximum limit should remain <currentLimitValue>
            And the user should be informed that the limit must be valid

            Examples:
                | currentLimitValue | invalidValue |
                | 5                 | 4            |
                | 10                | 9            |

    Rule: A user should be able to set the minimum limit for the counter
        Scenario Outline: User sets a valid minimum limit
            When the user sets the minimum limit to <limitValue>
            Then the user should see the minimum limit as <limitValue>

            Examples:
                | limitValue |
                | 0          |
                | 2          |

        Scenario Outline: User tries to set an invalid minimum limit
            Given the minimum limit is set to <currentLimitValue>
            When the user sets an invalid minimum limit of <invalidValue>
            Then the minimum limit should remain <currentLimitValue>
            And the user should be informed that the limit must be valid

            Examples:
                | currentLimitValue | invalidValue |
                | 0                 | -1           |
                | 2                 | 3            |
