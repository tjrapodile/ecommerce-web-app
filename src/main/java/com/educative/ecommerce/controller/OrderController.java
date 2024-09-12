package com.educative.ecommerce.controller;

import com.educative.ecommerce.dto.OrderDto;
import com.educative.ecommerce.service.AuthenticationService;
import com.educative.ecommerce.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/order")
@CrossOrigin(origins = "https://thembis-bazaar.netlify.app")
public class OrderController {

    @Autowired
    private OrderService orderService;

    // Checkout session checkout api

    @PostMapping("/create-checkout-session")
    public OrderDto checkoutList(@RequestBody OrderDto orderDto){
        OrderDto response = orderService.addOrder(orderDto);
        return response;

    }

}
