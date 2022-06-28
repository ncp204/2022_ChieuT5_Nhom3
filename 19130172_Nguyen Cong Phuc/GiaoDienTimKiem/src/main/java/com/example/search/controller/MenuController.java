package com.example.search.controller;

import com.example.search.bean.DishDetails;
import com.example.search.service.DishDetailsService;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MenuController", value = "/menu")
public class MenuController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("pageName", "Menu");
        request.setAttribute("page", "/views/menu.jsp");

        HttpSession session = request.getSession();
        List<DishDetails> listDishs = (List<DishDetails>) session.getAttribute("listDishs");
        if (listDishs == null || listDishs.size() < 1) {
            List<DishDetails> dishs = DishDetailsService.getListDish();
            request.setAttribute("dishs", dishs);
        } else {
            request.setAttribute("dishs", listDishs);
        }

        RequestDispatcher rd = request.getRequestDispatcher("/decorator/web.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String keyword = request.getParameter("search").trim();
        if (keyword != null || !keyword.equals("")) {
            request.setAttribute("valueInput", keyword);
        } else {
            request.setAttribute("valueInput", "");
        }
        List<DishDetails> listDishs = DishDetailsService.getListDishWithCommand(keyword);
        HttpSession session = request.getSession();

        if(listDishs.size() < 1){
            session.setAttribute("error", "KHÔNG TÌM THẤY MÓN ĂN");
        }else{
            session.setAttribute("error", null);
        }

        session.setAttribute("listDishs", listDishs);
        doGet(request, response);
    }
}
