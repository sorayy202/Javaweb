package util;

//工具类，使用Durid连接池

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class JDBCUtils {

    private static DataSource ds;

//    1.加载配置文件druid.properties
//    2.初始化连接池
    static {
    try {
        Properties pro = new Properties();
//    使用classloader加载配置文件，获取字节输入流
        InputStream is = JDBCUtils.class.getClassLoader().getResourceAsStream("druid.properties");
        pro.load(is);

//        初试化数据池对象
       ds=  DruidDataSourceFactory.createDataSource(pro);


    } catch (IOException e) {
        e.printStackTrace();
    } catch (Exception e) {
        e.printStackTrace();
    }
}

//    获取连接池对象

    public static DataSource getDataSource(){
        return ds;
    }


//    获取连接connecttion对象

    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }



}
