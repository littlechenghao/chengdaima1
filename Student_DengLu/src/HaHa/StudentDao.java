package HaHa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import sun.security.util.Password;
public class StudentDao {
	public boolean denglu(Stuent stuent) {
		Connection connection = DBUtil.getConnection();
		String sql = "select count(*) from t_student where username = ? and password=?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int i=0;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,stuent.getUsername());
			preparedStatement.setString(2,stuent.getPassword());
			//接收结果集
			resultSet = preparedStatement.executeQuery();
			//遍历结果集
			while(resultSet.next()) {
				if (resultSet.getInt(1)>0) 
				{
					i=1;
				}
			}
		}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				//关闭资源
				DBUtil.close(resultSet);
				DBUtil.close(preparedStatement);
				DBUtil.close(connection);
			}
		if(i==1)
		{
			return true;
		}
		else {
			return false;
		}
   }
	public void zhuce(Stuent stuent)
	{
				Connection connection = DBUtil.getConnection();
				//准备sql语句
				String sql = "select count(*) from t_student where username = ?";
				//创建语句传输对象
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				try {
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, stuent.getUsername());
					//接收结果集
					resultSet = preparedStatement.executeQuery();
					//遍历结果集
					while(resultSet.next()) {
						if (resultSet.getInt(1) > 0) {
							throw new UserException("用户已存在") ;
						}
					}
					sql = "insert into t_student(username,password) value (?,?)";
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, stuent.getUsername());
					preparedStatement.setString(2, stuent.getPassword());
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					//关闭资源
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
				}
	}
}
