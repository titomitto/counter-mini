// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:bdd_widget_test/data_table.dart' as bdd;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_counter_is_initialized_at.dart';
import './step/the_user_increments_the_counter_times.dart';
import './step/the_counter_should_display_the_value_of.dart';
import './step/the_maximum_limit_is_set_to.dart';
import './step/the_user_should_be_informed_that_the_maximum_limit_has_been_reached.dart';
import './step/the_increment_value_is_set_to.dart';
import './step/the_user_decrements_the_counter_times.dart';
import './step/the_minimum_limit_is_set_to.dart';
import './step/the_user_should_be_informed_that_the_minimum_limit_has_been_reached.dart';
import './step/the_decrement_value_is_set_to.dart';
import './step/the_counter_is_initialized_at6.dart';
import './step/the_user_requests_to_reset_the_counter.dart';
import './step/the_user_confirms_the_reset.dart';
import './step/the_counter_should_display_the_value_of0.dart';
import './step/the_user_cancels_the_reset.dart';
import './step/the_counter_should_still_display_the_value_of6.dart';
import './step/the_user_sets_the_increment_value_to.dart';
import './step/the_user_should_see_the_increment_value_as.dart';
import './step/the_user_sets_an_invalid_increment_value_of.dart';
import './step/the_increment_value_should_remain_unchanged.dart';
import './step/the_user_should_be_informed_of_an_invalid_increment_value.dart';
import './step/the_user_sets_the_decrement_value_to.dart';
import './step/the_user_should_see_the_decrement_value_as.dart';
import './step/the_user_sets_an_invalid_decrement_value_of.dart';
import './step/the_decrement_value_should_remain_unchanged.dart';
import './step/the_user_should_be_informed_of_an_invalid_decrement_value.dart';
import './step/the_counter_is_initialized_at_zero.dart';
import './step/the_user_increments_the_counter.dart';
import './step/the_user_decrements_the_counter.dart';
import './step/the_user_views_the_history_of_changes.dart';
import './step/the_history_should_show_the_following.dart';
import './step/the_user_sets_the_maximum_limit_to.dart';
import './step/the_user_should_see_the_maximum_limit_as.dart';
import './step/the_user_sets_an_invalid_maximum_limit_of.dart';
import './step/the_maximum_limit_should_remain_unchanged.dart';
import './step/the_user_should_be_informed_that_the_limit_must_be_valid.dart';
import './step/the_user_sets_the_minimum_limit_to.dart';
import './step/the_user_should_see_the_minimum_limit_as.dart';
import './step/the_user_sets_an_invalid_minimum_limit_of.dart';
import './step/the_minimum_limit_should_remain_unchanged.dart';

void main() {
  group('''Counter''', () {
    testWidgets(
        '''Outline: User increments the counter to track progress (0, 1, 1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theUserIncrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 1);
    });
    testWidgets(
        '''Outline: User increments the counter to track progress (0, 2, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theUserIncrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 2);
    });
    testWidgets(
        '''Outline: User increments the counter to track progress (1, 3, 4)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 1);
      await theUserIncrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 4);
    });
    testWidgets(
        '''Outline: User increments the counter to track progress (5, 2, 7)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserIncrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 7);
    });
    testWidgets(
        '''Outline: User reaches the maximum counter limit (0, 10, 11, 10)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theMaximumLimitIsSetTo(tester, 10);
      await theUserIncrementsTheCounterTimes(tester, 11);
      await theCounterShouldDisplayTheValueOf(tester, 10);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User reaches the maximum counter limit (5, 8, 4, 8)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theMaximumLimitIsSetTo(tester, 8);
      await theUserIncrementsTheCounterTimes(tester, 4);
      await theCounterShouldDisplayTheValueOf(tester, 8);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User reaches the maximum counter limit (10, 15, 6, 15)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theMaximumLimitIsSetTo(tester, 15);
      await theUserIncrementsTheCounterTimes(tester, 6);
      await theCounterShouldDisplayTheValueOf(tester, 15);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets('''Outline: User customizes the increment value (0, 3, 1, 3)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theIncrementValueIsSetTo(tester, 3);
      await theUserIncrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 3);
    });
    testWidgets(
        '''Outline: User customizes the increment value (0, 5, 2, 10)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theIncrementValueIsSetTo(tester, 5);
      await theUserIncrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 10);
    });
    testWidgets(
        '''Outline: User customizes the increment value (5, 2, 3, 11)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theIncrementValueIsSetTo(tester, 2);
      await theUserIncrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 11);
    });
    testWidgets(
        '''Outline: User increments the counter with a custom value but hits the maximum limit (5, 3, 10, 2, 10)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theIncrementValueIsSetTo(tester, 3);
      await theMaximumLimitIsSetTo(tester, 10);
      await theUserIncrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 10);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User increments the counter with a custom value but hits the maximum limit (2, 4, 9, 3, 9)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 2);
      await theIncrementValueIsSetTo(tester, 4);
      await theMaximumLimitIsSetTo(tester, 9);
      await theUserIncrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 9);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User increments the counter with a custom value but hits the maximum limit (1, 5, 12, 3, 11)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 1);
      await theIncrementValueIsSetTo(tester, 5);
      await theMaximumLimitIsSetTo(tester, 12);
      await theUserIncrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 11);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User decrements the counter to adjust the value (1, 1, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 1);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 0);
    });
    testWidgets(
        '''Outline: User decrements the counter to adjust the value (3, 2, 1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 3);
      await theUserDecrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 1);
    });
    testWidgets(
        '''Outline: User decrements the counter to adjust the value (5, 4, 1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserDecrementsTheCounterTimes(tester, 4);
      await theCounterShouldDisplayTheValueOf(tester, 1);
    });
    testWidgets(
        '''Outline: User decrements the counter to adjust the value (0, 1, -1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, -1);
    });
    testWidgets(
        '''Outline: User decrements the counter to adjust the value (5, 6, -1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserDecrementsTheCounterTimes(tester, 6);
      await theCounterShouldDisplayTheValueOf(tester, -1);
    });
    testWidgets(
        '''Outline: User reaches the minimum counter limit (5, 0, 6, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theMinimumLimitIsSetTo(tester, 0);
      await theUserDecrementsTheCounterTimes(tester, 6);
      await theCounterShouldDisplayTheValueOf(tester, 0);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User reaches the minimum counter limit (10, 2, 9, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theMinimumLimitIsSetTo(tester, 2);
      await theUserDecrementsTheCounterTimes(tester, 9);
      await theCounterShouldDisplayTheValueOf(tester, 2);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User reaches the minimum counter limit (20, 5, 16, 5)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 20);
      await theMinimumLimitIsSetTo(tester, 5);
      await theUserDecrementsTheCounterTimes(tester, 16);
      await theCounterShouldDisplayTheValueOf(tester, 5);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User customizes the decrement value (10, 2, 1, 8)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theDecrementValueIsSetTo(tester, 2);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 8);
    });
    testWidgets(
        '''Outline: User customizes the decrement value (10, 4, 2, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theDecrementValueIsSetTo(tester, 4);
      await theUserDecrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 2);
    });
    testWidgets(
        '''Outline: User customizes the decrement value (0, 3, 1, -3)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theDecrementValueIsSetTo(tester, 3);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, -3);
    });
    testWidgets(
        '''Outline: User decrements the counter with a custom value but hits the minimum limit (5, 2, 0, 3, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theDecrementValueIsSetTo(tester, 2);
      await theMinimumLimitIsSetTo(tester, 0);
      await theUserDecrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 0);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User decrements the counter with a custom value but hits the minimum limit (8, 3, 2, 3, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 8);
      await theDecrementValueIsSetTo(tester, 3);
      await theMinimumLimitIsSetTo(tester, 2);
      await theUserDecrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 2);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: User decrements the counter with a custom value but hits the minimum limit (10, 5, 5, 2, 5)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theDecrementValueIsSetTo(tester, 5);
      await theMinimumLimitIsSetTo(tester, 5);
      await theUserDecrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 5);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets('''User resets the counter to zero''', (tester) async {
      await theCounterIsInitializedAt6(tester);
      await theUserRequestsToResetTheCounter(tester);
      await theUserConfirmsTheReset(tester);
      await theCounterShouldDisplayTheValueOf0(tester);
    });
    testWidgets('''User cancels a reset request''', (tester) async {
      await theCounterIsInitializedAt6(tester);
      await theUserRequestsToResetTheCounter(tester);
      await theUserCancelsTheReset(tester);
      await theCounterShouldStillDisplayTheValueOf6(tester);
    });
    testWidgets('''Outline: User sets a valid increment value (0, 1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theUserSetsTheIncrementValueTo(tester, 1);
      await theUserShouldSeeTheIncrementValueAs(tester, 1);
    });
    testWidgets('''Outline: User sets a valid increment value (5, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserSetsTheIncrementValueTo(tester, 2);
      await theUserShouldSeeTheIncrementValueAs(tester, 2);
    });
    testWidgets('''Outline: User sets a valid increment value (10, 5)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsTheIncrementValueTo(tester, 5);
      await theUserShouldSeeTheIncrementValueAs(tester, 5);
    });
    testWidgets(
        '''Outline: User tries to set an invalid increment value (5, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserSetsAnInvalidIncrementValueOf(tester, 0);
      await theIncrementValueShouldRemainUnchanged(tester);
      await theUserShouldBeInformedOfAnInvalidIncrementValue(tester);
    });
    testWidgets(
        '''Outline: User tries to set an invalid increment value (10, -1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsAnInvalidIncrementValueOf(tester, -1);
      await theIncrementValueShouldRemainUnchanged(tester);
      await theUserShouldBeInformedOfAnInvalidIncrementValue(tester);
    });
    testWidgets('''Outline: User sets a valid decrement value (5, 1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserSetsTheDecrementValueTo(tester, 1);
      await theUserShouldSeeTheDecrementValueAs(tester, 1);
    });
    testWidgets('''Outline: User sets a valid decrement value (10, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsTheDecrementValueTo(tester, 2);
      await theUserShouldSeeTheDecrementValueAs(tester, 2);
    });
    testWidgets(
        '''Outline: User tries to set an invalid decrement value (5, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserSetsAnInvalidDecrementValueOf(tester, 0);
      await theDecrementValueShouldRemainUnchanged(tester);
      await theUserShouldBeInformedOfAnInvalidDecrementValue(tester);
    });
    testWidgets(
        '''Outline: User tries to set an invalid decrement value (10, -1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsAnInvalidDecrementValueOf(tester, -1);
      await theDecrementValueShouldRemainUnchanged(tester);
      await theUserShouldBeInformedOfAnInvalidDecrementValue(tester);
    });
    testWidgets('''User views the history of counter operations''',
        (tester) async {
      await theCounterIsInitializedAtZero(tester);
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
    testWidgets('''Outline: User sets a valid maximum limit (0, 10)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theUserSetsTheMaximumLimitTo(tester, 10);
      await theUserShouldSeeTheMaximumLimitAs(tester, 10);
    });
    testWidgets('''Outline: User sets a valid maximum limit (5, 8)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserSetsTheMaximumLimitTo(tester, 8);
      await theUserShouldSeeTheMaximumLimitAs(tester, 8);
    });
    testWidgets('''Outline: User sets a valid maximum limit (10, 15)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsTheMaximumLimitTo(tester, 15);
      await theUserShouldSeeTheMaximumLimitAs(tester, 15);
    });
    testWidgets(
        '''Outline: User tries to set an invalid maximum limit (5, 4)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserSetsAnInvalidMaximumLimitOf(tester, 4);
      await theMaximumLimitShouldRemainUnchanged(tester);
      await theUserShouldBeInformedThatTheLimitMustBeValid(tester);
    });
    testWidgets(
        '''Outline: User tries to set an invalid maximum limit (10, 9)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsAnInvalidMaximumLimitOf(tester, 9);
      await theMaximumLimitShouldRemainUnchanged(tester);
      await theUserShouldBeInformedThatTheLimitMustBeValid(tester);
    });
    testWidgets('''Outline: User sets a valid minimum limit (5, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserSetsTheMinimumLimitTo(tester, 0);
      await theUserShouldSeeTheMinimumLimitAs(tester, 0);
    });
    testWidgets('''Outline: User sets a valid minimum limit (10, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsTheMinimumLimitTo(tester, 2);
      await theUserShouldSeeTheMinimumLimitAs(tester, 2);
    });
    testWidgets(
        '''Outline: User tries to set an invalid minimum limit (5, -1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserSetsAnInvalidMinimumLimitOf(tester, -1);
      await theMinimumLimitShouldRemainUnchanged(tester);
      await theUserShouldBeInformedThatTheLimitMustBeValid(tester);
    });
    testWidgets(
        '''Outline: User tries to set an invalid minimum limit (10, 11)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsAnInvalidMinimumLimitOf(tester, 11);
      await theMinimumLimitShouldRemainUnchanged(tester);
      await theUserShouldBeInformedThatTheLimitMustBeValid(tester);
    });
  });
}
