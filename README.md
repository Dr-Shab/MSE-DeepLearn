# MSE-DeepLearn

Exercises and Solutions for the module TSM_DeLearn.


### Remarks:  	
- Avoid groups of just 1 person => People concerned are asked to get together in groups of 2-3 people asap. before PW 2			
- Only 1 person of each group submits only 1 ZIP archive containing all the exercises for the entire group (otherwise we will randomly choose which version we correct)			
- Before to make the Zip archive (and not another format please), please name your folder containing all the exercises as follows: G##_StudentName1_StudentName2_StudentName3, where ## is the group number			
- Write the names of all members of your group in the header (i.e. at the beginning) of each submitted jupyter notebook	

### Broken Preview on Github

if following error occurs on github when previewing a notebook:  
Invalid Notebook  
'execution_count' is a required property  
Using nbformat v5.9.2 and nbconvert v7.16.1  


then just run all cells of that notebook locally, check if an error occured, if not, just stage, commit and push that file again.

### Submit.sh
When all exercises are done this script can be run with the week argument as follows, e.g PW07 is done:

```bash
$ submit.sh -w 7
```
Which then will copy and zip all files from the DL-PW07.. directory and create a zip file in the submission directory.
