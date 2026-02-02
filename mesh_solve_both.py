#!/usr/bin/env python3
import subprocess
import os

# Folders to process
folders = ["Blunt_Fin", "Aero_Fin_mesh_refinement"]

# Save current directory
start_dir = os.getcwd()

for folder in folders:
    print(f"\n--- Processing {folder} ---")
    
    # Go into folder
    os.chdir(folder)
    
    # Run the combined mesh_solve script
    result = subprocess.run(["./mesh_solve.py"])
    
    # Go back up
    os.chdir(start_dir)

print("\nDone with all case.")