/*
    The MIT License (MIT)

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sub-license, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

    Author: David Boarman
*/


#include "test_token.h"

#include "jargon.h"
#include "token.h"


//  configuration
const struct CMUnitTest test_group [] = {
    cmocka_unit_test (test_create_token),
};

int setup (void ** state) {
    return 0;
}

int teardown (void ** state) {
    return 0;
}
//  configuration


void test_create_token (void ** state) {
    int start = 0;
    int length = 8;

    token exp_token = {
        .start = start,
        .length = length
    };

    token act_token = create_token(start, length);

    assert_true(exp_token.start == act_token.start);
    assert_true(exp_token.length == act_token.length);
}

void test_pass (void ** state) {
    assert_true (true == SampleFunction1());
}

void test_fail (void ** state) {
    assert_false (0 == SampleFunction2());
}

void run_token_tests () {
    cmocka_run_group_tests (test_group, setup, teardown);

    printf("[==========]\n");
}

