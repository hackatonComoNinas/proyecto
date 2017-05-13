package cbd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AccesoBD {
	private String password;
	private String user;
	private String url;
	private Connection con;
	private Statement stmt;
	private ResultSet rs;

	public AccesoBD() throws ClassNotFoundException, SQLException {
		this.url = "jdbc:postgresql://localhost:5432/pdprof";
		this.user = "postgres";
		this.password = "postgres";

		this.con = null;
		this.rs = null;
		this.stmt = null;
		
		
	}

	public Connection iniciarConexion() throws ClassNotFoundException, SQLException {
		Class.forName("org.postgresql.Driver");
		String error;
		try {
		this.con = DriverManager.getConnection(this.url, this.user, this.password);
		this.stmt = this.con.createStatement();
		System.out.println(this.stmt.toString());
		}
		catch(SQLException e){//Sucede si la conexión falla

			error=e.getMessage();
			System.out.println(error);

		}
		return con;
	}
	
	


	public void cerrarConexion(Connection conn) throws SQLException {
		if (this.rs != null) {
			this.rs.close();
		}
		if (this.stmt != null) {
			this.stmt.close();
		}
		if (this.con != null)
			this.con.close();
	}

	public boolean insertar(String sentencia) throws ClassNotFoundException, SQLException {
		iniciarConexion();

		boolean resultado = this.stmt.execute(sentencia);

		return resultado;
		
	}

	public ResultSet consulta(String sentencia) throws ClassNotFoundException, SQLException {
		iniciarConexion();

		this.rs = this.stmt.executeQuery(sentencia);

		return this.rs;
	}

	public int actualizar(String sentencia) throws ClassNotFoundException, SQLException {
		iniciarConexion();

		int resultado = this.stmt.executeUpdate(sentencia);

		return resultado;
	}

	public int eliminar(String sentencia) throws ClassNotFoundException, SQLException {
		iniciarConexion();

		int resultado = this.stmt.executeUpdate(sentencia);

		return resultado;
	}
	
		
	   
}