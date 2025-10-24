timer = 0;  // Counts frames (at 60 FPS, 60 = 1 second)
stage = 0;  // Current part of cutscene (0 = start, 1 = text1, 2 = image, etc.)
max_stages = 3;  // Total stages (adjust per cutscene)
skip_allowed = true;  // Allow player to skip with SPACE

// Content for this cutscene (customize per cutscene)
text1 = "You defeated the first boss!";
text2 = "Now face the second challenge...";