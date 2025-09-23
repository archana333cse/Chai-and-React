// src/components/ProductCard.js
export default function ProductCard({ title, price, image }) {
  return (
    <div className="bg-white shadow rounded p-4 w-60">
      <img src={image} alt={title} className="w-full h-40 object-cover rounded" />
      <h2 className="mt-2 font-semibold">{title}</h2>
      <p className="text-gray-600">₹{price}</p>
      <button className="mt-2 w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">
        Buy Now
      </button>
    </div>
  );
}
