// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:bdd_widget_test/data_table.dart' as bdd;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_counter_is_initialized_at.dart';
import './step/the_user_increments_the_counter_times.dart';
import './step/the_counter_should_display_the_value_of.dart';
import './step/the_user_decrements_the_counter_times.dart';
import './step/the_user_requests_to_reset_the_counter.dart';
import './step/the_user_the_reset.dart';
import './step/the_increment_value_is_set_to.dart';
import './step/the_decrement_value_is_set_to.dart';
import './step/the_counter_is_initialized_at_zero.dart';
import './step/the_user_increments_the_counter.dart';
import './step/the_user_decrements_the_counter.dart';
import './step/the_user_views_the_history_of_changes.dart';
import './step/the_history_should_show.dart';
import './step/the_maximum_limit_is_set_to.dart';
import './step/the_maximum_limit_should_be_displayed_as.dart';
import './step/the_user_sets_a_maximum_limit_to.dart';
import './step/the_counter_should_still_display_the_value_of.dart';
import './step/the_user_should_be_informed_that_the_maximum_limit_must_be_greater_than_or_equal_to_the_current_counter_value.dart';
import './step/the_user_should_be_informed_that_the_maximum_limit_has_been_reached.dart';
import './step/the_minimum_limit_is_set_to.dart';
import './step/the_minimum_limit_should_be_displayed_as.dart';
import './step/the_user_sets_a_minimum_limit_to.dart';
import './step/the_user_should_be_informed_that_the_minimum_limit_must_be_less_than_or_equal_to_the_current_counter_value.dart';
import './step/the_user_should_be_informed_that_the_minimum_limit_has_been_reached.dart';

void main() {
  group('''Counter''', () {
    testWidgets(
        '''Outline: The user increments the counter by a specified amount (0, 1, 1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theUserIncrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 1);
    });
    testWidgets(
        '''Outline: The user increments the counter by a specified amount (0, 2, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theUserIncrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 2);
    });
    testWidgets(
        '''Outline: The user increments the counter by a specified amount (1, 3, 4)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 1);
      await theUserIncrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 4);
    });
    testWidgets(
        '''Outline: The user increments the counter by a specified amount (5, 2, 7)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserIncrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 7);
    });
    testWidgets(
        '''Outline: The user decrements the counter by a specified amount (1, 1, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 1);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 0);
    });
    testWidgets(
        '''Outline: The user decrements the counter by a specified amount (2, 1, 1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 2);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 1);
    });
    testWidgets(
        '''Outline: The user decrements the counter by a specified amount (3, 2, 1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 3);
      await theUserDecrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 1);
    });
    testWidgets(
        '''Outline: The user decrements the counter by a specified amount (5, 4, 1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserDecrementsTheCounterTimes(tester, 4);
      await theCounterShouldDisplayTheValueOf(tester, 1);
    });
    testWidgets(
        '''Outline: The user decrements the counter by a specified amount (0, 1, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 0);
    });
    testWidgets(
        '''Outline: The user resets or cancels the counter reset (5, 'confirms', 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserRequestsToResetTheCounter(tester);
      await theUserTheReset(tester, 'confirms');
      await theCounterShouldDisplayTheValueOf(tester, 0);
    });
    testWidgets(
        '''Outline: The user resets or cancels the counter reset (5, 'cancels', 5)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserRequestsToResetTheCounter(tester);
      await theUserTheReset(tester, 'cancels');
      await theCounterShouldDisplayTheValueOf(tester, 5);
    });
    testWidgets(
        '''Outline: The user resets or cancels the counter reset (10, 'confirms', 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserRequestsToResetTheCounter(tester);
      await theUserTheReset(tester, 'confirms');
      await theCounterShouldDisplayTheValueOf(tester, 0);
    });
    testWidgets(
        '''Outline: The user resets or cancels the counter reset (10, 'cancels', 10)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserRequestsToResetTheCounter(tester);
      await theUserTheReset(tester, 'cancels');
      await theCounterShouldDisplayTheValueOf(tester, 10);
    });
    testWidgets(
        '''Outline: The user increments the counter by a custom value (0, 3, 1, 3)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theIncrementValueIsSetTo(tester, 3);
      await theUserIncrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 3);
    });
    testWidgets(
        '''Outline: The user increments the counter by a custom value (0, 5, 2, 10)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theIncrementValueIsSetTo(tester, 5);
      await theUserIncrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 10);
    });
    testWidgets(
        '''Outline: The user increments the counter by a custom value (5, 2, 3, 11)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theIncrementValueIsSetTo(tester, 2);
      await theUserIncrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 11);
    });
    testWidgets(
        '''Outline: The user decrements the counter by a custom value (10, 2, 1, 8)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theDecrementValueIsSetTo(tester, 2);
      await theUserDecrementsTheCounterTimes(tester, 1);
      await theCounterShouldDisplayTheValueOf(tester, 8);
    });
    testWidgets(
        '''Outline: The user decrements the counter by a custom value (10, 4, 2, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theDecrementValueIsSetTo(tester, 4);
      await theUserDecrementsTheCounterTimes(tester, 2);
      await theCounterShouldDisplayTheValueOf(tester, 2);
    });
    testWidgets(
        '''Outline: The user decrements the counter by a custom value (15, 5, 3, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 15);
      await theDecrementValueIsSetTo(tester, 5);
      await theUserDecrementsTheCounterTimes(tester, 3);
      await theCounterShouldDisplayTheValueOf(tester, 0);
    });
    testWidgets('''The user views the history of counter changes''',
        (tester) async {
      await theCounterIsInitializedAtZero(tester);
      await theUserIncrementsTheCounter(tester);
      await theUserDecrementsTheCounter(tester);
      await theUserViewsTheHistoryOfChanges(tester);
      await theHistoryShouldShow(
          tester,
          const bdd.DataTable([
            ['Action', 'Value', 'Result'],
            ['Increment', 1, 1],
            ['Decrement', 1, 0]
          ]));
    });
    testWidgets('''Outline: The user sets a maximum limit (0, 10)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theMaximumLimitIsSetTo(tester, 10);
      await theMaximumLimitShouldBeDisplayedAs(tester, 10);
    });
    testWidgets('''Outline: The user sets a maximum limit (5, 8)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theMaximumLimitIsSetTo(tester, 8);
      await theMaximumLimitShouldBeDisplayedAs(tester, 8);
    });
    testWidgets('''Outline: The user sets a maximum limit (10, 15)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theMaximumLimitIsSetTo(tester, 15);
      await theMaximumLimitShouldBeDisplayedAs(tester, 15);
    });
    testWidgets(
        '''Outline: The user attempts to set an invalid maximum limit (5, 4)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserSetsAMaximumLimitTo(tester, 4);
      await theCounterShouldStillDisplayTheValueOf(tester, 5);
      await theUserShouldBeInformedThatTheMaximumLimitMustBeGreaterThanOrEqualToTheCurrentCounterValue(
          tester);
    });
    testWidgets(
        '''Outline: The user attempts to set an invalid maximum limit (10, 9)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsAMaximumLimitTo(tester, 9);
      await theCounterShouldStillDisplayTheValueOf(tester, 10);
      await theUserShouldBeInformedThatTheMaximumLimitMustBeGreaterThanOrEqualToTheCurrentCounterValue(
          tester);
    });
    testWidgets(
        '''Outline: The user attempts to set an invalid maximum limit (10, -1)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsAMaximumLimitTo(tester, -1);
      await theCounterShouldStillDisplayTheValueOf(tester, 10);
      await theUserShouldBeInformedThatTheMaximumLimitMustBeGreaterThanOrEqualToTheCurrentCounterValue(
          tester);
    });
    testWidgets(
        '''Outline: The user reaches the maximum limit (0, 10, 11, 10)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 0);
      await theMaximumLimitIsSetTo(tester, 10);
      await theUserIncrementsTheCounterTimes(tester, 11);
      await theCounterShouldDisplayTheValueOf(tester, 10);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets('''Outline: The user reaches the maximum limit (5, 8, 4, 8)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theMaximumLimitIsSetTo(tester, 8);
      await theUserIncrementsTheCounterTimes(tester, 4);
      await theCounterShouldDisplayTheValueOf(tester, 8);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: The user reaches the maximum limit (10, 15, 6, 15)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theMaximumLimitIsSetTo(tester, 15);
      await theUserIncrementsTheCounterTimes(tester, 6);
      await theCounterShouldDisplayTheValueOf(tester, 15);
      await theUserShouldBeInformedThatTheMaximumLimitHasBeenReached(tester);
    });
    testWidgets('''Outline: The user sets a minimum limit (5, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theMinimumLimitIsSetTo(tester, 0);
      await theMinimumLimitShouldBeDisplayedAs(tester, 0);
    });
    testWidgets('''Outline: The user sets a minimum limit (10, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theMinimumLimitIsSetTo(tester, 2);
      await theMinimumLimitShouldBeDisplayedAs(tester, 2);
    });
    testWidgets('''Outline: The user sets a minimum limit (20, 5)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 20);
      await theMinimumLimitIsSetTo(tester, 5);
      await theMinimumLimitShouldBeDisplayedAs(tester, 5);
    });
    testWidgets(
        '''Outline: The user attempts to set an invalid minimum limit (5, 6)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theUserSetsAMinimumLimitTo(tester, 6);
      await theCounterShouldStillDisplayTheValueOf(tester, 5);
      await theUserShouldBeInformedThatTheMinimumLimitMustBeLessThanOrEqualToTheCurrentCounterValue(
          tester);
    });
    testWidgets(
        '''Outline: The user attempts to set an invalid minimum limit (10, 11)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theUserSetsAMinimumLimitTo(tester, 11);
      await theCounterShouldStillDisplayTheValueOf(tester, 10);
      await theUserShouldBeInformedThatTheMinimumLimitMustBeLessThanOrEqualToTheCurrentCounterValue(
          tester);
    });
    testWidgets('''Outline: The user reaches the minimum limit (5, 0, 6, 0)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 5);
      await theMinimumLimitIsSetTo(tester, 0);
      await theUserDecrementsTheCounterTimes(tester, 6);
      await theCounterShouldDisplayTheValueOf(tester, 0);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets('''Outline: The user reaches the minimum limit (10, 2, 9, 2)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 10);
      await theMinimumLimitIsSetTo(tester, 2);
      await theUserDecrementsTheCounterTimes(tester, 9);
      await theCounterShouldDisplayTheValueOf(tester, 2);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
    testWidgets(
        '''Outline: The user reaches the minimum limit (20, 5, 16, 5)''',
        (tester) async {
      await theCounterIsInitializedAt(tester, 20);
      await theMinimumLimitIsSetTo(tester, 5);
      await theUserDecrementsTheCounterTimes(tester, 16);
      await theCounterShouldDisplayTheValueOf(tester, 5);
      await theUserShouldBeInformedThatTheMinimumLimitHasBeenReached(tester);
    });
  });
}
