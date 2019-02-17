package lecture3;

import java.util.Scanner;

public class DectoBin {
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        int a=s.nextInt();
        int b=0;
        int pow=1;
        while(a!=0){
            int rem=a%2;
            b=b+rem*pow;
            pow=pow*10;
            a=a/2;
        }
        System.out.print(b);

    }
}
