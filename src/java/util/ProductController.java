package util;

import java.util.ArrayList;
import java.util.List;

public class ProductController {
    public List<Product> getMenProducts() {
        List<Product> products = new ArrayList<>();
        products.add(new Product("img1.jpg", "Black Chronograph", "PKR 14,999", 
                "A sleek and stylish watch perfect for formal occasions. Its polished black finish makes it an ideal choice for professionals. Designed with precision for lasting performance.", "★★★★☆"));
        products.add(new Product("img2.jpeg", "Classic Blue Dial", "PKR 13,499", 
                "Classic blue dial watch with a durable leather strap. Combines timeless aesthetics with rugged durability. Suitable for both casual and formal settings.", "★★★★★"));
        products.add(new Product("img3.jpeg", "Golden Mesh Strap", "PKR 8,999", 
                "Elegant golden mesh strap with a minimalist dial. Lightweight design ensures comfort throughout the day. Perfect for adding a touch of class to your outfit.", "★★★★☆"));
        products.add(new Product("img4.jpeg", "Luxury Silver Dial", "PKR 7,499", 
                "Sophisticated silver dial watch with a stainless steel band. The sleek design is versatile and ideal for every occasion. Crafted with durable materials for longevity.", "★★★★☆"));
        products.add(new Product("img5.jpeg", "Golden Classic", "PKR 14,999", 
                "Classic golden watch, perfect for formal or casual wear. A versatile timepiece that combines style with practicality. An elegant addition to any wardrobe.", "★★★★★"));
        products.add(new Product("img6.jpeg", "Elegant CK Leather", "PKR 13,499", 
                "Stylish leather band watch with a timeless design. Offers exceptional comfort with a luxurious feel. A must-have accessory for those who value elegance.", "★★★★☆"));
        products.add(new Product("img7.jpg", "Blue Dive Watch", "PKR 11,999", 
                "Water-resistant watch designed for underwater adventures. Built to withstand tough conditions with superior functionality. A bold and sporty design for active lifestyles.", "★★★★☆"));
        products.add(new Product("img8.jpeg", "Futuristic Blue Digital", "PKR 7,499", 
                "Modern digital watch with advanced functionality. The futuristic design stands out with a vibrant look. Ideal for tech enthusiasts and everyday use.", "★★★☆☆"));
        products.add(new Product("img9.jpeg", "Matte Sports Watch", "PKR 10,499", 
                "Rugged and durable matte black design for active lifestyles. Engineered to handle tough environments with ease. A great companion for outdoor enthusiasts.", "★★★★★"));
        products.add(new Product("img10.jpeg", "The Skeleton Dial", "PKR 17,999", 
                "Exquisite skeleton dial showcasing intricate watch mechanics. A true marvel of craftsmanship and design. Perfect for those who appreciate fine detailing.", "★★★★★"));
        return products;
    }

    public List<Product> getWomenProducts() {
        List<Product> products = new ArrayList<>();
        products.add(new Product("G10.jpeg", "Elegant Black Leather", "PKR 14,999", 
                "Timeless black leather watch for modern women. Offers a perfect blend of simplicity and sophistication. Complements both casual and formal wear effortlessly.", "★★★★☆"));
        products.add(new Product("G9.jpeg", "Classic Rose Gold", "PKR 13,499", 
                "Beautiful rose gold design for everyday elegance. Adds a subtle yet striking touch to your outfit. Perfect for both day-to-day use and special occasions.", "★★★★★"));
        products.add(new Product("G3.jpeg", "Silver-Toned Bracelet", "PKR 8,999", 
                "Shiny silver bracelet watch for a classy look. Designed to enhance your style with its minimalistic charm. Durable and suitable for regular use.", "★★★☆☆"));
        products.add(new Product("G4.jpeg", "Minimalist Black Dial", "PKR 7,499", 
                "Modern minimalist design with a soft leather strap. Combines simplicity with comfort and style. Perfect for women who prefer an understated look.", "★★★★☆"));
        products.add(new Product("G5.jpeg", "Ruby Red Glamour", "PKR 14,999", 
                "Eye-catching ruby red dial watch for special occasions. The vibrant color adds a bold statement to your look. Ideal for evening wear and celebrations.", "★★★★★"));
        products.add(new Product("G6.jpeg", "Midnight Star", "PKR 13,499", 
                "Elegant midnight black design with crystal accents. The sparkling crystals add a touch of luxury to the watch. A great choice for formal gatherings.", "★★★★☆"));
        products.add(new Product("G1.jpeg", "Crystal Accent Silver", "PKR 11,999", 
                "Silver-toned watch with sparkling crystal embellishments. A perfect accessory for enhancing your outfit. Suitable for both formal and casual occasions.", "★★★★★"));
        products.add(new Product("G8.jpeg", "Rose Quartz Dial", "PKR 10,499", 
                "Soft pink rose quartz-inspired dial with a delicate strap. Exudes charm and grace for everyday wear. A must-have for women who value elegance.", "★★★★☆"));
        products.add(new Product("G7.jpeg", "Golden Glamour", "PKR 13,499", 
                "Sophisticated golden-toned watch for evening wear. Enhances your look with its sleek and elegant design. A timeless piece for all occasions.", "★★★★☆"));
        products.add(new Product("G11.jpeg", "Vintage Floral Design", "PKR 8,999", 
                "Charming vintage-inspired floral watch with intricate details. Combines artistic beauty with functional design. A lovely gift for someone special.", "★★★☆☆"));
        return products;
    }
}
