# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Movie.create(name: "El laberinto del fauno", synopsis: "En la España fascista de 1944, la joven Ofelia descubre un mundo mágico donde debe completar tres pruebas para reunirse con su verdadero padre, el rey del inframundo. Mientras tanto, la guerra y la crueldad humana se desatan en el mundo real.", director: "Guillermo del Toro")
Movie.create(name: "La vida es bella", synopsis: "Durante la Segunda Guerra Mundial, un padre utiliza su imaginación para proteger a su hijo pequeño de los horrores del campo de concentración nazi, haciéndole creer que todo es parte de un juego.", director: "Roberto Benigni")

SerieTv.create(name: "Breaking Bad", synopsis: "Un profesor de Quimica se convierte en narcotraficante", director: "Vince Gilligan")
SerieTv.create(name: "Stranger Things", synopsis: "En la década de 1980, un grupo de niños de un pequeño pueblo investiga la desaparición de su amigo, solo para descubrir un siniestro experimento y una dimensión alterna.", director: "The Duffer Brothers")

DocumentaryFilm.create(name: "Nuestro Planeta", synopsis: "Un documental que explora la belleza natural de la Tierra y cómo el cambio climático está afectando la vida silvestre en todo el mundo.", director: "Alastair Fothergill")
DocumentaryFilm.create(name: "Cowspiracy: El secreto de la sostenibilidad", synopsis: "Un impactante documental que revela la verdad detrás de la industria ganadera y su impacto devastador en el medio ambiente y el cambio climático.", director: "Kip Andersen, Keegan Kuhn")