
package boston.utils;

import boston.Item;
import boston.Trader;
import java.io.InputStream;
import java.sql.Connection;
import java.util.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.io.InputStream;


public class DataDAO {
    //-----------------production db--------------------------
    //private static final String DBURL = "jdbc:mysql://localhost:3306/FlashCardShark?useUnicode=true&useSSl=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";    
	//private static final String un = "root";
	//private static final String pw = "Epictetus12!"; 
    //---------------------------------------------------------
    
    //-----------------local db -------------------------------
    private static final String DBURL = "jdbc:mysql://localhost:3306/BostonTraders?useUnicode=true&useSSl=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private static final String un = "root";
    private static final String pw = "Basketball12";
    //----------------------------------------------------------*/
    
    static {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch(ClassNotFoundException e){
            System.out.println("Class not found");
        }
    
    }
    
    public static ArrayList<Item> searchForItems(String[] neighborhoods, String[] restrictions, String[] items){
        try (Connection conn = DriverManager.getConnection(DBURL, un, pw)) {
            ArrayList<Item> returnitems = new ArrayList<Item>();
            //String select = "Select trader.trader_id,trader.username,trader.neighborhood,item.item_id,item.name,item.category,item.description,item.fk_creator_id,item.diet_class";
            String select = "Select t.*,i.* ";
            String from = "From trader as t inner join item as i on t.trader_id = i.fk_creator_id";
            StringBuilder where = new StringBuilder();
                
            //prevent selecting more than 5 with JS
            //create query string based on filter items
            if(neighborhoods != null && neighborhoods.length != 0){
                where.append(" Where t.neighborhood IN (");
                for(int i = 0; i<neighborhoods.length; i++){
                    where.append("?,");
                }
                where.deleteCharAt( where.length() -1 );
                where.append(")");
                System.out.println(where);
            }
            
            if(restrictions != null && restrictions.length != 0){
                where.append(" AND i.diet_class IN ( ");
                for(String res : restrictions){
                    where.append("?,");
                }
                where.deleteCharAt(where.length() - 1);
                where.append(")");
                System.out.println(where);
                
            }
            
            if(items != null && items.length != 0){
                where.append(" AND i.category IN ( ");
                for(String it : items){
                    where.append("?,");
                }
                where.deleteCharAt(where.length() - 1);
                where.append(")");
                System.out.println(where);
            }
            String whereclause = where.toString();
            System.out.println(whereclause);
            String sql = select + from + whereclause;
            
            PreparedStatement getitems = conn.prepareStatement(sql);
            int paramnumber = 1;
            //parameterize query string... exact numbers of params should have been created
            if(neighborhoods != null){
                for(String ne : neighborhoods){
                    getitems.setString(paramnumber++, ne);
                }
            }
            
            if(restrictions != null) {
                for(String res: restrictions){
                 getitems.setString(paramnumber++, res);
                }
            }
            
            if(items != null){
                for(String it : items){
                    getitems.setString(paramnumber++, it);
                }
            }
            System.out.println(getitems);
            ResultSet searchitems = getitems.executeQuery();
            
            //create items out of rows
            while(searchitems.next()){
                int itemid = searchitems.getInt("i.item_id");
                String name = searchitems.getString("i.name");
                String cat = searchitems.getString("i.category");
                String desc = searchitems.getString("i.description");;
                int crid = searchitems.getInt("i.fk_creator_id");
                String dietclass = searchitems.getString("i.diet_class");
                InputStream image = searchitems.getBinaryStream("i.image");
                Item item = new Item(itemid,name,cat,desc,crid,dietclass,image);
                returnitems.add(item);
            }
            System.out.println("returned items size: "+returnitems.size());
            
            return returnitems;
           
        }catch(SQLException e){
          e.printStackTrace();
          return null;
        }
    }
    
    public static Integer registerTrader(Trader t){
        //preparedstatement.setBlob()
        try (Connection conn = DriverManager.getConnection(DBURL, un, pw)) {
            PreparedStatement pst = conn.prepareStatement("Select * from trader where firstname = ? AND lastname = ?");
            pst.setString(1, t.getFirstname());
            pst.setString(2,t.getLastname());
            ResultSet existingTrader = pst.executeQuery();
            if(existingTrader.next()){
                return null;
            }

            PreparedStatement insertTrader = conn.prepareStatement("insert into trader values(?,?,?,?,?,?,?,?)",PreparedStatement.RETURN_GENERATED_KEYS);
            insertTrader.setString(1,t.getFirstname()+t.getLastname());
            insertTrader.setString(2,t.getFirstname());
            insertTrader.setString(3,t.getLastname());
            //current date
            java.util.Date d1 = new java.util.Date();
            java.sql.Date d = new java.sql.Date(d1.getTime());
            insertTrader.setDate(4,d);
            
            insertTrader.setString(5,t.getPassword());
            insertTrader.setString(6,t.getNeighborhood());
            insertTrader.setBlob(7,t.getProfileImage());
            insertTrader.setString(8,t.getEmail());
            int rows = insertTrader.executeUpdate();
            ResultSet keys = insertTrader.getGeneratedKeys();
            if(keys.next()){
                return keys.getInt(1);
            }else{
                return null;
            }
            
        }catch(SQLException e){
            e.printStackTrace();
            return null;
        }
        
    }
    
    public static Integer insertItem(Item i,Trader t) {
        try(Connection conn = DriverManager.getConnection(DBURL, un, pw)) {
            PreparedStatement insertitem = conn.prepareStatement("insert into item(name,category,description,fk_creator_id,diet_class,image) values(?,?,?,?,?,?)");
            insertitem.setString(1,i.getName());
            insertitem.setString(2,i.getDescription());
            insertitem.setInt(3,t.getTrader_id());
            insertitem.setString(4,i.getDiet_class());
            insertitem.setBlob(5, i.getItem());
            insertitem.executeUpdate();
            ResultSet rs = insertitem.getGeneratedKeys();
            if(rs.next()){
                return rs.getInt(1);
            } else {
                return null;
            }
            
        }catch(SQLException e){
            e.printStackTrace();
            return null;
            
        }
    }
    
}
