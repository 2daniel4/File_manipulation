#!/Users/amos/anaconda3/bin/python

# Pythono3 code to extract multiple space delimited txt files into pandas and then manipulate it into a single excel file

# importing pandas and os module
import os
import pandas as pd

#set working directory to where text files are stored

os.chdir("/Volumes/DANIEL/dti_freesurf_MCIP/diffusion_recons")

#create a master pandas data frame that stats as empty
df_master = pd.DataFrame()

#For loop that runs through subject+condition and uses it to index into each subjects folder for txt file extraction
#Reads in space delimited txt file into a pandas frame and adds column heading names
#Drops the data frame rows that we aren't interested in and adds a column named 'subj' that includes the subject name
#Concatinates the individual data frame to the origionally empty master data frame so that all text file data for each subject is in the master dataframe

for subj in os.listdir("/Volumes/DANIEL/dti_freesurf_MCIP/diffusion_recons/"):
    os.chdir("/Volumes/DANIEL/dti_freesurf_MCIP/diffusion_recons/{0}/mri/".format(subj))
    df=pd.read_table('lh.hippoSfVolumes-T1.long.v21.txt', delim_whitespace=True,names=['loacation','volume'])
    df=df.drop([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18])
    df['subj']=subj
    df_master=pd.concat([df_master,df])
#df_master=df.append(df,ignore_index = False)
    print(df_master)

#Set working directory to where we want to save the master dataframe
os.chdir("/Volumes/DANIEL/dti_freesurf_MCIP/")

#Sort the data frame based on subject column (not working correctly - have just been sorting in excel)
df_master=df_master.sort_values(by=['subj'])

#Save data frame to excel
df_master.to_excel('lhipp_vol.xlsx','LeftHipp_Vol')
