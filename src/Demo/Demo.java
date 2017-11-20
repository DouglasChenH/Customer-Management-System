package Demo;

import cn.itcast.commons.CommonUtils;
import cn.itcast.jdbc.TxQueryRunner;
import dao.CustomerDao;
import domain.Customer;
import org.apache.commons.dbutils.QueryRunner;

public class Demo
{
    QueryRunner qr = new TxQueryRunner();
    public static void main(String[] args)
    {
        CustomerDao customerDao=new CustomerDao();

        for (int i=0;i<1000;i++)
        {
            Customer customer=new Customer();
            customer.setId(CommonUtils.uuid());
            customer.setName("customer"+i);
            customer.setGender(i%2==0?"male":"female");
            customer.setPhone("647"+i);
            customer.setEmail("customer"+i+"@hotmail.com");
            customer.setDescription("hello world");

            customerDao.add(customer);
        }
    }
}
