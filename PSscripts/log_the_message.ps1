echo "::debug::This is a debug message"
echo "::warning::This is a warning message"
echo "::error::This is an error message"
echo "## This is a log message to the summary, by Krishna" >> $env:GITHUB_STEP_SUMMARY
#echo "::set-output name=message::This is an output message" 
$result = "Success"
$details = "All steps completed successfully."

echo "## Job Summary" >> $env:GITHUB_STEP_SUMMARY
echo "**Result:** $result" >> $env:GITHUB_STEP_SUMMARY
echo "**Details:** $details" >> $env:GITHUB_STEP_SUMMARY
