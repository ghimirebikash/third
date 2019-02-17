package lecture2;

public class gcd {
    public static void main(String[] args) {
        int a = 20;
        int b = 60;
        int c = 0;
//     while(b!=0){
//         int rem=a%b;
//         a=b;
//         b=rem;

        if (b%a== 0){
            System.out.print(a);
    }
        else {

            for (int i = 1; i <= a / 2; i++) {
                if (a % i == 0 && b % i == 0)
                    c = i;
            }


     System.out.print(c);}
    }

}
