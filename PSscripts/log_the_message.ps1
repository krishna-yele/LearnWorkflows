echo "::debug::This is a debug message"
echo "::warning::This is a warning message"
echo "::error::This is an error message"
echo "## This is a log message to the summary, by Krishna" >> $GITHUB_STEP_SUMMARY
echo "::set-output name=message::This is an output message" 
