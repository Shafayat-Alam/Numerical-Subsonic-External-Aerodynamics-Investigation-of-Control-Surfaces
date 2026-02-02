#!/usr/bin/env python3
import subprocess
import os

# Run mesh.py
mesh_result = subprocess.run(["./mesh.py"])
if mesh_result.returncode != 0:
    print(f"mesh.py failed with exit code: {mesh_result.returncode}")
    exit(1)

# Run solve.py
solve_result = subprocess.run(["./solve.py"])
if solve_result.returncode != 0:
    print(f"solve.py failed with exit code: {solve_result.returncode}")
    exit(1)

print("Both scripts completed successfully!")