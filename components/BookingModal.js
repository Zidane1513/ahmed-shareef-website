import { useState } from 'react';

export default function BookingModal({ isOpen, onClose }) {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    phone: '',
    device: '',
    issue: '',
    preferredDate: '',
    preferredTime: '',
  });
  
  const [isSubmitted, setIsSubmitted] = useState(false);
  
  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({ ...prev, [name]: value }));
  };
  
  const handleSubmit = (e) => {
    e.preventDefault();
    // Here you would typically send the form data to your backend
    console.log('Form submitted:', formData);
    setIsSubmitted(true);
    
    // Reset form after 3 seconds and close modal
    setTimeout(() => {
      setIsSubmitted(false);
      setFormData({
        name: '',
        email: '',
        phone: '',
        device: '',
        issue: '',
        preferredDate: '',
        preferredTime: '',
      });
      onClose();
    }, 3000);
  };
  
  if (!isOpen) return null;
  
  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
      <div className="fixed inset-0 bg-black bg-opacity-70" onClick={onClose}></div>
      
      <div className="bg-gray-900 rounded-xl shadow-2xl w-full max-w-md relative z-10 border border-gray-800">
        <div className="px-6 py-4 border-b border-gray-800 flex justify-between items-center">
          <h3 className="text-xl font-bold text-white">Book a Repair</h3>
          <button 
            onClick={onClose}
            className="text-gray-400 hover:text-white"
          >
            <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M6 18L18 6M6 6l12 12"></path>
            </svg>
          </button>
        </div>
        
        <div className="p-6">
          {isSubmitted ? (
            <div className="text-center py-8">
              <svg className="w-16 h-16 text-green-500 mx-auto mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
              </svg>
              <h4 className="text-xl font-bold text-white mb-2">Booking Successful!</h4>
              <p className="text-gray-300">We'll contact you shortly to confirm your appointment.</p>
            </div>
          ) : (
            <form onSubmit={handleSubmit}>
              <div className="space-y-4">
                <div>
                  <label className="block text-gray-300 mb-1" htmlFor="name">Full Name</label>
                  <input 
                    type="text" 
                    id="name" 
                    name="name" 
                    value={formData.name} 
                    onChange={handleChange} 
                    required
                    className="w-full bg-gray-800 border border-gray-700 rounded-lg px-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-indigo-600"
                  />
                </div>
                
                <div>
                  <label className="block text-gray-300 mb-1" htmlFor="email">Email</label>
                  <input 
                    type="email" 
                    id="email" 
                    name="email" 
                    value={formData.email} 
                    onChange={handleChange} 
                    required
                    className="w-full bg-gray-800 border border-gray-700 rounded-lg px-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-indigo-600"
                  />
                </div>
                
                <div>
                  <label className="block text-gray-300 mb-1" htmlFor="phone">Phone Number</label>
                  <input 
                    type="tel" 
                    id="phone" 
                    name="phone" 
                    value={formData.phone} 
                    onChange={handleChange} 
                    required
                    className="w-full bg-gray-800 border border-gray-700 rounded-lg px-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-indigo-600"
                  />
                </div>
                
                <div>
                  <label className="block text-gray-300 mb-1" htmlFor="device">Device Model</label>
                  <input 
                    type="text" 
                    id="device" 
                    name="device" 
                    value={formData.device} 
                    onChange={handleChange} 
                    required
                    placeholder="e.g. iPhone 13 Pro, Samsung Galaxy S21"
                    className="w-full bg-gray-800 border border-gray-700 rounded-lg px-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-indigo-600"
                  />
                </div>
                
                <div>
                  <label className="block text-gray-300 mb-1" htmlFor="issue">Describe the Issue</label>
                  <textarea 
                    id="issue" 
                    name="issue" 
                    value={formData.issue} 
                    onChange={handleChange} 
                    required
                    rows="3"
                    className="w-full bg-gray-800 border border-gray-700 rounded-lg px-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-indigo-600"
                  ></textarea>
                </div>
                
                <div className="grid grid-cols-2 gap-4">
                  <div>
                    <label className="block text-gray-300 mb-1" htmlFor="preferredDate">Preferred Date</label>
                    <input 
                      type="date" 
                      id="preferredDate" 
                      name="preferredDate" 
                      value={formData.preferredDate} 
                      onChange={handleChange} 
                      required
                      className="w-full bg-gray-800 border border-gray-700 rounded-lg px-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-indigo-600"
                    />
                  </div>
                  
                  <div>
                    <label className="block text-gray-300 mb-1" htmlFor="preferredTime">Preferred Time</label>
                    <select 
                      id="preferredTime" 
                      name="preferredTime" 
                      value={formData.preferredTime} 
                      onChange={handleChange} 
                      required
                      className="w-full bg-gray-800 border border-gray-700 rounded-lg px-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-indigo-600"
                    >
                      <option value="">Select a time</option>
                      <option value="morning">Morning (10:30AM - 2PM)</option>
                      <option value="afternoon">Afternoon (2PM - 7PM)</option>
                      <option value="evening">Evening (7PM - 12AM)</option>
                    </select>
                  </div>
                </div>
              </div>
              
              <div className="mt-6">
                <button 
                  type="submit" 
                  className="w-full bg-indigo-600 text-white font-bold py-3 px-4 rounded-lg hover:bg-indigo-700 transition-colors duration-300"
                >
                  Book Appointment
                </button>
              </div>
            </form>
          )}
        </div>
      </div>
    </div>
  );
}
