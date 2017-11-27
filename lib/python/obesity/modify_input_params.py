import fileinput, os, re

def modify_input_params():
    filename = 'input_params.txt'
    dir_path = '../../../lib/python/obesity/'

    google_drive_path = os.path.expanduser("~") + '/Google Drive/research projects/obesity'

    for line in fileinput.input(dir_path + filename, inplace=True):
        if re.search('GoogleDrive', line):
            print line.replace(line, 'GoogleDrive ' + '\"' + google_drive_path + '\"'),
        else:
            print line,
