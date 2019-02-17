package lecture5;
public class LinkedList{
  Node head;
  Node tail;
  String str="";
  public void insertEnd(char data){
      Node node=new Node(data);
      if(head==null){
          head=node;
          tail=node;
      }else{
          tail.next=node;
          node.prev=tail;
          tail=node;
      }
  }
  public void traverseRL(){
      if(head==null){
          return;
      }
      else{
          Node current=tail;
          while(current!=null){
              this.str=this.str+current.data;
              current=current.prev;
          }
      }
  }

}

