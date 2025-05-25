import pathlib
import sys
import unittest

# Identify src and test paths
path = pathlib.Path(__file__)
while path.name and not path.name == "tests":
    path = path.parent
test_dir = str(path)
system_under_test_dir = str(path.parent)
sys.path.append(system_under_test_dir)

# Discover tests
print(f"Discovering tests in {test_dir}...")
suite = unittest.defaultTestLoader.discover(str(test_dir), pattern="test_*.py")
print(f"Discovered {suite.countTestCases()} tests.\n")

# Run the tests
runner = unittest.TextTestRunner(verbosity=2, buffer=True)
if runner.run(suite).wasSuccessful():
    print("\033[92m" + "#" * 32 + " PASS " + "#" * 32 + "\033[0m")
else:
    print("\033[91m" + "#" * 32 + " FAIL " + "#" * 32 + "\033[0m")
    exit(1)
