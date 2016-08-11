/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AlphaMail_CS4310;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Will
 */
public class MyDatabase {
    private static String dbURL = "jdbc:mysql://localhost:3306/CS3520";
    private static String username = "root";
    private static String password = "Baljotmalhi1";
    private static Connection connection;

    public static Connection getConnection() {
        return connection;
    }
    
    public static void InitiallizeConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(dbURL, username, password);
            
            Statement statement = connection.createStatement();
            statement.executeUpdate("CREATE SCHEMA IF NOT EXISTS CS3520;");
            statement.executeUpdate(
                    "CREATE TABLE IF NOT EXISTS `CS3520`.`message` ("+
                    "`id` INT NOT NULL AUTO_INCREMENT,"+
                    "`fromuser` VARCHAR(45) NOT NULL,"+
                    "`touser` VARCHAR(45) NOT NULL,"+
                    "`message` VARCHAR(10000) NOT NULL,"+
                    "`year` VARCHAR(45) NOT NULL,"+
                    "`month` VARCHAR(45) NOT NULL,"+
                    "`day` VARCHAR(45) NOT NULL,"+
                    "`hour` VARCHAR(45) NOT NULL,"+
                    "`minute` VARCHAR(45) NOT NULL,"+
                    "`second` VARCHAR(45) NOT NULL,"+
                    "PRIMARY KEY (`id`),"+
                    "UNIQUE INDEX `id_UNIQUE` (`id` ASC));"
            );
            /*statement.executeUpdate(
                    "CREATE TABLE IF NOT EXISTS `CS3520`.`CS3520` ("+
                    "`id` INT NOT NULL AUTO_INCREMENT,"+
                    "`username` VARCHAR(45) NOT NULL,"+
                    "`password` VARCHAR(45) NOT NULL,"+
                    "`email` VARCHAR(45) NOT NULL,"+
                    "`firstname` VARCHAR(45) NOT NULL,"+
                    "`lastname` VARCHAR(45) NOT NULL,"+
                    "PRIMARY KEY (`id`),"+
                    "UNIQUE INDEX `id_UNIQUE` (`id` ASC));"
            );*/
        } catch(SQLException e){
            System.out.println(e);
            e.printStackTrace();;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MyDatabase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static ResultSet Run(String sqlStatement){
        ResultSet rs = null;
        try{
            PreparedStatement ps = connection.prepareStatement(sqlStatement);
            rs = ps.executeQuery();
        }catch (Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();;
        }
        
        return rs;
    }
    
    public static void CloseConnection(){
        try{
            connection.close();
        } catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();;
        }
    }
    
    public static void PrintResultSet(ResultSet rs){
        try{
            while (rs.next()){
                System.out.println(rs.getString("ID") +" "+ rs.getString("Name"));
            }
        } catch (Exception e){
            System.out.println(e);
            e.printStackTrace();
        }
    }
    
    public static void main(String[] args) {
        MyDatabase.InitiallizeConnection();
        ResultSet rs = MyDatabase.Run("SELECT * FROM world.city;");
        MyDatabase.PrintResultSet(rs);
        MyDatabase.CloseConnection();
    }
}
