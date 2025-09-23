// src/pages/Home.js
import Header from "../components/Header";
import BannerCarousel from "../components/BannerCarousel";
import Footer from "../components/Footer";
import CategorySection from "../components/CategorySection";

export default function Home() {
  const sampleProducts = [
    { title: "Product 1", price: 1999, image: "https://via.placeholder.com/300" },
    { title: "Product 2", price: 2999, image: "https://via.placeholder.com/300" },
    { title: "Product 3", price: 3999, image: "https://via.placeholder.com/300" },
    { title: "Product 4", price: 4999, image: "https://via.placeholder.com/300" },
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
      <CategorySection title="Top Deals" products={sampleProducts} />
      <CategorySection title="Best Sellers" products={sampleProducts} />
      <CategorySection title="New Arrivals" products={sampleProducts} />

      <Footer />
    </div>
  );
}
