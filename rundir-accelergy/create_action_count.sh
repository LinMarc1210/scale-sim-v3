#!/bin/bash

python3 create_action_count.py --saved_folder /home/marc/scale-sim-v3/test_runs --run_name scale_example_run_32x32_ws --arch_name systolic_array --SRAM_row_size 2 --DRAM_row_size 2 --config /home/marc/scale-sim-v3/configs/scale.cfg

cp /home/marc/scale-sim-v3/test_runs/scale_example_run_32x32_ws/action_count.yaml ./accelergy_input/action_count.yaml

rm -rf /home/marc/scale-sim-v3/rundir-accelergy/output/scale_sim_output_scale_example_run_32x32_ws

mv /home/marc/scale-sim-v3/test_runs/scale_example_run_32x32_ws  /home/marc/scale-sim-v3/rundir-accelergy/output/scale_sim_output_scale_example_run_32x32_ws

