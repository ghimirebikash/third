package lecture2;

public class Reverse {
    public static void main(String[] args) {
        int a=12345;
        int s=0;
        while(a!=0){
            int rem=a%10;
            s=s*10+rem;
            a=a/10;
        }
       System.out.print(s);
    }
}
