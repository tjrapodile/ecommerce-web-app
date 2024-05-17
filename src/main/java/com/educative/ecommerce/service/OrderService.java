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

    public String addOrder(OrderDto orderDto){
        CustomerOrder customerOrder = new CustomerOrder(orderDto.getToken(), orderDto.getTotalPrice(), orderDto.getProdIDs(), orderDto.getQuantities(), orderDto.getCountry(), orderDto.getProvince(), orderDto.getSubrub(), orderDto.getCity(), orderDto.getStreetName(), orderDto.getAreaCode());
        orderRepository.save(customerOrder);
        return "Order Added Successfully";
    }
}

