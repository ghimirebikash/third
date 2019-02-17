package lecture4;
import java.util.Scanner;
public class Union {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("enter a number");
        int a = s.nextInt();
        int arr[]=new int[a];
        for(int i=1;i<=a;i++){
            arr[i]=s.nextInt();
        }
      for(int i=1;i<a;i++){
          for(int j=1;j<a;j++){
              while(arr[i]!=arr[j] || i==j){

              }
          }
      }

}
    }
