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

sys.path.append('../../../lib/python/obesity')
from modify_input_params import *

modify_input_params()

#****************************************************
# MAKE.PY STARTS
#****************************************************
set_option(link_logs_dir = '../output')
clear_dirs('../output', '../temp')
start_make_logging()

run_stata(program = 'analysis.do', executable = 'StataSE-64')

end_make_logging()

raw_input('\n Press <Enter> to exit.')
