package com.livspace.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoanController {

    @GetMapping("/loan-calculator")
    public String showForm() {
        return "loanForm";
    }

    @PostMapping("/calculate-loan")
    public String calculateLoan(
            @RequestParam double loanAmount,
            @RequestParam double annualInterestRate,
            @RequestParam int loanTenureYears,
            @RequestParam double downPayment,
            Model model
    ) {
        double principal = loanAmount - downPayment;
        double monthlyInterestRate = annualInterestRate / 12 / 100;
        int numberOfMonths = loanTenureYears * 12;

        double emi = (principal * monthlyInterestRate * Math.pow(1 + monthlyInterestRate, numberOfMonths)) /
                (Math.pow(1 + monthlyInterestRate, numberOfMonths) - 1);

        double totalPayment = emi * numberOfMonths;
        double totalInterest = totalPayment - principal;

        model.addAttribute("emi", String.format("%.2f", emi));
        model.addAttribute("totalPayment", String.format("%.2f", totalPayment));
        model.addAttribute("totalInterest", String.format("%.2f", totalInterest));
        model.addAttribute("principal", principal);

        return "loanResult";
    }
}

