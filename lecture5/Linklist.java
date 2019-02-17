package lecture5;

public class Linklist {
    int salary;
    String name;
    public static void main(String[] args) {
      Linklist l=new Linklist();
      l.setproperties("kalu",2000);
      l.getproperties();
    }
    void setproperties(String s,int sal){
        name=s;
        salary=sal;
    }
    void getproperties(){
        System.out.println("salary is "+salary);
        System.out.println("name is "+name);
    }

}