package DAO;

import java.util.List;

import BEAN.Order;

public interface OrderDao
{
    public boolean addOrder(Order order);
    public List<Order> getOrderByUserId(int userId);
    public List<Order> getAllOrder();
    public int totalOrderPrice(int userId);
    boolean addDeliveryDate(int orderId,int userId,int productId,String deliveyrDate);
    int totalOrdersCount();
}
