#!/bin/bash

# TODO(czak): Need to provide a better path here.
if ! nm $TEST_SRCDIR/google3/third_party/lisp/bazel/test/test |
  grep -q ' test-undefined-function-2'; then
  echo "Failed to find expected lisp symbol in symbol table"
  exit 1
fi

if ! nm $TEST_SRCDIR/google3/third_party/lisp/bazel/test/test |
  grep -q ' (flet sub-zot in common-lisp-user::zot)'; then
  echo "Failed to find expected lisp symbol in symbol table"
  exit 1
fi
