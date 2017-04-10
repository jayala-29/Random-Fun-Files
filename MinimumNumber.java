/* 
 * Input Format
 * The input contains a single integer  (the number of integers to be compared).
 * 
 * Output Format
 * Print the string on a single line. Each integer in the string should be written as 'int' and the string
 * must accurately show how  functions can be called to find the smallest of integers.
 */

import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class MinimumNumber {

    public static void main(String[] args) {
    
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        
        String printing = "min(int, int)";

        if (n > 2) {
            
            printing = "min(int, ";
    
            for (int i = 1; i < n-1; i++) {
                
                String printMe = "min(int, ";
                System.out.print(printMe);
                printing = printMe;
            }
            
            System.out.print("min(int, int)");
            
            for (int i = 2; i < n; i++) {
                
                System.out.print(")");
            }
        }
        
        else {
            
            System.out.print(printing);
        }
    }
}
