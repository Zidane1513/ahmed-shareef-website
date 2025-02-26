import Head from 'next/head';
import Link from 'next/link';
import { useState } from 'react';

// Components
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import ServiceCard from '../components/ServiceCard';
import TestimonialCard from '../components/TestimonialCard';
import BookingModal from '../components/BookingModal';

export default function Home() {
  const [isBookingOpen, setIsBookingOpen] = useState(false);
  
  const services = [
    {
      id: 1,
      title: 'Screen Replacement',
      description: 'Professional screen replacement for all phone models with genuine parts and warranty.',
      icon: 'phone',
      price: 'From $49.99',
      turnaround: '1-2 hours',
    },
    {
      id: 2,
      title: 'Battery Replacement',
      description: 'Restore your phone's battery life with our high-quality replacement batteries.',
      icon: 'battery-full',
      price: 'From $39.99',
      turnaround: '30-60 minutes',
    },
    {
      id: 3,
      title: 'Water Damage Repair',
      description: 'Specialized treatment to rescue water-damaged phones and recover your data.',
      icon: 'droplet',
      price: 'From $89.99',
      turnaround: '24-48 hours',
    },
    {
      id: 4,
      title: 'Software Issues',
      description: 'Troubleshooting and fixing software problems, including system updates and data recovery.',
      icon: 'settings',
      price: 'From $29.99',
      turnaround: '1 hour',
    },
  ];

  const testimonials = [
    {
      id: 1,
      name: 'Sarah Johnson',
      photo: '/testimonial1.jpg',
      text: 'They fixed my iPhone screen in under an hour! Great service and reasonable prices.',
      rating: 5,
    },
    {
      id: 2,
      name: 'Michael Chen',
      photo: '/testimonial2.jpg',
      text: 'My Samsung had water damage and I thought I lost all my photos. The team recovered everything!',
      rating: 5,
    },
    {
      id: 3,
      name: 'Emma Rodriguez',
      photo: '/testimonial3.jpg',
      text: 'Professional, fast, and friendly. They even gave me tips on how to protect my phone in the future.',
      rating: 4,
    },
  ];

  return (
    <div className="min-h-screen bg-gray-900 text-white">
      <Head>
        <title>Ahmed Shareef Phone Repair | Professional Phone Repair Services</title>
        <meta name="description" content="Professional phone repair services with same-day repairs, genuine parts, and warranty in Sharjah." />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <Navbar />

      {/* Hero Section */}
      <section className="relative bg-gradient-to-r from-indigo-900 to-blue-900 text-white">
        <div className="absolute inset-0 bg-cover bg-center opacity-10" style={{ backgroundImage: "url('/hero-bg.jpg')" }}></div>
        <div className="container mx-auto px-4 py-24 relative z-10">
          <div className="flex flex-col md:flex-row items-center">
            <div className="md:w-1/2 mb-10 md:mb-0">
              <h1 className="text-4xl md:text-6xl font-bold mb-4 leading-tight">Expert Phone Repairs <br /><span className="text-indigo-400">While You Wait</span></h1>
              <p className="text-xl mb-8 text-gray-300">Professional repairs for all phone models with genuine parts and warranty in Sharjah.</p>
              <div className="flex flex-col sm:flex-row gap-4">
                <button 
                  onClick={() => setIsBookingOpen(true)}
                  className="bg-indigo-600 text-white font-bold px-8 py-4 rounded-lg hover:bg-indigo-700 transition duration-300 transform hover:-translate-y-1"
                >
                  Book a Repair
                </button>
                <Link href="/services">
                  <a className="border-2 border-indigo-400 text-indigo-400 font-bold px-8 py-4 rounded-lg hover:bg-indigo-400 hover:text-white transition duration-300 text-center transform hover:-translate-y-1">
                    Our Services
                  </a>
                </Link>
              </div>
            </div>
            <div className="md:w-1/2">
              <div className="relative">
                <div className="absolute inset-0 bg-gradient-to-br from-indigo-500 to-blue-600 rounded-lg opacity-30 blur-xl"></div>
                <img 
                  src="/phone-repair.jpg" 
                  alt="Phone repair technician" 
                  className="rounded-lg shadow-2xl mx-auto relative z-10 border border-indigo-800"
                />
                <div className="absolute -bottom-6 -left-6 bg-gray-900 text-indigo-400 rounded-lg p-4 shadow-xl border border-indigo-800">
                  <p className="font-bold">Most repairs completed in under 1 hour!</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Rest of the code omitted for brevity */}
      
      {/* Booking Modal */}
      <BookingModal isOpen={isBookingOpen} onClose={() => setIsBookingOpen(false)} />

      <Footer />
    </div>
  );
}
