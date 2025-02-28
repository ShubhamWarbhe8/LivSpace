package com.livspace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SellController {

    @GetMapping("sell")
    public String loadSellForm() {
        return "sell";
    }
}