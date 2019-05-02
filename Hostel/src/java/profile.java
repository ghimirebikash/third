/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Simran
 */
@WebServlet(urlPatterns = {"/profile"})
public class profile extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) { 
            HttpSession session = request.getSession();
            String FirstName = request.getParameter("FirstName");
            String LastName = request.getParameter("LastName");
            String Email = (String) session.getAttribute("user");
            String FathersName = request.getParameter("FathersName");
            String MothersName = request.getParameter("MothersName");
            String HostelName = request.getParameter("HostelName");
            String  RoomNo = request.getParameter("RoomNo");
            String BloodGroup = request.getParameter("BloodGroup");
            //String first = request.getParameter("Firstname");
            //String last = request.getParameter("Lastname");
             Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/details","root","2486");
            Statement stmt = con.createStatement(); 
           String query = "insert into profile(FirstName,LastName,Users,FathersName,MothersName,HostelName,RoomNo,BloodGroup) values('"+FirstName+"','"+LastName+"','"+Email+"','"+FathersName+"','"+MothersName+"','"+HostelName+"','"+RoomNo+"','"+BloodGroup+"')";                         
            String query2 = "select * from profile"; 
            ResultSet rs = stmt.executeQuery(query2);    
            int count =0;
            int flag =0;
            out.println(Email); 
           while(rs.next()){
                if(Email.equals(rs.getString(3))){
                    count++;                   
                    out.println("username already exists!!");
                    break;
                }
            }            
            if(count==0){
                out.println("sdcfvghnj");
                stmt.executeUpdate(query);
                out.println("sdcfvghnj");
              response.sendRedirect("Profile.jsp");
//                session.setAttribute("name",rs.getString(1));
                flag =1;
//                session.setAttribute("username",user);
//                session.setAttribute("password","password");   
            }                        
            if(flag!=1 && count!=1){  
                out.println("success");
                out.println("failed to insert the data!!");
            }  
        }
        catch(Exception e){ System.out.println(e);}  
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        processRequest(request, response);        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        processRequest(request, response);        
    }

    private static class con {

        private static Statement createStatement() {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        public con() {
        }
    }
}