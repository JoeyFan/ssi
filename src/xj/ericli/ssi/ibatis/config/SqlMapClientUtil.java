package xj.ericli.ssi.ibatis.config;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

/**
 * 数据库对象工具：<br>
 * 涉及： ibatis需要的sqlMapClient的获取，支持跨数据库
 * 
 * @author lg
 * 
 */
public class SqlMapClientUtil {
	private static Map<String, SqlMapClient> sqlMapClientMap = new HashMap<String, SqlMapClient>(1);;

	/**
	 * ��ba保证返回�?sqlMapClient �?null
	 * 
	 * 如果还没有初始化好，就等待初始化好再返回
	 * 
	 * @return
	 */
	public static SqlMapClient getSqlMapClient(String dbName) {
		if (sqlMapClientMap.get(dbName) == null) {
			Reader reader = null;
			try {
				String resource = "";
				if (StringUtils.isNotBlank(dbName)) {
					resource = "ibatis_" + dbName + "_sqlconfig.xml";
				} else {
					resource = "ibatis_sqlconfig.xml";
				}
				reader = Resources.getResourceAsReader(resource);
				SqlMapClient sqlMapClient = SqlMapClientBuilder.buildSqlMapClient(reader);
				sqlMapClientMap.put(dbName, sqlMapClient);

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (reader != null)
					try {
						reader.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
			}
		}
		return sqlMapClientMap.get(dbName);
	}
}
