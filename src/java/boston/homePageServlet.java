/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package boston;

import boston.utils.DataDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author maxbisesi
 */
@WebServlet(name = "homePageServlet", urlPatterns = {"/homePageServlet"})
public class homePageServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //get selections
        String[] neighborhoods = request.getParameterValues("neighborhoodcheckbox");
        String[] restrictions = request.getParameterValues("restriction");
        String[] items = request.getParameterValues("type");
        //what now ? Search DB based on check boxes, display results on Food.html
        ArrayList<Item> searchresults = DataDAO.searchForItems(neighborhoods, restrictions, items);
        
        //list search results
        for(Item i : searchresults){
            System.out.println(i);
        }   
        
        
    }


}
