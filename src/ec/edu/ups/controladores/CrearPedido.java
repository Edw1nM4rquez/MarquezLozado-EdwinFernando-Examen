package ec.edu.ups.controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ec.edu.ups.dao.PedidoDAO;
import ec.edu.ups.entidades.Pedido;
import ec.edu.ups.dao.DAOFactory;

/**
 * Servlet implementation class CrearUsuario
 */
@WebServlet("/crearPedido")
public class CrearPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearPedido() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		
		String numero="";
		String fecha="";
		String cliente = "";
		String total="";
		String observacion ="";
				
		String accion = request.getParameter("registrarUsr");
		
		Pedido ped=new Pedido();
	//	UsuarioDAO usuarioDao = DAOFactory.getFactory().getUsuarioDAO();
		PedidoDAO pedao = DAOFactory.getFactory().getPedidoDAO();
		
		if (accion.equals("RegistrarUsr")) {
			
			numero = request.getParameter("numero");
			fecha = request.getParameter("fecha");
			total = request.getParameter("total");
			cliente = request.getParameter("cliente");
			observacion = request.getParameter("ob");
			
			System.out.print("Numero pedido: "+numero);
			
			Pedido pedi= new Pedido(Integer.parseInt(numero), fecha, cliente, Double.parseDouble(total), observacion);
			
			getServletContext().getRequestDispatcher("/Public/index.jsp").forward(request, response);
			
				pedao.create(pedi);
		}
			
		
	}

}
