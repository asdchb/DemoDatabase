package demo;

import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created at 221
 * 16-7-15 下午2:18.
 */

// JDBC = Java DataBase Connectivity
public class JDBC {

    public static void main(String[] args) throws SQLException {
        new Driver();
        Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test", "root", "system");
        String sql = "INSERT INTO user VALUES(?, ?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1, 2);
        preparedStatement.setString(2, "李四");
        preparedStatement.setString(3, "abc");
        preparedStatement.executeUpdate();

        preparedStatement.close();
        connection.close();
    }
}
