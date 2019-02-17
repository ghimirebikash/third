package lecture4;
/* IMPORTANT: Multiple classes and nested static classes are supported */

/*
 * uncomment this if you want to read input.
//imports for BufferedReader
import java.io.BufferedReader;
import java.io.InputStreamReader;

//import for Scanner and other utility classes
import java.util.*;
*/
import java.util.Scanner;

// Warning: Printing unwanted or ill-formatted data to output will cause the test cases to fail

class TestClass {
    public static void main(String args[] ) throws Exception {
        Scanner s=new Scanner(System.in);
        int u=s.nextInt();
        int i, prime,n;
        for(n=2; n<u; n++)

        {
            prime = 1;
            for(i=2; i<n; i++)
            {
                if(n%i == 0)
                {
                    prime = 0;
                    break;
                }
            }
            if(prime==1)
                System.out.print(n+" ");
        }

    }


}
