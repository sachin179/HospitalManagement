package HospitalManagement;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addPost
 */
@WebServlet("/AddNewLaborotry")
public class AddLaborotary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddLaborotary() {
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
		doGet(request, response);
		
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		String usage = request.getParameter("qty");
		String description = request.getParameter("description");
		String phone = request.getParameter("phone");
		String date = request.getParameter("date");
		String price = request.getParameter("price");
		


		int ab = 3;
		ab = labororaty.Insertlabororaty(email,name,type,usage, description, phone, date, price);

		if (ab == 1) {

			// response.sendRedirect("Success.jsp");
			RequestDispatcher dis = request.getRequestDispatcher("viewLaborotary.jsp");
			dis.forward(request, response);
			System.out.println("Successful");
		} else if (ab == 0) {

			// response.sendRedirect("unsuccess.jsp");
			RequestDispatcher dis2 = request.getRequestDispatcher("AddNewLabrotory.jsp");
			dis2.forward(request, response);
			System.out.println("UnSuccessful");
		}
	}

}
