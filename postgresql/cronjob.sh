#!/bin/bash

# What ever logic you want to implement goes under by this
psql -U postgres -d postgres -c "SELECT 'Hello, scheduled task!'"

