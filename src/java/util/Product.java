package util;

public class Product {
    private String imageUrl;
    private String name;
    private String price;
    private String summary;
    private String reviews; 
    

    public Product(String imageUrl, String name, String price, String summary, String reviews) {
        this.imageUrl = imageUrl;
        this.name = name;
        this.price = price;
        this.summary = summary;
        this.reviews = reviews;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getReviews() {
        return reviews;
    }

    public void setReviews(String reviews) {
        this.reviews = reviews;
    }
}
