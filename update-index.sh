#!/bin/bash

# Extract information from names.json (example: a list of names)
names=$(jq -r '.names[]' names.json)

# Create or update index.html with the extracted information
echo "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Names List</title>
</head>
<body>
    <h1>Names List</h1>
    <ul>" > index.html

for name in $names; do
    echo "<li>$name</li>" >> index.html
done

echo "   </ul>
</body>
</html>" >> index.html
