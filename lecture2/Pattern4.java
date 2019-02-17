package lecture2;

public class Pattern4 {
    public static void main(String[] args) {
        int n=17;
        int row=1;
        int spaces=1;
       int stars=n/2+1;
       int space=1;
       while(row<=n){
          int col=1;
          while(col<=stars){
              System.out.print("*");
              col++;
          }
          col=1;
          while(col<=spaces){
              System.out.print(" ");
              col++;
          }
          col=1;
           while(col<=stars){
               System.out.print("*");
               col++;
           }
           if(row<=n/2){
               stars--;
               spaces=spaces+2;

           }
           else{
               stars++;
               spaces=spaces-2;
           }
           row++;
           System.out.println("  ");

       }

    }
}
