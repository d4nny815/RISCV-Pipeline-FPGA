#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue Mar 12 10:38:44 PDT 2024
# SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim test_pipeline_behav -key {Behavioral:sim_1:Functional:test_pipeline} -tclbatch test_pipeline.tcl -view /home/danny/Documents/HDL/riscv_pipeline_mcu/vivado_2023.2/test_pipeline_behav.wcfg -log simulate.log"
xsim test_pipeline_behav -key {Behavioral:sim_1:Functional:test_pipeline} -tclbatch test_pipeline.tcl -view /home/danny/Documents/HDL/riscv_pipeline_mcu/vivado_2023.2/test_pipeline_behav.wcfg -log simulate.log

