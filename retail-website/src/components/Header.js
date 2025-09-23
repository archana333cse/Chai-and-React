// src/components/Header.js
import { Link } from "react-router-dom";
import { ShoppingCart, Heart, User, Search } from "lucide-react";
import { useState } from "react";

export default function Header() {
  const [showMenu, setShowMenu] = useState(false);

  return (
    <header className="bg-white shadow-md sticky top-0 z-50">
      <div className="container mx-auto px-4 py-3 flex items-center justify-between">
        
        {/* Logo */}
        <Link to="/" className="text-2xl font-bold text-blue-600 flex items-center gap-2">
          🛍️ MyRetail
        </Link>

        {/* Search Bar */}
        <div className="hidden md:flex flex-1 mx-6">
          <input
            type="text"
            placeholder="Search for products, brands and more"
            className="w-full px-4 py-2 rounded-l-full border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500"
          />
          <button className="bg-blue-600 text-white px-4 rounded-r-full hover:bg-blue-700">
            <Search size={20} />
          </button>
        </div>

        {/* Nav + Icons */}
        <div className="flex items-center gap-6">
          <nav className="hidden md:flex gap-6 text-gray-700 font-medium">
            <Link to="/" className="hover:text-blue-600">Home</Link>
          {/*   <Link to="/about" className="hover:text-blue-600">About</Link> */}
          {/*   <Link to="/contact" className="hover:text-blue-600">Contact</Link> */}
          </nav>

          {/* Wishlist + Cart */}
          <div className="flex items-center gap-4 text-gray-700">
            <Link to="/wishlist" className="hover:text-blue-600">
              <Heart size={22} />
            </Link>
            <Link to="/cart" className="hover:text-blue-600">
              <ShoppingCart size={22} />
            </Link>

            {/* Login / Signup Dropdown */}
            <div className="relative">
              <button
                onClick={() => setShowMenu(!showMenu)}
                className="flex items-center gap-1 hover:text-blue-600"
              >
                <User size={22} />
                <span className="hidden md:inline">Login</span>
              </button>

              {showMenu && (
                <div className="absolute right-0 mt-2 w-48 bg-white shadow-lg rounded-lg overflow-hidden border border-gray-200 z-50">
                  <Link
                    to="/login"
                    className="block px-4 py-2 text-sm hover:bg-gray-100"
                  >
                    Login
                  </Link>
                  <Link
                    to="/signup"
                    className="block px-4 py-2 text-sm hover:bg-gray-100"
                  >
                    Sign Up
                  </Link>
                  <Link
                    to="/guest"
                    className="block px-4 py-2 text-sm hover:bg-gray-100"
                  >
                    Continue as Guest
                  </Link>
                </div>
              )}
            </div>
          </div>
        </div>
      </div>

      {/* Mobile Search */}
      <div className="flex md:hidden px-4 pb-3">
        <input
          type="text"
          placeholder="Search products..."
          className="w-full px-4 py-2 rounded-l-full border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500"
        />
        <button className="bg-blue-600 text-white px-4 rounded-r-full hover:bg-blue-700">
          <Search size={20} />
        </button>
      </div>
    </header>
  );
}
