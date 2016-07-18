package demo;

import com.mysql.jdbc.Driver;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created at 221
 * 16-7-18 上午9:07.
 */
public class DumpIP {

    private static final String URL = "jdbc:mysql://127.0.0.1:3306/db_ip";
    private static final String USER = "root";
    private static final String PASSWORD = "system";
    private static final String SQL = "INSERT INTO db_ip.ip VALUES(?, ?, ?)";
    private static final String FILE = "data/ip.txt";
    private static List<IP> list;

    private static void dumpData() {
        // 1. 加载驱动
        try {
            new Driver();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // 2. 取得一次数据库连接
        // 3. 预编译语句
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement preparedStatement = connection.prepareStatement(SQL)) {
            connection.setAutoCommit(false);
            for (IP ip : list) {
                preparedStatement.setString(1, ip.getMin());
                preparedStatement.setString(2, ip.getMax());
                preparedStatement.setString(3, ip.getLoction());
                preparedStatement.addBatch();
            }
            // 4. 执行SQL
            preparedStatement.executeBatch();
            connection.commit();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static void parseDataFile() {
        list = new ArrayList<>();
        try (BufferedReader bufferedReader = new BufferedReader(new FileReader(FILE))) {
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                String min = line.split("\\s+")[0];
                String max = line.split("\\s+")[1];
                String location = line.replaceFirst(min, "").replaceFirst(max, "").trim();
                list.add(new IP(min, max, location));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        long start = System.currentTimeMillis();
        parseDataFile();
        dumpData();
        System.out.println("total time: " + (System.currentTimeMillis() - start) / 1000 + " seconds.");
    }
}
