package lecture2;

public class Reversesimple {
    public static void main(String[] args) {
        int n=12345;
        while(n!=0){
            int rem=n%10;
            System.out.print(rem);
            n=n/10;
        }
    }
}
