def caesar_cipher(string, shift)
  cipher_string = []
  string.each_codepoint do |e|
    base = e <= 90 ? 65 : 97
    if e.between?(65, 90) || e.between?(97, 122)
      cycle = (((e - base) + shift) % 26) + base
      cipher_string += [cycle.chr]
    else
      cipher_string += [e.chr]
    end
  end
  puts cipher_string.join('')
end

caesar_cipher('Ab, fr gtfx bl Chlxia.', 7)
