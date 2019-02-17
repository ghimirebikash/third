package lecture3;

public class Conversion {
    public static void main(String[] args) {
        int ans=DectoBin(57);
        int ans1=Dectooct(77);
        int ans2=Octtodec(115);
      int ans3=dectoany(77,8);
      int ans4=bintodec(111001);
      int ans5=anytodec(111001,2);
        System.out.println(ans);
        System.out.println(ans1);
        System.out.println(ans2);
        System.out.println(ans3);
        System.out.println(ans4);
        System.out.println(ans5);
    }
    public static  int DectoBin(int a){

        int b=0;
        int pow=1;
        while(a!=0){
            int rem=a%2;
            b=b+rem*pow;
            pow=pow*10;
            a=a/2;
        }
return b;
    }

    public static int Dectooct(int a){
        int b=0;
        int pow=1;
        while(a!=0){
            int rem=a%8;
            b=b+rem*pow;
            pow=pow*10;
            a=a/8;
        }
        return b;
    }

    public static int Octtodec(int a){
        int b=0;
        int pow=1;
        while(a!=0){
            int rem=a%10;
            b=b+rem*pow;
            pow=pow*8;
            a=a/10;
        }
        return b;
    }
    public static int dectoany(int a,int b){
        int c=0;
        int pow=1;
        while(a!=0){
            int rem=a%b;
            c=c+rem*pow;
            pow=pow*10;
            a=a/b;
        }
        return c;
    }
    public static int bintodec(int a){
        int b=0;
        int pow=1;
        while(a!=0){
            int rem=a%10;
            b=b+rem*pow;
            pow=pow*2;
            a=a/10;
        }
        return b;
    }
    public static int anytodec(int a,int b){
        int c=0;
        int pow=1;
        while(a!=0){
            int rem=a%10;
            c=c+rem*pow;
            pow=pow*b;
            a=a/10;
        }
        return c;
    }
}
