import java.sql.*;public class TestConnection { public static void main(String[] args) throws SQLException {
    Connection conn = DriverManager.getConnection("jdbc:sqlserver://10.54.8.200:1433;databaseName=TokyoData", "dgs_sports", "TempPass*2023");
    if (conn != null) { System.out.println("Connection successful!"); } else { System.out.println("Failed to connect."); }
  }
}