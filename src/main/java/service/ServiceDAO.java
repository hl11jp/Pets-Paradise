package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.utils.*;
import com.utils.DButils;

import javax.xml.ws.Service;


public class ServiceDAO {


    private static final String CHECK_DUPLICATE = "SELECT ServiceName FROM Service WHERE ServiceID=?";
    private static final String ADD = "INSERT INTO Service(ServiceID, ServiceName, ServicePrice, ServiceDescription, Status) VALUES (?, ?, ?, ?, 1)";
    private static final String SEARCH_SERVICE = "SELECT ServiceID, ServiceName, ServicePrice, ServiceDescription, Status FROM Service WHERE ServiceName LIKE ? AND status=1";
    private static final String GET_ALL = "SELECT ServiceID, ServiceName, ServicePrice, ServiceDescription FROM Service WHERE status=1";
    private static final String UPDATE = "UPDATE Service SET  ServiceName=?, ServicePrice=?, ServiceDescription=? WHERE ServiceID=?";
    private static final String GET_ID = "SELECT ServiceID, ServiceName, ServicePrice, ServiceDescription FROM Service WHERE ServiceID=?";
    private static final String DELETE = "UPDATE Service SET status=0 WHERE ServiceID=?";



    public boolean delete(String ID) throws SQLException {
        boolean check = false;

        Connection connection = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            connection = DButils.getConnection();
            if (connection != null) {
                pst = connection.prepareStatement(DELETE);
                pst.setString(1, ID);
                check = pst.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (connection != null) {
                connection.close();
            }
        }

        return check;
    }

    public boolean update(ServiceDTO service) throws SQLException {
        boolean check = false;

        Connection connection = null;
        PreparedStatement pst = null;
        try {
            connection = DButils.getConnection();
            if (connection != null) {
                pst = connection.prepareStatement(UPDATE);
                pst.setString(1, service.getServiceName());
                pst.setFloat(2, service.getServicePrice());
                pst.setString(3, service.getServiceDescription());
                pst.setString(4, service.getServiceID());
                check = pst.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (connection != null) {
                connection.close();
            }
        }

        return check;
    }

    public boolean create(ServiceDTO service) throws SQLException {
        Connection connection = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        boolean success = false;

        try {
            connection = DButils.getConnection();
            if (connection != null) {
                pst = connection.prepareStatement(ADD);
                pst.setString(1, service.getServiceID());
                pst.setString(2, service.getServiceName());
                pst.setFloat(3, service.getServicePrice());
                pst.setString(4, service.getServiceDescription());

                success = pst.executeUpdate() > 1 ? true : false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
        return success;
    }

    public boolean checkDuplicate(String serviceID) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DButils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(CHECK_DUPLICATE);
                ptm.setString(1, serviceID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    check = true;
                }
            }
        } catch (Exception e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return check;
    }
}
