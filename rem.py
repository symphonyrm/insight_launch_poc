import sys 
import os 


dir ="views/"
arr = os.listdir(dir)
for file in arr:
        if file.endswith('.lkml'):
            print(file)
            with open("views/"+file, 'r+') as infile:
                lines = infile.readlines()
                infile.seek(0)
                for line in lines:
                    if not "sql_table_name: proh_symphony" in line:
                        infile.write(line)

                infile.truncate()