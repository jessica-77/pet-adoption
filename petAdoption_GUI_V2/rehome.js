document.addEventListener('DOMContentLoaded', () => {
    const btn = document.getElementById('submit-btn');
    if (!btn) {
      console.error('Could not find #submit-btn in the page.');
      return;
    }
  
    btn.addEventListener('click', () => {
      // Redirect to the thank-you page
      window.location.href = 'thank_you_rehome.html';
    });
  });
  
