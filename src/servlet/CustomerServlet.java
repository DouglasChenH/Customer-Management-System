package servlet;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;
import domain.Customer;
import domain.PageBean;
import service.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;


public class CustomerServlet extends BaseServlet {

    private CustomerService customerService = new CustomerService();

    public String add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Customer customer = CommonUtils.toBean(request.getParameterMap(), Customer.class);
        customer.setId(CommonUtils.uuid());

        customerService.add(customer);

        request.setAttribute("msg", "Congulation! customer added successfully");

        return "/msg.jsp";
    }

//    public String findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<Customer> customers = customerService.findAll();
//
//        request.setAttribute("cstmList", customers);
//
//        return "/list.jsp";
//    }

    public String findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       /*
        *1.get pc from request
        * 2.set up pr
        * 3.call service methods，return pageBean，save request address
        * 4.pass to list.jsp
        */
       /*
        * 1.get pc
        *   if pc doestn't exist，pc＝1
        *   if pc exist，turn pc to type init
        */
        int pc = getPc(request);

        int pr = 10;//set up 10 records per page, changable

        PageBean<Customer> pb = customerService.findAll(pc, pr);
        pb.setUrl(getUrl(request));

        request.setAttribute("pb", pb);

        return "/list.jsp";
    }

    private int getPc(HttpServletRequest request) {
        String value = request.getParameter("pc");
        if (value == null || value.trim().isEmpty()) {
            return 1;
        }
        return Integer.parseInt(value);
    }

    public String preEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Customer customer = customerService.find(id);

        request.setAttribute("customer", customer);

        return "/edit.jsp";
    }

    public String edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Customer customer = CommonUtils.toBean(request.getParameterMap(), Customer.class);

        customerService.edit(customer);

        request.setAttribute("msg", "Cougulation! Customer edited successfully");
        return "/msg.jsp";
    }

    public String delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        customerService.delete(id);

        request.setAttribute("msg", "Cougulation! Customer deleted successfully");

        return "/msg.jsp";
    }

//    public String query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        Customer customer=CommonUtils.toBean(request.getParameterMap(),Customer.class);
//
//        List<Customer> customers=customerService.query(customer);
//
//        request.setAttribute("cstmList",customers);
//
//        return "/list.jsp";
//
//    }

    public String query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Customer customer = CommonUtils.toBean(request.getParameterMap(), Customer.class);

//        System.out.println(getUrl(request));
        customer = encoding(customer);

        int pc = getPc(request);
        int pr = 10;

        PageBean<Customer> pb = customerService.query(customer, pc, pr);

        pb.setUrl(getUrl(request));

        request.setAttribute("pb", pb);
        return "/list.jsp";

    }

    private Customer encoding(Customer customer) throws UnsupportedEncodingException {
        String name = customer.getName();
        String gender = customer.getGender();
        String phone = customer.getPhone();
        String email = customer.getEmail();

        if (name != null && !name.trim().isEmpty()) {
            name = new String(name.getBytes("ISO-8859-1"), "utf-8");
            customer.setName(name);
        }
        if (gender != null && !gender.trim().isEmpty()) {
            gender = new String(gender.getBytes("ISO-8859-1"), "utf-8");
            customer.setGender(gender);
        }
        if (phone != null && !phone.trim().isEmpty()) {
            phone = new String(phone.getBytes("ISO-8859-1"), "utf-8");
            customer.setPhone(phone);
        }
        if (email != null && !email.trim().isEmpty()) {
            email = new String(email.getBytes("ISO-8859-1"), "utf-8");
            customer.setEmail(email);
        }
        return customer;
    }

    private String getUrl(HttpServletRequest request) {
        String contextPath = request.getContextPath();
        String servletPath = request.getServletPath();
        String queryString = request.getQueryString();

        if (queryString.contains("&pc=")) {
            int index = queryString.lastIndexOf("&pc=");
            queryString = queryString.substring(0, index);
        }

        return contextPath + servletPath + "?" + queryString;
    }
}

