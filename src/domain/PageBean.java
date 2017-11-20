package domain;


import java.util.List;

public class PageBean<Object>{
    private int pc;
    private int tr;
    private int pr;
    private List<Object> beanList;
    private String url;

    public PageBean() {
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getPc() {
        return this.pc;
    }

    public void setPc(int pc) {
        this.pc = pc;
    }

    public int getTp() {
        int tp = this.tr / this.pr;
        return this.tr % this.pr == 0 ? tp : tp + 1;
    }

    public int getTr() {
        return this.tr;
    }

    public void setTr(int tr) {
        this.tr = tr;
    }

    public int getPr() {
        return this.pr;
    }

    public void setPr(int pr) {
        this.pr = pr;
    }

    public List<Object> getBeanList() {
        return this.beanList;
    }

    public void setBeanList(List<Object> beanList) {
        this.beanList = beanList;
    }
}

