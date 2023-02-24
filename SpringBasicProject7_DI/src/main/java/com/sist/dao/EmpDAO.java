package com.sist.dao;
//������ ����  ���(���) => bean
import java.util.*;
import java.sql.*;
public class EmpDAO {
	//���� => XML�� ���ؼ� ���� �޾ƿ´� => DI
	/*
	 * 	���������� ����
	 *  ---------- ��ü�� �����ֱ�(����~�Ҹ�)
	 *  1. ����(��ü)Class.forName("��ϵ� Ŭ������") <bean id="dao" class="com.sist.dao.EmpDAO">
	 *  											-------- ������ (EmpDAO�� ã�� ���� ������)
	 *  											map.put(id,������ ��ü) => id�� �ߺ��Ǹ� ���� �߻�
	 *  2. setter DI => ��ü ������ �ʿ��� ������ ����
	 *  3. init-method�� ȣ��
	 *  4. ���α׷��Ӱ� Ȱ��
	 *  5. destroy-method ==> �޸� ����(�Ҹ�)
	 */
	//������ �޴� ��� => �����ͺ��̽� ���� => �������� ��ϵ� DAO�� ������ ������ �ִ�
	/*
	 * 	�����̳��� ���(Ŭ���� ���� ����)
	 * 	---------------------- ApplicationContext
	 * 	DL => lookup(Ŭ���� ã�� ���) => getBean(id)
	 * 	DI => injection => ���� �ʿ��� �����͸� ����
	 * 			|
	 * 			1. setter DI : setXxx() => ���� ����
	 * 			2. constructor DI : ������ �Ű������� ���ؼ� ����
	 * 			3. method DI : init-method , destroy-method
	 * 						   -----------   ---------------
	 * 							��ü ���� �� ȣ��		��ü �Ҹ� �� ȣ��
	 * 			BeanFactory : DI(core)
	 * 				|
	 * 			ApplictaionContext : AOP => AnnotationConfigApplicationContext(�ڹٷ� ȯ�漳���� �� ���)
	 * 				|
	 * 			WebApplicationContext : MVC
	 * 	****page5 => �ֽ��� �������� �ڹ� ����� ȯ�漳���� ���� ����ϰ� �ִ�
	 * 		=====> ȯ�漳�� ���� : ����, ����, Ŭ�������� ���� ���� ����
	 * 									---------------- XML,�ڹ� => ���������� �о ����
	 * 									---------------- XML�� �ݵ�� ���������� �����ϴ� �±׿� �Ӽ��� ����� ����
	 * 		��ü����
	 * 		-----
	 * 		1. Ŭ���� �� ���� �޸� �Ҵ� <bean>
	 * 		2. ��Ű�� ������ �޸� �Ҵ�(*****) <context:component-scan> : Ŭ������ ����(������̼�) @Controller
	 * 		3. ����� ���� Ŭ����, ���̺귯�� Ŭ����(���̹�Ƽ��,JPA) cos
	 * 		   ------------  ------------
	 * 				|			|
	 * 			������̼�		<bean>
	 */
	private Connection conn;
	private PreparedStatement ps;
	private String url,user,password;
	public void setUrl(String url) {
		this.url = url;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//�����ڸ� ���ؼ� ���� 
	public EmpDAO(String driver)
	{
		try
		{
			Class.forName(driver);
		}catch(Exception ex) {}
	}
	
	public void getConnection()
	{
		try
		{
			conn=DriverManager.getConnection(url,user,password);
		}catch(Exception ex) {}
	}
	public void disConnection()
	{
		try
		{
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		}catch(Exception ex) {}
	}
	
	public List<EmpVO> empListData()
	{
		List<EmpVO> list=new ArrayList<EmpVO>();
		try
		{
			getConnection();
			String sql="SELECT empno,ename,job FROM emp";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				EmpVO vo=new EmpVO();
				vo.setEmpno(rs.getInt(1));
				vo.setEname(rs.getString(2));
				vo.setJob(rs.getString(3));
				list.add(vo);
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			disConnection();
		}
		return list;
	}
}