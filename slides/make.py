# MAKE.PY STILL NEEDS TO BE FIXED!!


#! /usr/bin/env python
#****************************************************
# GET LIBRARY
#****************************************************
import subprocess, shutil, os
from gslab_make.dir_mod import *
from gslab_make.get_externals import *
from gslab_make.make_log import *
from gslab_make.make_links import *
from gslab_make.make_link_logs import *
from gslab_make.run_program import *

lyx_exe = os.environ.get('LYXEXE')
if lyx_exe:
    import copy
    default_run_lyx = copy.copy(run_lyx)
    def run_lyx(**kwargs):
        kwargs['executable'] = lyx_exe
        default_run_lyx(**kwargs)

#****************************************************
# MAKE.PY STARTS
#****************************************************
# SET DEFAULT OPTIONS
set_option(makelog = './output/make.log',
    output_dir = './output/',
    temp_dir = './temp/')
    
clear_dirs('./temp/')
delete_files('./output/*')
start_make_logging()

# COMPILE PDF FILES
run_lyx(program = './source/breakfast')
# run_lyx(program = './source/breakfast',
#   handout = True, 
#   comments = True,
#   pdfout = './output/breakfast.pdf')

end_make_logging()

raw_input('\n Press <Enter> to exit.')

