package lecture3;

public class Upperlower {
    public static void main(String[] args) {

        upperlower1('a');
    }

    public static void upperlower1(char a) {
        if(a<='z'  && a>='a'){
            System.out.println("LOWERCASE");
            a=(char)(a-'a'+'A');
            System.out.println(a);
        }
        else{
            System.out.println("uppercase");
            a=(char)(a-'A'+'a');
            System.out.println(a);

        }
    }
}
