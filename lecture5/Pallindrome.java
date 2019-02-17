package lecture5;
import java.util.Scanner;
public class Pallindrome{
        public static void main(String[] args) {
            LinkedList list=new LinkedList();
            Scanner sc=new Scanner(System.in);
            String str=sc.nextLine();
            for(int i=0;i<str.length();i++){
                list.insertEnd(str.charAt(i));
            }
            list.traverseRL();
        if(list.str.equals(str)){
                System.out.println("pallindrome");
            }
            else{
                System.out.println("not pallindrome");
            }
        }
    }
