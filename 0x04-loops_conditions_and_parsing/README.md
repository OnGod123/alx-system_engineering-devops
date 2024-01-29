# Shell Script Comparison Operators

This document provides a brief overview of comparison operators in shell scripting. Understanding comparison operators is essential for creating conditional statements and controlling the flow of a shell script.

## Table of Contents

- [Introduction](#introduction)
- [List of Comparison Operators](#list-of-comparison-operators)
- [Usage Examples](#usage-examples)
- [Common Mistakes](#common-mistakes)
- [Resources](#resources)

## Introduction

Comparison operators are used in shell scripting to compare values and make decisions based on the results. They are commonly used in conditional statements such as `if`, `elif`, and `while` loops.

## List of Comparison Operators

1. **Numeric Comparison:**
   - `-eq`: Equal to
   - `-ne`: Not equal to
   - `-lt`: Less than
   - `-le`: Less than or equal to
   - `-gt`: Greater than
   - `-ge`: Greater than or equal to

2. **String Comparison:**
   - `=`: Equal to
   - `!=`: Not equal to
   - `<`: Less than (for string comparison)
   - `>`: Greater than (for string comparison)

3. **File Comparison:**
   - `-e`: File exists
   - `-f`: File is a regular file
   - `-d`: File is a directory

## Usage Examples

### Numeric Comparison:

```bash
#!/bin/bash

# Numeric variables
a=5
b=10

# Equal to
if [ "$a" -eq "$b" ]; then
    echo "a is equal to b"
else
    echo "a is not equal to b"
fi

# Greater than
if [ "$a" -gt "$b" ]; then
    echo "a is greater than b"
else
    echo "a is not greater than b"
fi

