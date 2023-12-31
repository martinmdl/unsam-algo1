import pepita.*
import wollok.game.*

object nido {

	var property position = game.at(7, 8)

	method image() = "nido.png"

	method teEncontro(ave) {
		game.say(ave, "GANASTE! WIII")
		game.schedule(2000, { game.stop() })
	}
}


object silvestre {

	method image() = "silvestre.png"

	method position() = game.at(self.cordX().max(3),0) // silvestre siguea pepita!
	
	method cordX() = pepita.position().x()
	
	method teEncontro(ave) {
		game.schedule(2000, { game.stop() })
	}
}
