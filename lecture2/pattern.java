package lecture2;

public class pattern {
    public static void main(String[] args) {
       // int c=1;
        int n=5;
        int o=0;
        int p=1;
        for(int i=1;i<=n;i++){
            for(int j=1;j<=i;j++){

                System.out.print(o+" ");

int c=o+p;
o=p;
p=c;

               // c++;
            }
            System.out.println();
        }
    }
}
