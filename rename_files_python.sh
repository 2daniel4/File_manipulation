#!/usr/bin/env python3

# Pythono3 code to rename multiple
# files in a directory or folder

# importing os module
import os
#set working directory to where files are stored
os.chdir("/Volumes/DANIEL/MCIP-wang/MCIP0001/MCIP0001_pre/DTI_3")


#Set number values for ordering purposes of files
i = 1152
#print list files in working directory
print(os.listdir("/Volumes/DANIEL/MCIP-wang/MCIP0001/MCIP0001_pre/DTI_3"))

#for the files in current folder change files from origional name (filename) to new name 'MRDC.i{0}'.format(i)
#Adds 1 to i for each filename
for filename in os.listdir("/Volumes/DANIEL/MCIP-wang/MCIP0001/MCIP0001_pre/DTI_3"):
        os.rename(filename, 'MRDC.i{0}'.format(i))
        i=i+1

