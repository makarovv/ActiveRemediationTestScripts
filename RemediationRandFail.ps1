# This script will generate a random number between 1 and 10. 
# If the number is 1, 2 or 3, it will fail.

# Generate a random number between 1 and 10
$randomNumber = Get-Random -Minimum 1 -Maximum 11

# If the number is 1, 2, or 3, trigger an exit code 1
if ($randomNumber -in 1..3) {
    Write-Host "Random number is $randomNumber. Failing."
    exit 1
} else {
    Write-Host "Random number is $randomNumber. Succeeding."
    exit 0
}