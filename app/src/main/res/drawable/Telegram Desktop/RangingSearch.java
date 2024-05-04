import java.util.Arrays;
import java.util.List;

public class RangingSearch {
    public static void main(String[] args) {

    }
}

class ProductPost {
    private String name;
    private String description;
    private double score;

    public ProductPost(String name, String description, double score) {
        this.name = name;
        this.description = description;
        this.score = score;
    }

    @Override
    public String toString() {
        return "ProductPost{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", score=" + score +
                '}';
    }
}

class Dataset {
    final static List<ProductPost> productList = Arrays.asList(
            new ProductPost("Leather Handbag",
                    "The premium leather handbag with multiple compartments for all your essentials.", 8.5),
            new ProductPost("Memory Foam Mattress",
                    "Experience the ultimate comfort with our memory foam mattress, designed for a restful sleep.",
                    9.2),
            new ProductPost("Professional DSLR Camera",
                    "Get the perfect shot every time with our professional DSLR camera, equipped with advanced features.",
                    9.8),
            new ProductPost("Spa Bathrobe",
                    "Soothe tired muscles and relax after a long day with our luxurious spa bathrobe.", 8.0),
            new ProductPost("Portable Tablet",
                    "Stay connected on-the-go with our lightweight and portable tablet, perfect for work or entertainment.",
                    9.5),
            new ProductPost("Stainless Steel Cookware Set",
                    "Elevate your culinary skills with our chef-grade stainless steel cookware set.", 9.3),
            new ProductPost("Bestselling Novels Collection",
                    "Discover the joy of reading with our curated selection of bestselling novels and classics.", 8.7),
            new ProductPost("Versatile Backpack",
                    "Stay organized on-the-go with our versatile and spacious backpack, perfect for everyday use.",
                    8.9),
            new ProductPost("High-Definition Smart TV",
                    "Enhance your home entertainment experience with our high-definition smart TV with built-in streaming apps.",
                    9.6),
            new ProductPost("Sleek Phone Cases",
                    "Protect your devices in style with our sleek and durable phone cases, available in various designs.",
                    8.2),
            new ProductPost("Professional Hair Styling Tools",
                    "Achieve salon-quality hair at home with our professional-grade hair styling tools.", 9.4),
            new ProductPost("Rugged Camping Gear",
                    "Explore the great outdoors with our rugged and reliable camping gear.",
                    8.8),
            new ProductPost("Scented Candles Collection",
                    "Create a cozy atmosphere with our scented candles, available in a variety of refreshing fragrances.",
                    7.9),
            new ProductPost("Insulated Water Bottle",
                    "Stay hydrated throughout the day with our insulated stainless steel water bottle.", 9.1),
            new ProductPost("Compact Digital Camera",
                    "Capture precious moments with our compact and easy-to-use digital camera.", 8.6),
            new ProductPost("High-Performance Gaming Laptop",
                    "Experience the thrill of gaming with our high-performance gaming laptop, designed for hardcore gamers.",
                    9.9),
            new ProductPost("Minimalist Desk Organizers",
                    "Keep your workspace clutter-free with our minimalist desk organizers.", 8.3),
            new ProductPost("Luxurious Spa Bathrobe",
                    "Soothe tired muscles and relax after a long day with our luxurious spa bathrobe.", 8.0),
            new ProductPost("Portable Tablet",
                    "Stay connected on-the-go with our lightweight and portable tablet, perfect for work or entertainment.",
                    9.5),
            new ProductPost("Eco-Friendly Workout Gear",
                    "Stay active and stylish with our range of eco-friendly and breathable workout gear.", 8.4),
            new ProductPost("Luxury Skincare Products",
                    "Indulge in luxury skincare products crafted from natural ingredients for radiant skin.", 9.7),
            new ProductPost("Scandinavian-style Furniture Collection",
                    "Transform your living space with our modern Scandinavian-style furniture collection.", 8.5),
            new ProductPost("Smartphone with Advanced Features",
                    "Stay connected and productive with our smartphone equipped with advanced features.", 9.2),
            new ProductPost("Wireless Earbuds",
                    "Enjoy crystal-clear sound and seamless connectivity with our wireless earbuds.", 8.9),
            new ProductPost("Designer Watches Collection",
                    "Elevate your style with our designer watches collection, crafted with precision and elegance.",
                    8.7),
            new ProductPost("Portable Bluetooth Speaker",
                    "Take your music anywhere with our portable Bluetooth speaker, delivering rich and immersive sound.",
                    9.3),
            new ProductPost("Outdoor Adventure Backpack",
                    "Embark on thrilling adventures with our outdoor adventure backpack, designed for durability and comfort.",
                    6.4),
            new ProductPost("Classic Leather Wallet",
                    "Crafted from premium leather, our classic wallet offers timeless style and practicality.", 8.7),
            new ProductPost("Luxury Silk Pillowcase",
                    "Experience luxurious comfort with our silk pillowcase, designed for a restful night's sleep.",
                    9.4),
            new ProductPost("Advanced Mirrorless Camera",
                    "Capture stunning images with our advanced mirrorless camera, featuring cutting-edge technology.",
                    9.8),
            new ProductPost("Plush Spa Towel Set",
                    "Wrap yourself in luxury with our plush spa towel set, perfect for pampering yourself at home.",
                    8.9),
            new ProductPost("Portable Bluetooth Headphones",
                    "Enjoy wireless freedom and immersive sound with our portable Bluetooth headphones.", 9.2),
            new ProductPost("Gourmet Cooking Class",
                    "Master the art of gourmet cooking with our hands-on cooking class led by expert chefs.", 8.6),
            new ProductPost("Designer Sunglasses Collection",
                    "Elevate your style with our designer sunglasses collection, crafted for both fashion and function.",
                    9.1),
            new ProductPost("Outdoor Adventure Backpack",
                    "Embark on thrilling outdoor adventures with our durable and spacious adventure backpack.", 9.5),
            new ProductPost("Professional Hair Dryer",
                    "Achieve salon-quality results at home with our professional-grade hair dryer, featuring advanced technology.",
                    8.8),
            new ProductPost("Organic Skincare Set",
                    "Nourish your skin with our organic skincare set, made from natural ingredients for a radiant complexion.",
                    9.3),
            new ProductPost("Stylish Laptop Sleeve",
                    "Protect your laptop in style with our sleek and durable laptop sleeve, designed for on-the-go professionals.",
                    8.4),
            new ProductPost("Smart Fitness Tracker",
                    "Track your fitness goals with our smart fitness tracker, equipped with advanced features for optimal performance.",
                    9.7),
            new ProductPost("Premium Quality Headphones",
                    "Immerse yourself in crystal-clear sound with our premium quality headphones, perfect for music lovers.",
                    8.5),
            new ProductPost("Luxury Bathrobe and Slipper Set",
                    "Indulge in spa-like luxury at home with our plush bathrobe and slipper set, crafted for ultimate relaxation.",
                    9.0),
            new ProductPost("Gourmet Chocolate Assortment",
                    "Satisfy your sweet cravings with our gourmet chocolate assortment, handcrafted with the finest ingredients.",
                    8.3),
            new ProductPost("Designer Leather Watch",
                    "Make a statement with our designer leather watch, combining style and sophistication.", 9.6),
            new ProductPost("Essential Oil Diffuser",
                    "Create a calming atmosphere with our essential oil diffuser, perfect for relaxation and meditation.",
                    8.2),
            new ProductPost("Premium Yoga Mat",
                    "Enhance your yoga practice with our premium quality yoga mat, offering superior comfort and stability.",
                    9.9),
            new ProductPost("Stylish Travel Backpack",
                    "Travel in style with our versatile and functional travel backpack, designed for frequent travelers.",
                    8.1),
            new ProductPost("Smart Home Security Camera",
                    "Keep your home safe and secure with our smart home security camera, featuring motion detection and night vision.",
                    9.8));
}
