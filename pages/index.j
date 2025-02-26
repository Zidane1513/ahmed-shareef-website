// pages/index.js - Simplified version
import Head from 'next/head';
import Link from 'next/link';

export default function Home() {
  return (
    <div className="min-h-screen bg-gray-900 text-white">
      <Head>
        <title>Ahmed Shareef Phone Repair</title>
        <meta name="description" content="Professional phone repair services in Sharjah." />
      </Head>

      <main className="container mx-auto px-4 py-24">
        <h1 className="text-4xl font-bold mb-4">Ahmed Shareef Phone Repair</h1>
        <p className="text-xl mb-8">Professional phone repair services in Sharjah.</p>
        
        <div className="mt-8">
          <Link href="/contact" className="bg-indigo-600 text-white font-bold px-8 py-4 rounded-lg">
            Contact Us
          </Link>
        </div>
      </main>
    </div>
  );
}
