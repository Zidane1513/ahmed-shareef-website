// File: components/Navbar.js
import { useState, useEffect } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/router';

export default function Navbar() {
  const [isOpen, setIsOpen] = useState(false);
  const [isScrolled, setIsScrolled] = useState(false);
  const router = useRouter();

  useEffect(() => {
    const handleScroll = () => {
      setIsScrolled(window.scrollY > 10);
    };
    
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  return (
    <nav className={`fixed top-0 left-0 right-0 z-50 transition-all duration-300 ${isScrolled ? 'bg-gray-900 shadow-lg py-2' : 'bg-transparent py-4'}`}>
      <div className="container mx-auto px-4">
        <div className="flex justify-between items-center">
          <Link href="/" className="flex items-center">
            <span className="text-2xl font-bold text-white">
              Ahmed <span className="text-indigo-400">Shareef</span>
            </span>
          </Link>
          
          <div className="hidden md:flex items-center space-x-8">
            <Link href="/" className={`font-medium hover:text-indigo-400 transition ${router.pathname === '/' ? 'text-indigo-400' : 'text-white'}`}>
              Home
            </Link>
            <Link href="/services" className={`font-medium hover:text-indigo-400 transition ${router.pathname === '/services' ? 'text-indigo-400' : 'text-white'}`}>
              Services
            </Link>
            <Link href="/about" className={`font-medium hover:text-indigo-400 transition ${router.pathname === '/about' ? 'text-indigo-400' : 'text-white'}`}>
              About
            </Link>
            <Link href="/shop" className={`font-medium hover:text-indigo-400 transition ${router.pathname === '/shop' ? 'text-indigo-400' : 'text-white'}`}>
              Shop
            </Link>
            <Link href="/contact" className={`font-medium hover:text-indigo-400 transition ${router.pathname === '/contact' ? 'text-indigo-400' : 'text-white'}`}>
              Contact
            </Link>
            <Link href="/blog" className={`font-medium hover:text-indigo-400 transition ${router.pathname === '/blog' ? 'text-indigo-400' : 'text-white'}`}>
              Blog
            </Link>
            <Link href="/booking" className="bg-indigo-600 text-white font-medium py-2 px-4 rounded-lg hover:bg-indigo-700 transition transform hover:-translate-y-1">
              Book Now
            </Link>
          </div>
          
          <button 
            className="md:hidden text-3xl"
            onClick={() => setIsOpen(!isOpen)}
          >
            <span className="text-white">
              {isOpen ? '×' : '☰'}
            </span>
          </button>
        </div>
        
        {/* Mobile Menu */}
        {isOpen && (
          <div className="md:hidden bg-gray-800 mt-4 p-4 rounded-lg shadow-lg border border-gray-700">
            <div className="flex flex-col space-y-4">
              <Link href="/" className={`font-medium ${router.pathname === '/' ? 'text-indigo-400' : 'text-white'}`}>
                Home
              </Link>
              <Link href="/services" className={`font-medium ${router.pathname === '/services' ? 'text-indigo-400' : 'text-white'}`}>
                Services
              </Link>
              <Link href="/about" className={`font-medium ${router.pathname === '/about' ? 'text-indigo-400' : 'text-white'}`}>
                About
              </Link>
              <Link href="/shop" className={`font-medium ${router.pathname === '/shop' ? 'text-indigo-400' : 'text-white'}`}>
                Shop
              </Link>
              <Link href="/contact" className={`font-medium ${router.pathname === '/contact' ? 'text-indigo-400' : 'text-white'}`}>
                Contact
              </Link>
              <Link href="/blog" className={`font-medium ${router.pathname === '/blog' ? 'text-indigo-400' : 'text-white'}`}>
                Blog
              </Link>
              <Link href="/booking" className="bg-indigo-600 text-white font-medium py-2 px-4 rounded-lg text-center hover:bg-indigo-700 transition">
                Book Now
              </Link>
            </div>
          </div>
        )}
      </div>
    </nav>
  );
}
