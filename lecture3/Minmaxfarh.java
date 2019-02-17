package lecture3;

public class Minmaxfarh {
    public static void main(String[] args) {
        temperature(0,100,20);
    }

    public static void temperature(int minF ,int maxF,int step) {

        for(int i=minF;i<=maxF;i++){
            int c=(int)((5/9f)*(i-32));
            System.out.println(i+" "+c);
            i=i+19;
        }
    }
}
