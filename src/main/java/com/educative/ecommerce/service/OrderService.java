package com.educative.ecommerce.service;


import com.educative.ecommerce.dto.OrderDto;
import com.educative.ecommerce.model.CustomerOrder;
import com.educative.ecommerce.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

    @Autowired
    OrderRepository orderRepository;

    public OrderDto addOrder(OrderDto orderDto){
        CustomerOrder customerOrder = new CustomerOrder(orderDto.getToken(), orderDto.getTotalPrice(), orderDto.getProdIDs(), orderDto.getQuantities(), orderDto.getCountry(), orderDto.getProvince(), orderDto.getSubrub(), orderDto.getCity(), orderDto.getStreetName(), orderDto.getAreaCode());
        CustomerOrder savedOrder = orderRepository.save(customerOrder);
        return convertToDto(savedOrder);
    }

    private OrderDto convertToDto(CustomerOrder customerOrder) {
        OrderDto orderDto = new OrderDto();
        orderDto.setOrder_id(customerOrder.getOrder_id());
        orderDto.setToken(customerOrder.getToken());
        orderDto.setTotalPrice(customerOrder.getTotalPrice());
        orderDto.setProdIDs(customerOrder.getProdIDs());
        orderDto.setQuantities(customerOrder.getQuantities());
        orderDto.setCountry(customerOrder.getCountry());
        orderDto.setProvince(customerOrder.getProvince());
        orderDto.setSubrub(customerOrder.getSubrub());
        orderDto.setCity(customerOrder.getCity());
        orderDto.setStreetName(customerOrder.getStreetName());
        orderDto.setAreaCode(customerOrder.getAreaCode());
        return orderDto;
    }

}

