if !animationStarted {
    // Start the animation
    animationStarted = true;
    currentFrame = 0; // Reset the current frame if needed
    // Additional code to play the animation
}


decreaseSpeed = false;

if decreaseSpeed {
    // Decrease Speed
    speed *= 0.5;
    
    // Timer countdown
    decreaseTimer -= 1;
    
    if decreaseTimer <= 0 {
        // Reset the speed and disable the decrease
        speed *= 2;          // Restore the original speed (assuming it was halved before)
        decreaseSpeed = false;
    }
}
