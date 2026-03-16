#!/bin/bash

LOGFILE="app.log"

echo "Log Analysis Report"
echo "==================="

echo ""
echo "Total Errors:"
grep -c "ERROR" $LOGFILE

echo ""
echo "Total Warnings:"
grep -c "WARNING" $LOGFILE

echo ""
echo "Most Recent Error:"
grep "ERROR" $LOGFILE | tail -1

echo ""
echo "Most Frequent Errors:"
grep "ERROR" $LOGFILE | sort | uniq -c
