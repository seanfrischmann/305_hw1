(*===========================================================================
 * +++hw1.ml+++|
 * ____________|
 *
 * Author: Sean Frischmann
 * Class: Cse 305
 *=========================================================================*)


(****************************************************************************
 * |hw1|
 *
 * -The purose of this method is to read the contents of a file and print to 
 *  a designated file each character of the file with a < before the character
 *  and a > after. If it's a newline character it prints a < followed by a >
 *  on the next line.
 *
 * Variables Passed in:
 *                     -Name of input file
 *                     -Name of output file
 ***************************************************************************)

fun fileToString inputFile = let
    val stream = open_in inputFile
    val str = input(stream, can_input stream)
    val _ = close_in stream
in str end;

fun fileToList inputFile = let
    fun f fh = if end_of_stream fh then
        let val _ = close_in fh in nil end
        else (input_line fh)::(f fh)
in f(open_in inputFile) end;
