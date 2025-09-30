
import ProductCard from "./ProductCard";

export default function CategorySection({ title, products }) {
  return (
    <section className="py-10 px-8">
      <h2 className="text-2xl font-bold mb-4">{title}</h2>
      <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-6">
        {products.map((p, index) => (
          <ProductCard
            key={`${title}-${index}`} 
            id={`${title}-${index}`}
            title={p.title}
            price={p.price}
            image={p.image}
          />
        ))}
      </div>
    </section>
  );
}
