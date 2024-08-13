/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kelompok2;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Unknown
 */
public class koneksi {
    private static Connection mysqlconfig;
    public static Connection configDB()throws SQLException{
    try{
    String url="jdbc:mysql://localhost/perpustakaan";
    String user="root";
    String pass="arif";
    DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    mysqlconfig=DriverManager.getConnection(url,user,pass);
    System.out.println("Koneksi Berhasil!");
    }
    catch(Exception e){
    System.err.println("Koneksi Gagal" +e.getMessage());
    }
    return mysqlconfig;
}

    public static Connection getConnection() {
        Connection connection = null;
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/perpustakaan"; //ganti dengan database mu
        String user = "root";
        String password = "arif";
        if (connection == null) {
            try {
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException | SQLException error) {
               System.exit(0);
            }

        }
        return connection;
    }

    
}
