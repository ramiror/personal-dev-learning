require 'tk'
rab1 = TkPhotoImage.new { file "rab1.jpg" }
rab2 = TkPhotoImage.new { file "rab2.jpg" }
TkButton.new { image rab2 }
pack
Tk.mainloop
