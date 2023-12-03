// Код для руху
var cell_size = 100; // Розмір однієї клітинки (швидкість руху)

if keyboard_check_pressed(ord("W")) {
    // Рух вгору
    y -= cell_size;
}

if keyboard_check_pressed(ord("S")) {
    // Рух вниз
    y += cell_size;
}

if keyboard_check_pressed(ord("A")) {
    // Рух вліво
    x -= cell_size;
}

if keyboard_check_pressed(ord("D")) {
    // Рух вправо
    x += cell_size;
}








