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

fun hw1(inputFile: string, outputFile: string) =
    let
        val stream_in = TextIO.openIn inputFile
        val stream_out = TextIO.openOut outputFile
        fun helper(char_opt: char option) =
            case char_opt of 
                NONE => (TextIO.closeIn stream_in; TextIO.closeOut stream_out)
              | SOME(c) => (TextIO.output1(stream_out, #">"); 
                TextIO.output1(stream_out, c);TextIO.output1(stream_out, #"<"); 
                TextIO.output1(stream_out, #"\n"); helper(TextIO.input1 stream_in))
    in
        helper(TextIO.input1 stream_in)
end

