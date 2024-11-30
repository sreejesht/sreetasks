#!/bin/bash

# Step 1: Create a directory called "my_folder" and navigate into it.
mkdir my_folder
cd my_folder

# Step 2: Create a file named "my_file.txt" and add some text.
echo "This is the content of my_file.txt" > my_file.txt

# Step 3: Create another file named "another_file.txt" and add some text.
echo "This is the content of another_file.txt" > another_file.txt

# Step 4: Concatenate the content of "another_file.txt" to "my_file.txt".
cat another_file.txt >> my_file.txt

# Step 5: Display the updated content of "my_file.txt".
echo "Updated content of my_file.txt:"
cat my_file.txt

# Step 6: List all files and directories in the current directory.
echo "Files and directories in the current directory:"
ls -la

# Step 7: Create 20 files with .txt extensions.
for i in {1..20}
do
    touch "file_$i.txt"
done

# Step 8: Rename the first 5 files to have .yml extensions.
for i in {1..5}
do
    mv "file_$i.txt" "file_$i.yml"
done

# Step 9: Print the latest created top 5 files among the total files.
echo "Latest 5 files created:"
ls -lt | head -n 5

