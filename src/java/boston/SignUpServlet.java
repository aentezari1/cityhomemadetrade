package boston;

import boston.utils.DataDAO;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "SignUpServlet", urlPatterns = {"/SignUpServlet"})
@MultipartConfig
public class SignUpServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Trader> activeTraders = (List)getServletContext().getAttribute("activeTraders");
        Boolean saveSuccessful = false;
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        InputStream userPicture = null;
        InputStream foodPicture = null;
        //get user image
        Part filePart = request.getPart("traderpicture"); // Retrieves <input type="file" name="traderpicture">
        if(filePart != null){
            String userPicturefileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
            userPicture = filePart.getInputStream();
        }
        //get passwords and check if they match
        String pass = request.getParameter("psw");
        String passRepeat = request.getParameter("psw-repeat");
        if(!pass.equals(passRepeat)){
            request.setAttribute("passwordsConfirmed","passwords dont match");
            request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            return;
        }
        
        String foodtrade = request.getParameter("foodtrade");
        //get first food picture
        Part filePart2 = request.getPart("foodpicture"); // Retrieves <input type="file" name="traderpicture">
        if(filePart2 != null){
            String foodpicturefileName = Paths.get(filePart2.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
            foodPicture = filePart2.getInputStream();
        }else {
            request.setAttribute("noFoodPicture","upload some food please");
            request.getRequestDispatcher("SignUp.jsp").forward(request,response);
            return;
        }
        
        String neighborhood = request.getParameter("neighborhood");
        String description = request.getParameter("description");
        String restriction = request.getParameter("restriction");
        String category = request.getParameter("type");
        Boolean rememberme = false;
        if(request.getParameter("remember") != null){
            //create a cookie to remember them by
            rememberme = true;
        }
        
        Trader trader_new = new Trader(fname,lname,email,pass,foodtrade,neighborhood);
        
        if(userPicture != null){
            trader_new.setUserPicture(userPicture);
        }
        
        Integer traderid = DataDAO.registerTrader(trader_new);
        if(traderid != null){
            saveSuccessful = true;
            trader_new.setTrader_id(traderid);
        }
        //the user was saved in the DB, now save them in the servlet context
        activeTraders.add(trader_new);
        
        //create recipe before adding to 
        if(saveSuccessful) {
            if(foodPicture != null){
                //if they upload their first item save it and forward them to their profile
                // else just forward them to their blank profile, if the save wasn't succesful assert false.
                //DataDAO.insertItem(foodPicture,trader_new);
                //Data.DAO.insertItem(food)
                //create the item
                Item i = new Item(foodtrade,category,description,traderid,restriction,foodPicture);
                Integer id = DataDAO.insertItem(i, trader_new);
                i.setId(id);
                // forward to profile
                request.setAttribute("firsttimeuser",trader_new);
                request.setAttribute("firstpicture",i);
            }
        }else{
            throw new RuntimeException("user not saved correctly");
        }
        
        request.getRequestDispatcher("").forward(request,response);
    }

}
