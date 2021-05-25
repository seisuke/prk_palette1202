while !$mutex
  relinquish
end

# Initialize a Keyboard
kbd = Keyboard.new

kbd.init_pins(
  [ 21, 23, 20 ],   # row0, row1, row2
  [ 5, 6, 7, 8, 9 ]  # col0, col1, col2, col3, col4
)

# default layer should be added at first
kbd.add_layer :default, [
                %i(KC_A  KC_B KC_C KC_D KC_MUTE ),
                %i(KC_E  KC_F KC_G KC_H KC_ENTER),
                %i(KC_NO KC_I KC_J KC_K KC_L)
              ]

kbd.start!
