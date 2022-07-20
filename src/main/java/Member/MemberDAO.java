package Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import DBPKG.DBConnect;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	public MemberDAO() {
		try {
			con = DBConnect.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int userchk(String id, String pwd) {
		String sql = "select * from PJ_member where id=?";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
			if(pwd.equals(rs.getString("pwd"))) {
				result = 1;
			}else {
				result = 0;
			}
			}else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int insert(MemberDTO dto) {
		String sql = "insert into PJ_member values(?,?,?,?,?)";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getTel());
			ps.setString(5, dto.getAddr());
			
		    result = ps.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public String IDsearch(String name, String tel) {
		String sql = "select id from PJ_member where name=? and tel=?";
		String id = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, tel);
			rs = ps.executeQuery();
			
			if(rs.next()) {
			 id = rs.getString("id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;
	}
public String Pwdsearch(String name, String id) {
		String pwd = null;
		String sql ="select pwd from PJ_member where name=? and id=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, id);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				pwd = rs.getString("pwd");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pwd;
	}
	public void pwdupdate(String pwd, String id) {
		String sql = "update PJ_member set pwd=? where id=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, pwd);
			ps.setString(2, id);
		    rs = ps.executeQuery();
		    
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	public MemberDTO info(String id) {
	  MemberDTO dto = null;
	  String sql = "select * from PJ_member where id='"+id+"'";
	  try {
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
		if(rs.next()) {
			dto = new MemberDTO();
			dto.setId(rs.getString("id"));
			dto.setPwd(rs.getString("pwd"));
			dto.setName(rs.getString("name"));
			dto.setTel(rs.getString("tel"));
			dto.setAddr(rs.getString("addr"));
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	  return dto;
	}
	public void delete(String id) {
		String sql = "delete from PJ_member where id='"+id+"'";
		try {
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void update(MemberDTO dto) {
		String sql = "update PJ_member set name=?,pwd=?,tel=?,addr=? where id=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getPwd());
			ps.setString(3, dto.getTel());
			ps.setString(4, dto.getAddr());
			ps.setString(5, dto.getId());
			
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int infopwd(String id, String pwd) {
		  String sql = "select * from PJ_member where id='"+id+"' and pwd='"+pwd+"'";
		  int result = 0;
		  try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				result = 1;
			}else {
				result = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return result;
		}		
}
