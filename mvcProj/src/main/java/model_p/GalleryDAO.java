package model_p;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class GalleryDAO {
	
	Connection con;
	PreparedStatement ptmt;
	ResultSet rs;
	String sql;
	
	public GalleryDAO() {
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:/comp/env/mvc322");
			con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<GalleryDTO> list(GalleryDTO gto){
		
		sql = "select * from gallery order by id desc";
		ArrayList<GalleryDTO> res = new ArrayList<>();
		
		try {
			ptmt = con.prepareStatement(sql);
			rs = ptmt.executeQuery();
			
			while(rs.next()) {
				gto = new GalleryDTO();
				gto.setId(rs.getInt("id"));
				gto.setCnt(rs.getInt("cnt"));
				gto.setPname(rs.getString("pname"));
				gto.setPw(rs.getString("pw"));
				gto.setTitle(rs.getString("title"));
				gto.setUpfile(rs.getString("upfile"));
				gto.setContent(rs.getString("content"));
				gto.setReg_date(rs.getTimestamp("reg_date"));
				
				res.add(gto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return res;
	}
	
	public void close() {
		if(rs!=null) try { rs.close(); } catch (Exception e) {} 
		if(ptmt!=null) try { ptmt.close(); } catch (Exception e) {} 
		if(con!=null) try { con.close(); } catch (Exception e) {} 
	}
}
