Feature: Counter
    As a user, I want to use a counter so that I can track and manage a numerical value easily.

    Rule: Users can increase the counter
        Scenario Outline: The user increments the counter by a specified amount
            Given the counter is initialized at <initialValue>
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | initialValue | times | expectedValue |
                | 0            | 1     | 1             |
                | 0            | 2     | 2             |
                | 1            | 3     | 4             |
                | 5            | 2     | 7             |

    Rule: Users can decrease the counter
        Scenario Outline: The user decrements the counter by a specified amount
            Given the counter is initialized at <initialValue>
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | initialValue | times | expectedValue |
                | 1            | 1     | 0             |
                | 2            | 1     | 1             |
                | 3            | 2     | 1             |
                | 5            | 4     | 1             |
                | 0            | 1     | 0             |

    Rule: Users can reset the counter
        Scenario Outline: The user resets or cancels the counter reset
            Given the counter is initialized at <initialValue>
            When the user requests to reset the counter
            And the user <confirmationStatus> the reset
            Then the counter should display the value of <expectedValue>

            Examples:
                | initialValue | confirmationStatus | expectedValue |
                | 5            | 'confirms'         | 0             |
                | 5            | 'cancels'          | 5             |
                | 10           | 'confirms'         | 0             |
                | 10           | 'cancels'          | 10            |

    Rule: Users can customize the increment value
        Scenario Outline: The user increments the counter by a custom value
            Given the counter is initialized at <initialValue>
            And the increment value is set to <incrementValue>
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | initialValue | incrementValue | times | expectedValue |
                | 0            | 3              | 1     | 3             |
                | 0            | 5              | 2     | 10            |
                | 5            | 2              | 3     | 11            |

    Rule: Users can customize the decrement value
        Scenario Outline: The user decrements the counter by a custom value
            Given the counter is initialized at <initialValue>
            And the decrement value is set to <decrementValue>
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>

            Examples:
                | initialValue | decrementValue | times | expectedValue |
                | 10           | 2              | 1     | 8             |
                | 10           | 4              | 2     | 2             |
                | 15           | 5              | 3     | 0             |

    Rule: Users can view a history of counter changes
        Scenario: The user views the history of counter changes
            Given the counter is initialized at zero
            When the user increments the counter
            And the user decrements the counter
            And the user views the history of changes
            Then the history should show:
                | 'Action'    | 'Value' | 'Result' |
                | 'Increment' | 1       | 1        |
                | 'Decrement' | 1       | 0        |

    Rule: Users can set a maximum limit for the counter
        Scenario Outline: The user sets a maximum limit
            Given the counter is initialized at <initialValue>
            And the maximum limit is set to <limitValue>
            Then the maximum limit should be displayed as <limitValue>

            Examples:
                | initialValue | limitValue |
                | 0            | 10         |
                | 5            | 8          |
                | 10           | 15         |

        Scenario Outline: The user attempts to set an invalid maximum limit
            Given the counter is initialized at <initialValue>
            When the user sets a maximum limit to <invalidValue>
            Then the counter should still display the value of <initialValue>
            And the user should be informed that the maximum limit must be greater than or equal to the current counter value

            Examples:
                | initialValue | invalidValue |
                | 5            | 4            |
                | 10           | 9            |
                | 10           | -1           |

    Rule: User is limited based on the maximum limit set
        Scenario Outline: The user reaches the maximum limit
            Given the counter is initialized at <initialValue>
            And the maximum limit is set to <limitValue>
            When the user increments the counter <times> times
            Then the counter should display the value of <expectedValue>
            And the user should be informed that the maximum limit has been reached

            Examples:
                | initialValue | limitValue | times | expectedValue |
                | 0            | 10         | 11    | 10            |
                | 5            | 8          | 4     | 8             |
                | 10           | 15         | 6     | 15            |

    Rule: Users can set a minimum limit for the counter
        Scenario Outline: The user sets a minimum limit
            Given the counter is initialized at <initialValue>
            And the minimum limit is set to <limitValue>
            Then the minimum limit should be displayed as <limitValue>

            Examples:
                | initialValue | limitValue |
                | 5            | 0          |
                | 10           | 2          |
                | 20           | 5          |

        Scenario Outline: The user attempts to set an invalid minimum limit
            Given the counter is initialized at <initialValue>
            When the user sets a minimum limit to <invalidValue>
            Then the counter should still display the value of <initialValue>
            And the user should be informed that the minimum limit must be less than or equal to the current counter value

            Examples:
                | initialValue | invalidValue |
                | 5            | 6            |
                | 10           | 11           |

    Rule: User is limited based on the minimum limit set
        Scenario Outline: The user reaches the minimum limit
            Given the counter is initialized at <initialValue>
            And the minimum limit is set to <limitValue>
            When the user decrements the counter <times> times
            Then the counter should display the value of <expectedValue>
            And the user should be informed that the minimum limit has been reached

            Examples:
                | initialValue | limitValue | times | expectedValue |
                | 5            | 0          | 6     | 0             |
                | 10           | 2          | 9     | 2             |
                | 20           | 5          | 16    | 5             |
