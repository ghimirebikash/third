package lecture3;

import java.util.Scanner;

public class Octtodec {
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        int b=0;
        int a=s.nextInt();
        int pow=1;
        while(a!=0){
            int rem=a%10;
            b=b+rem*pow;
            pow=pow*8;
            a=a/10;
        }
        System.out.print(b);
    }
}
