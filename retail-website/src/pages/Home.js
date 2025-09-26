// src/pages/Home.js
import Header from "../components/Header";
import BannerCarousel from "../components/BannerCarousel";
import Footer from "../components/Footer";
import CategorySection from "../components/CategorySection";
import p1 from "../assets/banner/p1.png";
import p2 from "../assets/banner/p2.jpg";
import p3 from "../assets/banner/p3.avif"

export default function Home() {
  const topDeals = [
    { title: "OnePlus Nord CE4 Lite", price: 16694, image: p1 },
    { title: "Apple MacBook Air M4", price: 97469.17, image: p2 },
    { title: "Product 3", price: 3999, image: "https://via.placeholder.com/300" },
    { title: "Product 4", price: 4999, image: "https://via.placeholder.com/300" },
     { title: "Product 5", price: 3999, image: "https://via.placeholder.com/300" },
    { title: "Product 6", price: 4999, image: "https://via.placeholder.com/300" },
     
  ];
  const bestSellers = [
    { title: "PUMA Active Girls T-Shirt in Black size 11-12Y", price: 799, image: p3 },
    { title: "Product 2", price: 2999, image: "https://via.placeholder.com/300" },
    { title: "Product 3", price: 3999, image: "https://via.placeholder.com/300" },
    { title: "Product 4", price: 4999, image: "https://via.placeholder.com/300" },
     { title: "Product 5", price: 3999, image: "https://via.placeholder.com/300" },
    { title: "Product 6", price: 4999, image: "https://via.placeholder.com/300" },
     
  ];
  const newArrivals = [
    { title: "OnePlus Nord CE4 Lite", price: 16694, image: p1 },
    { title: "Product 2", price: 2999, image: "https://via.placeholder.com/300" },
    { title: "Product 3", price: 3999, image: "https://via.placeholder.com/300" },
    { title: "Product 4", price: 4999, image: "https://via.placeholder.com/300" },
     { title: "Product 5", price: 3999, image: "https://via.placeholder.com/300" },
    { title: "Product 6", price: 4999, image: "https://via.placeholder.com/300" },
     
  ];

  return (
    <div>
      <Header />

      {/* Hero Section */}
      <section className="relative bg-gradient-to-r from-blue-50 to-blue-100 text-center py-20">
        <h1 className="text-4xl md:text-5xl font-bold text-gray-800 mb-4">
          Big Festive Sale is Here!
        </h1>
        <p className="text-lg text-gray-600 mb-6">
          Get up to 70% off on top brands across categories
        </p>
        <button className="px-8 py-3 bg-blue-600 text-white font-semibold rounded-xl shadow hover:bg-blue-700">
          Shop Now
        </button>
      </section>

      {/* Banner Carousel */}
      <BannerCarousel />

      {/* Categories / Product Sections */}
      <CategorySection title="Top Deals" products={topDeals} />
      <CategorySection title="Best Sellers" products={bestSellers} />
      <CategorySection title="New Arrivals" products={newArrivals} />

      <Footer />
    </div>
  );
}
