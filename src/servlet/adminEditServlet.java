package servlet;

import Dao.adminDao;
import bean.adminBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class adminEditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = (String) request.getSession().getAttribute("id"); //��session��ȡid
        adminDao dao = new adminDao();
        adminBean bean = null;
        try {
            bean = dao.adminInfo(userName); //��ȡbean
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // ��bean��Ϊ��������admin_index.jspҳ��
        request.setAttribute("bean", bean);

        // ��������ת��admin_index.jsp
        request.getRequestDispatcher("admin_edit.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}