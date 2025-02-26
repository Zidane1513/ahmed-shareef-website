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
        <div className="container mx-auto px-4 py-24 relative z-10">
          <div className="flex flex-col md:flex-row items-center">
            <div className="md:w-1/2 mb-10 md:mb-0">
              <h1 className="text-4xl md:text-6xl font-bold mb-4 leading-tight">Expert Phone Repairs <br /><span className="text-indigo-400">While You Wait</span></h1>
              <p className="text-xl mb-8 text-gray-300">Professional repairs for all phone models with genuine parts and warranty in Sharjah.</p>
              <div className="flex flex-col sm:flex-row gap-4">
                <button 
                  onClick={() => setIsBookingOpen(true)}
                  className="bg-indigo-600 text-white font-bold px-8 py-4 rounded-lg hover:bg-indigo-700 transition duration-300"
                >
                  Book a Repair
                </button>
                <Link href="/services" className="border-2 border-indigo-400 text-indigo-400 font-bold px-8 py-4 rounded-lg hover:bg-indigo-400 hover:text-white transition duration-300 text-center">
                  Our Services
                </Link>
              </div>
            </div>
            <div className="md:w-1/2">
              <div className="relative">
                <div className="absolute inset-0 bg-gradient-to-br from-indigo-500 to-blue-600 rounded-lg opacity-30 blur-xl"></div>
                <div className="h-64 w-full bg-gray-800 rounded-lg shadow-2xl relative z-10 border border-indigo-800"></div>
                <div className="absolute -bottom-6 -left-6 bg-gray-900 text-indigo-400 rounded-lg p-4 shadow-xl border border-indigo-800">
                  <p className="font-bold">Most repairs completed in under 1 hour!</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Why Choose Us */}
      <section className="py-20 bg-gray-900">
        <div className="container mx-auto px-4">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-bold mb-2">Why Choose <span className="text-indigo-400">Ahmed Shareef</span>?</h2>
            <p className="text-gray-400 max-w-2xl mx-auto">We provide fast, reliable, and affordable phone repair services with a customer-first approach.</p>
          </div>
          
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
            <div className="bg-gradient-to-br from-gray-800 to-gray-900 p-6 rounded-xl text-center hover:shadow-xl transition duration-300 border border-gray-800">
              <div className="bg-indigo-900 w-16 h-16 mx-auto rounded-full flex items-center justify-center mb-4">
                <svg className="w-8 h-8 text-indigo-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                </svg>
              </div>
              <h3 className="font-bold text-xl mb-2">Same Day Service</h3>
              <p className="text-gray-400">Most repairs are completed while you wait or within the same day.</p>
            </div>
            
            <div className="bg-gradient-to-br from-gray-800 to-gray-900 p-6 rounded-xl text-center hover:shadow-xl transition duration-300 border border-gray-800">
              <div className="bg-indigo-900 w-16 h-16 mx-auto rounded-full flex items-center justify-center mb-4">
                <svg className="w-8 h-8 text-indigo-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path>
                </svg>
              </div>
              <h3 className="font-bold text-xl mb-2">Warranty Included</h3>
              <p className="text-gray-400">All our repairs come with a 90-day warranty for parts and service.</p>
            </div>
            
            <div className="bg-gradient-to-br from-gray-800 to-gray-900 p-6 rounded-xl text-center hover:shadow-xl transition duration-300 border border-gray-800">
              <div className="bg-indigo-900 w-16 h-16 mx-auto rounded-full flex items-center justify-center mb-4">
                <svg className="w-8 h-8 text-indigo-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                </svg>
              </div>
              <h3 className="font-bold text-xl mb-2">Expert Technicians</h3>
              <p className="text-gray-400">Our certified technicians have years of experience with all phone models.</p>
            </div>
            
            <div className="bg-gradient-to-br from-gray-800 to-gray-900 p-6 rounded-xl text-center hover:shadow-xl transition duration-300 border border-gray-800">
              <div className="bg-indigo-900 w-16 h-16 mx-auto rounded-full flex items-center justify-center mb-4">
                <svg className="w-8 h-8 text-indigo-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                </svg>
              </div>
              <h3 className="font-bold text-xl mb-2">Competitive Pricing</h3>
              <p className="text-gray-400">We offer the best value with transparent pricing and no hidden fees.</p>
            </div>
          </div>
        </div>
      </section>

      <Footer />
      
      {/* Booking Modal */}
      <BookingModal isOpen={isBookingOpen} onClose={() => setIsBookingOpen(false)} />
    </div>
  );
}
