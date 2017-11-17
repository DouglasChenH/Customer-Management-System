package domain;

import java.util.List;


public class PageBean<Object>
{
    private int pc;//current page code
    //private int tp;//total pages
    private int tr;//tatal records
    private int pr;//page records( records per page)
    private List<Object> beanList;//current page record
    private String url;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getPc() {
        return pc;
    }

    public void setPc(int pc) {
        this.pc = pc;
    }

    public int getTp()
    {
        int tp=tr/pr;
        return tr % pr == 0 ? tp : tp + 1 ;
    }



    public int getTr() {
        return tr;
    }

    public void setTr(int tr) {
        this.tr = tr;
    }

    public int getPr() {
        return pr;
    }

    public void setPr(int pr) {
        this.pr = pr;
    }

    public List<Object> getBeanList() {
        return beanList;
    }

    public void setBeanList(List<Object> beanList) {
        this.beanList = beanList;
    }
}
