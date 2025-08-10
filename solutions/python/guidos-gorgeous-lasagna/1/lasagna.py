"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language:
https://en.wikipedia.org/wiki/Guido_van_Rossum

This is a module docstring, used to describe the functionality
of a module and its functions and/or classes.
"""

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2

def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    return EXPECTED_BAKE_TIME - elapsed_bake_time

def preparation_time_in_minutes(number_of_layers):
    """Calculate the preparation time in minutes
    
    : param number_of_layers: int - count of layers that require preparation
    :return: int - total time taken to prepare all the layers 
    
    Function that takes the preparation time and multiplies it with
    the number of layers to get the time taken in preparation.
    """
    return number_of_layers * PREPARATION_TIME

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate how much time was taken to elapsed, since preparation began.

    :param number_of_layers: int - count of layers that require preparation
    :param elapsed_bake_time: int - baking time already elapsed
    :return: int - total time passed since cooking started

    Function that takes count of layers and elapsed time and calculate how much
    time has passed since cooking started.
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time

#  (you can copy and then alter the one from bake_time_remaining.)
