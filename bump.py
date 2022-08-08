import os
import sys
from src.__version__ import __version__

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("should be one argument: major, minor, patch")
        exit(-1)
    change_type = sys.argv[1]
    if change_type not in ["major", "minor", "patch"]:
        print("should be one argument: major, minor, patch")
        exit(-2)
    print("change_type", change_type)
    major, minor, patch = __version__.split(".")
    print(major, minor, patch)
    if change_type == "major":
        major = str(int(major) + 1)
    if change_type == "minor":
        minor = str(int(minor) + 1)
    if change_type == "patch":
        patch = str(int(patch) + 1)
    version = f"{major}.{minor}.{patch}"
    print("new_version", version)
