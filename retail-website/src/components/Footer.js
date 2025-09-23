// src/components/Footer.js
export default function Footer() {
  return (
    <footer className="bg-gray-800 text-white p-6 mt-10 text-center">
      <p>&copy; {new Date().getFullYear()} My Retail Website. All rights reserved.</p>
      <p>
        <a href="#" className="underline">Privacy Policy</a> |{" "}
        <a href="#" className="underline">Terms & Conditions</a>
      </p>
    </footer>
  );
}
