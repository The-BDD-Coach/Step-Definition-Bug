# Copyright 2014 by Leslie Brooks; all rights reserved

from behave import given, when, then, use_step_matcher

use_step_matcher("re")
# use_step_matcher("cucumber_expressions")


@given('these books in the catalog')
def step_impl(context):
    pass

@when("an (?P<search_type>author name|title|ISBN) search is performed for (?P<search_term>.+)")
def a_SEARCH_TYPE_is_performed_for_SEARCH_TERM(context, search_type, search_term):
    pass

@then("only these books will be returned")
def only_these_books_will_be_returned(context):
    pass