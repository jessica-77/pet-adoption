document.addEventListener('DOMContentLoaded', function() {
    const amountInput = document.getElementById('donation-amount');
    const tierRadios = document.querySelectorAll('input[name="donation-tier"]');
    
    // Auto-format the input with 2 decimal places
    amountInput.addEventListener('blur', function() {
        if (this.value && this.value !== '') {
            this.value = parseFloat(this.value).toFixed(2);
        }
    });
    
    // Prevent more than 2 decimal places
    amountInput.addEventListener('input', function(e) {
        // Select custom tier when typing
        const customRadio = document.querySelector('input[value="custom"]');
        customRadio.checked = true;
        
        // Limit to 2 decimal places
        if (this.value.includes('.')) {
            const parts = this.value.split('.');
            if (parts[1].length > 2) {
                this.value = parts[0] + '.' + parts[1].substring(0, 2);
            }
        }
    });
    
    // When a tier is selected (except custom), update the amount
    tierRadios.forEach(radio => {
        radio.addEventListener('change', function() {
            if (this.value !== 'custom') {
                amountInput.value = parseFloat(this.value).toFixed(2);
            } else {
                amountInput.value = '';
                amountInput.focus();
            }
        });
    });
});

document.querySelectorAll('.faq-question').forEach(question => {
    question.addEventListener('click', () => {
        const answer = question.nextElementSibling;
        const isActive = question.classList.contains('active');
        
        // Close all answers first
        document.querySelectorAll('.faq-answer').forEach(item => {
            item.style.maxHeight = null;
        });
        document.querySelectorAll('.faq-question').forEach(item => {
            item.classList.remove('active');
        });
        
        // Open current if it wasn't active
        if (!isActive) {
            question.classList.add('active');
            answer.style.maxHeight = answer.scrollHeight + 'px';
        }
    });
});