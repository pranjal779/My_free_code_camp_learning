# Step 4
# The raise statement allows you to force a specific exception to occur. It consists of the raise keyword followed by the exception type, and enables you to provide a custom error message:

# Example Code
# raise ValueError("Invalid value")
# When the code above runs, a ValueError is raised and the message "Invalid value" is shown to the user.

# If the square_target is less than 0, no real-valued square root can be computed. Therefore, raise a ValueError with the message 'Square root of negative number is not defined in real numbers'. Don't forget to remove the pass keyword.

def square_root_bisection(square_target, tolerance=1e-7, max_iterations=100):
    if square_target < 0:
        raise ValueError("Square root of negative number is not defined in real numbers")


# Congratulations, your code passes. Submit your code to continue.

# "Most efficient!"

# 19% complete
# Learn the Bisection Method by Finding the Square Root of a Number
# 19% complete
