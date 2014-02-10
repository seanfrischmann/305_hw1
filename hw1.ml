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

fun hw1(inputFile, outputFile) =
    let
        val stream_in = TEXT_IO.openIn inputFile
        val stream_out = TEXT_IO.openOut outputFile
        val switch = true
        val ch = ' '
    in
        while (switch = true) do (
            if IMPERATIVE_IO.endOfStream(stream_in) then (
                ch = IMPERATIVE_IO.input1(stream_in) 
                if ch = '\n' then (
                    TEXT_IO.outputSubstr(stream_out, ">\n"+"<\n")
                )else(
                    TEXT_IO.outputSubstr(stream_out, ">"+ch+"<\n")
                )
            )else(
                val _ = IMPERATIVE_IO.closeIn steam_in
                val _ = IMPERATIVE_IO.closeOut stream_out
                switch = false
            )
        );
end;

