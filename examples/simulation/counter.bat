call C:\Xilinx\Vivado\2020.1\settings64.bat
call xvlog -sv -nolog counter.sv;
if ERRORLEVEL 1 (
  exit
)
call xelab -R -s counter -nolog -debug all counter_test_2
del *.jou,*.log
rem call xsim counter -gui