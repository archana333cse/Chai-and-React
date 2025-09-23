// src/components/CategorySection.js
import ProductCard from "./ProductCard";

export default function CategorySection({ title, products }) {
  return (
    <section className="py-10 px-8">
      <h2 className="text-2xl font-bold mb-4">{title}</h2>
      <div className="flex space-x-4 overflow-x-auto scrollbar-none">
        {products.map((p, index) => (
          <ProductCard
            key={index}
            title={p.title}
            price={p.price}
            image={p.image}
          />
        ))}
      </div>
    </section>
  );
}
