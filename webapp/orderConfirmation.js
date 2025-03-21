document.addEventListener('DOMContentLoaded', () => {
    const bike = document.getElementById('bike');
    const confirmation = document.getElementById('confirmation');

    // Start the bike animation
    setTimeout(() => {
        bike.style.left = 'calc(100% + 50px)';
    }, 100);

    // Listen for the end of the bike animation
    bike.addEventListener('transitionend', () => {
        // Hide the bike
        bike.style.display = 'none';

        // Show the confirmation message
        confirmation.classList.remove('hidden');

        // Add the scale-in animation to the tick mark
        const tickMark = confirmation.querySelector('.tick-mark');
        tickMark.classList.add('scale-in');
    });
});

