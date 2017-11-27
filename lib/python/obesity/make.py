import os

filename = 'input_params.txt'
dir_path = os.path.dirname(os.path.realpath(__file__))

try:
    os.remove(dir_path + filename)
except OSError:
    pass

google_drive_path = os.path.expanduser("~") + '/Google Drive/research projects/obesity'

f = open(filename,'w')
f.write('HHFKA 2011\n')
f.write('GoogleDrive ' + '\"' + google_drive_path + '\"')
f.close()
