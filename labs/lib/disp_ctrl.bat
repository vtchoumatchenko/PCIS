call C:\Xilinx\Vivado\2020.1\settings64.bat
call xvlog -sv -nolog disp_ctrl_test.sv disp_ctrl.sv
if ERRORLEVEL 1 (
  exit
)
call xelab -R -s disp_ctrl_test -nolog -debug all disp_ctrl_test
del *.jou,*.log
rem call xsim disp_ctrl_test -gui