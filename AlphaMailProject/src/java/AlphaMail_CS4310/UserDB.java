package AlphaMail_CS4310;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
//import javax.mail.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Will
 */
public class UserDB {
    
    public static void add(User newUser){
        /*
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = "INSERT INTO cs3520.user (username, password, email, firstname, lastname, dob) "
                + "VALUES (?, ?, ?, ?, ?, ?)";
        try{
            ps = connection.prepareStatement(query);
            ps.setString(1, newUser.getUsername());
            ps.setString(2, newUser.getPassword());
            ps.setString(3, newUser.getEmail());
            ps.setString(4, newUser.getFirstname());
            ps.setString(5, newUser.getLastname());
            ps.setString(6, newUser.getYear() + "-" +
                            newUser.getMonth()+ "-" +
                            newUser.getDay());
            return ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
            return 0;
        } finally{
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }*/
        
        try{
            MyDatabase.InitiallizeConnection();
            Connection connection = MyDatabase.getConnection();
            
            PreparedStatement ps = null;
            String query = "INSERT INTO alphamail.user (username, password, email, firstname, lastname) " + "VALUES (?, ?, ?, ?, ?)";
            
            ps = connection.prepareStatement(query);
            ps.setString(1, newUser.getUsername());
            ps.setString(2, newUser.getPassword());
            ps.setString(3, newUser.getEmail());
            ps.setString(4, newUser.getFirstname());
            ps.setString(5, newUser.getLastname());
            ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            MyDatabase.CloseConnection();
        }
    }
    
    public static void update(User newUser){
        
        try{
            MyDatabase.InitiallizeConnection();
            Connection connection = MyDatabase.getConnection();
        
            PreparedStatement ps = null;
            String query = "UPDATE alphamail.user SET "
                    + "password=?, "
                    + "email=?, "
                    + "firstname=?, "
                    + "lastname=?, "
                    + "WHERE username=?";
            
            ps = connection.prepareStatement(query);
            ps.setString(1, newUser.getPassword());
            ps.setString(2, newUser.getEmail());
            ps.setString(3, newUser.getFirstname());
            ps.setString(4, newUser.getLastname());
            ps.setString(8, newUser.getUsername());
            ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            MyDatabase.CloseConnection();
        }
    }
    
    public static User find(String username){        
        User user = null;
        try{
            MyDatabase.InitiallizeConnection();
            Connection connection = MyDatabase.getConnection();
        
            PreparedStatement ps = null;
            String query = "SELECT * FROM alphamail.user WHERE username = ?";
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                user = new User(
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("firstname"),
                        rs.getString("lastname")
                );
            }
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            MyDatabase.CloseConnection();
        }
        
        return user;
    }
    
    
    public static ArrayList<String> getEmailList(){
        ArrayList<String> emailList = new ArrayList();
        try{
            MyDatabase.InitiallizeConnection();
            Connection connection = MyDatabase.getConnection();
        
            PreparedStatement ps = null;
            String query = "SELECT email FROM alphamail.user";
            ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                emailList.add(rs.getString("email"));
            }
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        } finally{
            MyDatabase.CloseConnection();
        }
        
        return emailList;
    }
    
    public static boolean deleteUser(String email){
        boolean status=false;
        MyDatabase.InitiallizeConnection();
        Connection conn = MyDatabase.getConnection();
        try{
            String prepStmt="DELETE from user "
                    + "WHERE email=?";
            PreparedStatement ps=conn.prepareStatement(prepStmt);
            ps.setString(1, email);
            ps.executeUpdate();
            ps.close();
            conn.close();
            status=true;  
        }catch(Exception e){
            System.err.println(e.getMessage());
            e.printStackTrace();
        }finally{
            try{
                if(conn!=null){
                    conn.close();
                }
            }catch(Exception e){
                System.err.println(e.getMessage());
                e.printStackTrace();
            }
        }
        return status;
    }
    
    public static List<User> getUsers(){
        List<User> users=new ArrayList<User>();
        User temp=null;
        MyDatabase.InitiallizeConnection();
        Connection conn = MyDatabase.getConnection();
        try{
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("Select * from user");
            while(rs.next()){
                String firstName=rs.getString("firstName");
                String lastName=rs.getString("lastName");
                String username=rs.getString("username");
                String email=rs.getString("email");
                String password=rs.getString("password");
                temp=new User(username, password, email, firstName, lastName);
                users.add(temp);                
            }
            rs.close();
            stmt.close();
            conn.close();
        }catch(Exception e){
            System.err.println(e.getMessage());
            e.printStackTrace();
        }finally{
            try{
                if(conn!=null){
                    conn.close();
                }
            }catch(Exception e){
                System.err.println(e.getMessage());
                e.printStackTrace();
            }
        }
        return users;
    }
}
