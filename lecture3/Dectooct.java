package lecture3;

import java.util.Scanner;

public class Dectooct {
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        int b=0;
        int a=s.nextInt();
        int pow=1;
        while(a!=0){
            int rem=a%8;
            b=b+rem*pow;
            pow=pow*10;
            a=a/8;
        }
        System.out.print(b);
    }
}
