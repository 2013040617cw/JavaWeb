package nuc.ss.beantest;

public class Book {
    private String b_name;
    private String b_author;
    private  String b_publisher;
    private float b_price;
    private int b_quantity;

    public String getB_name() {
        return b_name;
    }

    public void setB_name(String b_name) {
        this.b_name = b_name;
    }

    public String getB_author() {
        return b_author;
    }

    public void setB_author(String b_author) {
        this.b_author = b_author;
    }

    public String getB_publisher() {
        return b_publisher;
    }

    public void setB_publisher(String b_publisher) {
        this.b_publisher = b_publisher;
    }

    public float getB_price() {
        return b_price;
    }

    public void setB_price(float b_price) {
        this.b_price = b_price;
    }

    public int getB_quantity() {
        return b_quantity;
    }

    public void setB_quantity(int b_quantity) {
        this.b_quantity = b_quantity;
    }

    @Override
    public String toString() {
        return "Book{" +
                "b_name='" + b_name + '\'' +
                ", b_author='" + b_author + '\'' +
                ", b_publisher='" + b_publisher + '\'' +
                ", b_price=" + b_price +
                ", b_quantity=" + b_quantity +
                '}';
    }
}
