#------------------------------------------------------------------------------
# Run ModelSim simulation
# 
# Copyright (c) 2020 toms74209200
# 
# This software is released under the MIT License.
# http://opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------

# ModelSim instalation directory
MODELSIM_DIR = <ModelSim instalation directory>/modelsim_ase/win32aloem

SRCS = foo_project

all:
	$(MODELSIM_DIR)/vlib.exe work
	$(MODELSIM_DIR)/vmap.exe work work
	$(MODELSIM_DIR)/vlog.exe -sv -work work ./$(SRCS).sv
	$(MODELSIM_DIR)/vsim.exe $(SRCS) -c -L work -do "run -all;quit"