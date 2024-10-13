// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:bdd_widget_test/data_table.dart' as bdd;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/the_counter_should_display_the_value_of.dart';
import './step/the_user_increments_the_counter_times.dart';
import './step/the_maximum_limit_is_set_to.dart';
import './step/the_user_should_be_informed_that_the_maximum_limit_has_been_reached.dart';
import './step/the_increment_value_is_set_to.dart';
import './step/the_user_decrements_the_counter_times.dart';
import './step/the_minimum_limit_is_set_to.dart';
import './step/the_user_should_be_informed_that_the_minimum_limit_has_been_reached.dart';
import './step/the_decrement_value_is_set_to.dart';
import './step/the_counter_is_displaying.dart';
import './step/the_user_requests_to_reset_the_counter.dart';
import './step/the_user_confirms_the_reset.dart';
import './step/the_user_cancels_the_reset.dart';
import './step/the_counter_should_still_display_the_value_of.dart';
import './step/the_user_sets_the_increment_value_to.dart';
import './step/the_user_should_see_the_increment_value_as.dart';
import './step/the_user_sets_an_invalid_increment_value_of.dart';
import './step/the_increment_value_should_remain.dart';
import './step/the_user_should_be_informed_of_the_invalid_increment_value.dart';
import './step/the_user_sets_the_decrement_value_to.dart';
import './step/the_user_should_see_the_decrement_value_as.dart';
import './step/the_user_sets_an_invalid_decrement_value_of.dart';
import './step/the_decrement_value_should_remain.dart';
import './step/the_user_should_be_informed_of_the_invalid_decrement_value.dart';
import './step/the_user_increments_the_counter.dart';
import './step/the_user_decrements_the_counter.dart';
import './step/the_user_views_the_history_of_changes.dart';
import './step/the_history_should_show_the_following.dart';
import './step/the_user_sets_the_maximum_limit_to.dart';
import './step/the_user_should_see_the_maximum_limit_as.dart';
import './step/the_user_sets_an_invalid_maximum_limit_of.dart';
import './step/the_maximum_limit_should_remain.dart';
import './step/the_user_should_be_informed_that_the_limit_must_be_valid.dart';
import './step/the_user_sets_the_minimum_limit_to.dart';
import './step/the_user_should_see_the_minimum_limit_as.dart';
import './step/the_user_sets_an_invalid_minimum_limit_of.dart';
import './step/the_minimum_limit_should_remain.dart';

void main() {
  group('''Counter''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
    }

    testWidgets('''User opens the counter app''', (tester) async {
      await bddSetUp(tester);
      await theCounterShouldDisplayTheValueOf(tester, '0');
    });
    testWidgets(
        '''Outline: User increments the counter to track progress (1, 1)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserIncrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 1);
    });
    testWidgets(
        '''Outline: User increments the counter to track progress (5, 5)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserIncrementsTheCounterTimes(tester, 5);
      await theCounterShouldDisplayTheValueOf(tester, 5);
    });
    testWidgets(
        '''Outline: User increments the counter to track progress (9, 9)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserIncrementsTheCounterTimes(tester, 9);
      await theCounterShouldDisplayTheValueOf(tester, 9);
    });
    testWidgets(
        '''Outline: User reaches the maximum counter limit (10, 11, 10)''',
        (tester) async {
      await bddSetUp(tester);
      await theMaximumLimitIsSetTo(tester, 10);
      await theUserIncrementsTheCounterTimes(tester, 11);
      await theCounterShouldDisplayTheValueOf(tester, 10);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets('''Outline: User reaches the maximum counter limit (8, 9, 8)''',
        (tester) async {
      await bddSetUp(tester);
      await theMaximumLimitIsSetTo(tester, 8);
      await theUserIncrementsTheCounterTimes(tester, 9);
      await theCounterShouldDisplayTheValueOf(tester, 8);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User reaches the maximum counter limit (15, 16, 15)''',
        (tester) async {
      await bddSetUp(tester);
      await theMaximumLimitIsSetTo(tester, 15);
      await theUserIncrementsTheCounterTimes(tester, 16);
      await theCounterShouldDisplayTheValueOf(tester, 15);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets('''Outline: User customizes the increment value (3, 1, 3)''',
        (tester) async {
      await bddSetUp(tester);
      await theIncrementValueIsSetTo(tester, 3);
      await theUserIncrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 3);
    });
    testWidgets('''Outline: User customizes the increment value (5, 2, 10)''',
        (tester) async {
      await bddSetUp(tester);
      await theIncrementValueIsSetTo(tester, 5);
      await theUserIncrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 10);
    });
    testWidgets('''Outline: User customizes the increment value (2, 3, 6)''',
        (tester) async {
      await bddSetUp(tester);
      await theIncrementValueIsSetTo(tester, 2);
      await theUserIncrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 6);
    });
    testWidgets(
        '''Outline: User increments the counter with a custom value but hits the maximum limit (3, 10, 4, 9)''',
        (tester) async {
      await bddSetUp(tester);
      await theIncrementValueIsSetTo(tester, 3);
      await theMaximumLimitIsSetTo(tester, 10);
      await theUserIncrementsTheCounterTimes(tester, 4);
      await theCounterShouldDisplayTheValueOf(tester, 9);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User increments the counter with a custom value but hits the maximum limit (4, 9, 3, 8)''',
        (tester) async {
      await bddSetUp(tester);
      await theIncrementValueIsSetTo(tester, 4);
      await theMaximumLimitIsSetTo(tester, 9);
      await theUserIncrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 8);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User increments the counter with a custom value but hits the maximum limit (5, 12, 3, 10)''',
        (tester) async {
      await bddSetUp(tester);
      await theIncrementValueIsSetTo(tester, 5);
      await theMaximumLimitIsSetTo(tester, 12);
      await theUserIncrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 10);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User decrements the counter to adjust the value (1, 0)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 0);
    });
    testWidgets(
        '''Outline: User decrements the counter to adjust the value (2, 1)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserDecrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 1);
    });
    testWidgets(
        '''Outline: User decrements the counter to adjust the value (4, 1)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserDecrementsTheCounterTimes(tester, 4);
      await theCounterShouldDisplayTheValueOf(tester, 1);
    });
    testWidgets(
        '''Outline: User decrements the counter to adjust the value (1, -1)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, -1);
    });
    testWidgets(
        '''Outline: User decrements the counter to adjust the value (6, -1)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserDecrementsTheCounterTimes(tester, 6);
      await theCounterShouldDisplayTheValueOf(tester, -1);
    });
    testWidgets('''Outline: User reaches the minimum counter limit (0, 6, 0)''',
        (tester) async {
      await bddSetUp(tester);
      await theMinimumLimitIsSetTo(tester, 0);
      await theUserDecrementsTheCounterTimes(tester, 6);
      await theCounterShouldDisplayTheValueOf(tester, 0);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets('''Outline: User reaches the minimum counter limit (2, 9, 2)''',
        (tester) async {
      await bddSetUp(tester);
      await theMinimumLimitIsSetTo(tester, 2);
      await theUserDecrementsTheCounterTimes(tester, 9);
      await theCounterShouldDisplayTheValueOf(tester, 2);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User reaches the minimum counter limit (5, 16, 5)''',
        (tester) async {
      await bddSetUp(tester);
      await theMinimumLimitIsSetTo(tester, 5);
      await theUserDecrementsTheCounterTimes(tester, 16);
      await theCounterShouldDisplayTheValueOf(tester, 5);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets('''Outline: User customizes the decrement value (2, 1, 8)''',
        (tester) async {
      await bddSetUp(tester);
      await theDecrementValueIsSetTo(tester, 2);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 8);
    });
    testWidgets('''Outline: User customizes the decrement value (4, 2, 2)''',
        (tester) async {
      await bddSetUp(tester);
      await theDecrementValueIsSetTo(tester, 4);
      await theUserDecrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 2);
    });
    testWidgets('''Outline: User customizes the decrement value (3, 1, -3)''',
        (tester) async {
      await bddSetUp(tester);
      await theDecrementValueIsSetTo(tester, 3);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, -3);
    });
    testWidgets(
        '''Outline: User decrements the counter with a custom value but hits the minimum limit (2, 0, 3, 0)''',
        (tester) async {
      await bddSetUp(tester);
      await theDecrementValueIsSetTo(tester, 2);
      await theMinimumLimitIsSetTo(tester, 0);
      await theUserDecrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 0);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User decrements the counter with a custom value but hits the minimum limit (3, 2, 3, 2)''',
        (tester) async {
      await bddSetUp(tester);
      await theDecrementValueIsSetTo(tester, 3);
      await theMinimumLimitIsSetTo(tester, 2);
      await theUserDecrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 2);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User decrements the counter with a custom value but hits the minimum limit (5, 5, 2, 5)''',
        (tester) async {
      await bddSetUp(tester);
      await theDecrementValueIsSetTo(tester, 5);
      await theMinimumLimitIsSetTo(tester, 5);
      await theUserDecrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 5);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets('''User resets the counter to zero''', (tester) async {
      await bddSetUp(tester);
      await theCounterIsDisplaying(tester, '6');
      await theUserRequestsToResetTheCounter(tester);
      await theUserConfirmsTheReset(tester);
      await theCounterShouldDisplayTheValueOf(tester, '0');
    });
    testWidgets('''User cancels a reset request''', (tester) async {
      await bddSetUp(tester);
      await theCounterIsDisplaying(tester, '6');
      await theUserRequestsToResetTheCounter(tester);
      await theUserCancelsTheReset(tester);
      await theCounterShouldStillDisplayTheValueOf(tester, '6');
    });
    testWidgets('''Outline: User sets a valid increment value (1)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserSetsTheIncrementValueTo(tester, 1);
      await theUserShouldSeeTheIncrementValueAs(tester, 1);
    });
    testWidgets('''Outline: User sets a valid increment value (2)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserSetsTheIncrementValueTo(tester, 2);
      await theUserShouldSeeTheIncrementValueAs(tester, 2);
    });
    testWidgets('''Outline: User sets a valid increment value (5)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserSetsTheIncrementValueTo(tester, 5);
      await theUserShouldSeeTheIncrementValueAs(tester, 5);
    });
    testWidgets(
        '''Outline: User tries to set an invalid increment value (1, 0)''',
        (tester) async {
      await bddSetUp(tester);
      await theIncrementValueIsSetTo(tester, 1);
      await theUserSetsAnInvalidIncrementValueOf(tester, 0);
      await theIncrementValueShouldRemain(tester, 1);
      await theUserShouldBeInformedOfTheInvalidIncrementValue(tester);
    });
    testWidgets(
        '''Outline: User tries to set an invalid increment value (2, -1)''',
        (tester) async {
      await bddSetUp(tester);
      await theIncrementValueIsSetTo(tester, 2);
      await theUserSetsAnInvalidIncrementValueOf(tester, -1);
      await theIncrementValueShouldRemain(tester, 2);
      await theUserShouldBeInformedOfTheInvalidIncrementValue(tester);
    });
    testWidgets('''Outline: User sets a valid decrement value (1)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserSetsTheDecrementValueTo(tester, 1);
      await theUserShouldSeeTheDecrementValueAs(tester, 1);
    });
    testWidgets('''Outline: User sets a valid decrement value (2)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserSetsTheDecrementValueTo(tester, 2);
      await theUserShouldSeeTheDecrementValueAs(tester, 2);
    });
    testWidgets(
        '''Outline: User tries to set an invalid decrement value (1, 0)''',
        (tester) async {
      await bddSetUp(tester);
      await theDecrementValueIsSetTo(tester, 1);
      await theUserSetsAnInvalidDecrementValueOf(tester, 0);
      await theDecrementValueShouldRemain(tester, 1);
      await theUserShouldBeInformedOfTheInvalidDecrementValue(tester);
    });
    testWidgets(
        '''Outline: User tries to set an invalid decrement value (2, -1)''',
        (tester) async {
      await bddSetUp(tester);
      await theDecrementValueIsSetTo(tester, 2);
      await theUserSetsAnInvalidDecrementValueOf(tester, -1);
      await theDecrementValueShouldRemain(tester, 2);
      await theUserShouldBeInformedOfTheInvalidDecrementValue(tester);
    });
    testWidgets('''User views the history of counter operations''',
        (tester) async {
      await bddSetUp(tester);
      await theUserIncrementsTheCounter(tester);
      await theUserDecrementsTheCounter(tester);
      await theUserViewsTheHistoryOfChanges(tester);
      await theHistoryShouldShowTheFollowing(
          tester,
          const bdd.DataTable([
            ['Action', 'Value', 'Result'],
            ['Increment', 1, 1],
            ['Decrement', 1, 0]
          ]));
    });
    testWidgets('''Outline: User sets a valid maximum limit (10)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserSetsTheMaximumLimitTo(tester, 10);
      await theUserShouldSeeTheMaximumLimitAs(tester, 10);
    });
    testWidgets('''Outline: User sets a valid maximum limit (8)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserSetsTheMaximumLimitTo(tester, 8);
      await theUserShouldSeeTheMaximumLimitAs(tester, 8);
    });
    testWidgets('''Outline: User sets a valid maximum limit (15)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserSetsTheMaximumLimitTo(tester, 15);
      await theUserShouldSeeTheMaximumLimitAs(tester, 15);
    });
    testWidgets(
        '''Outline: User tries to set an invalid maximum limit (5, 4)''',
        (tester) async {
      await bddSetUp(tester);
      await theMaximumLimitIsSetTo(tester, 5);
      await theUserSetsAnInvalidMaximumLimitOf(tester, 4);
      await theMaximumLimitShouldRemain(tester, 5);
      await theUserShouldBeInformedThatTheLimitMustBeValid(tester);
    });
    testWidgets(
        '''Outline: User tries to set an invalid maximum limit (10, 9)''',
        (tester) async {
      await bddSetUp(tester);
      await theMaximumLimitIsSetTo(tester, 10);
      await theUserSetsAnInvalidMaximumLimitOf(tester, 9);
      await theMaximumLimitShouldRemain(tester, 10);
      await theUserShouldBeInformedThatTheLimitMustBeValid(tester);
    });
    testWidgets('''Outline: User sets a valid minimum limit (0)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserSetsTheMinimumLimitTo(tester, 0);
      await theUserShouldSeeTheMinimumLimitAs(tester, 0);
    });
    testWidgets('''Outline: User sets a valid minimum limit (2)''',
        (tester) async {
      await bddSetUp(tester);
      await theUserSetsTheMinimumLimitTo(tester, 2);
      await theUserShouldSeeTheMinimumLimitAs(tester, 2);
    });
    testWidgets(
        '''Outline: User tries to set an invalid minimum limit (0, -1)''',
        (tester) async {
      await bddSetUp(tester);
      await theMinimumLimitIsSetTo(tester, 0);
      await theUserSetsAnInvalidMinimumLimitOf(tester, -1);
      await theMinimumLimitShouldRemain(tester, 0);
      await theUserShouldBeInformedThatTheLimitMustBeValid(tester);
    });
    testWidgets(
        '''Outline: User tries to set an invalid minimum limit (2, 3)''',
        (tester) async {
      await bddSetUp(tester);
      await theMinimumLimitIsSetTo(tester, 2);
      await theUserSetsAnInvalidMinimumLimitOf(tester, 3);
      await theMinimumLimitShouldRemain(tester, 2);
      await theUserShouldBeInformedThatTheLimitMustBeValid(tester);
    });
  });
}
