package com.magic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.magic.dto.EmployeesVO;

public class EmployeesDAO {

	//매개변수가 없는 생성자 생성
	private EmployeesDAO() {
		
	}
	
	private static EmployeesDAO instance= new EmployeesDAO(); //객체생성
	
	public static EmployeesDAO getInstance() {
		return instance;
	}
	
	//컨넥션 얻어오는 메소드 생성
	public Connection getConnection() throws Exception{
		
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext  = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		
		return conn;
	}
	
	//사용자 인증시 사용하느 메소드 생성
	public int userCheck(String id, String pwd, String lev) {
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		int result = -1;
		String sql="select * from employees where id=?";
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			//▶사용자 인증시 사용하는 메소드 생성하기
			//1.아이디와 비밀번호가 일치하면서 레벨이 A하고 일치하면 result =  2       ->운영자
			//2.아이디와 비밀번호가 일치하면서 레벨이 B하고 일치하면 result =  3       ->일반회원
			//3.아이디가 있으면서 비밀번호가 일치하는 회원이다. result = 1
			//4.아이디가 일치하면서 비밀번호가 일치하지 않으면 비밀번호가 틀렷습니다. result = 0
			//5.아이디와 비밀번호가 일치하지 않으면 비회원이다. result = -1

			if(rs.next()) {
				//해당하는 아이디가 있으면 아래 아니면 else
				//입력한 아이디가 있으면
				if(pwd.equals(rs.getString("pass"))) {
					//비밀번호가 일치하면 실행
					
					//db에서 가져와서 이게 더 안전
					if(lev.equals(rs.getString("lev"))) {
						result=2;
						if(lev.equals("B")) {
							result=3;
						}
						
					}else {
						result=1;
					}
					//db에서 가져오는건 아님
					/*	if(lev.equals("A")) {
						result=2;
					}else {
						result=3;
					} */
					
				}else{
					//비밀번호가 일치하지 않으면 실행
					result =0;
				}
				
			}else {
				//입력한 아이다가 없으면
				result = -1; 
			}

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	
	//아이디로 회원 정보 가져오는 메소드 생성
	public EmployeesVO getMember(String id) {
		
		EmployeesVO member=null;
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from employees where id=?";
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				member=new EmployeesVO();
								//vo에 있는 id
				member.setId(rs.getString("id"));
				member.setPass(rs.getString("pass"));
				member.setName(rs.getString("name"));
				member.setLev(rs.getString("lev"));
				member.setEnter(rs.getDate("enter"));
				member.setGender(rs.getInt("gender"));
				member.setPhone(rs.getString("phone"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return member;
	}
	
	//회원정보 변경하기 위한 메소드 생성하기
	public int updateMember(EmployeesVO eVO) {
		
		int result=-1;
		String sql="update employees set pass=?, name=?, lev=?, phone=?, gender=? where id=?";
		
		Connection conn =null;
		PreparedStatement pstmt=null;
		
		try {
			
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
								//VO가 대문자여서 여기서 대문자로 적는다
			pstmt.setString(1,eVO.getPass());
			pstmt.setString(2,eVO.getName());
			pstmt.setString(3,eVO.getLev());
			pstmt.setString(4,eVO.getPhone());
			pstmt.setInt(5,eVO.getGender());
			pstmt.setString(6,eVO.getId());
			
			result=pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt !=null)pstmt.close();
				if(conn !=null)conn.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	
	
	//사원정보를 db에 추가하기 위한 메소드 생성하기(사원등록 메소드)
	public void insertMember(EmployeesVO member) {
		
		String sql = "insert into employees values(?,?,?,?,SYSDATE,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPass());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getLev());
			pstmt.setInt(5, member.getGender());
			pstmt.setString(6, member.getPhone());
			
			System.out.println(pstmt.executeUpdate());
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}
	}
	
	
}






