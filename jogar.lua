		local composer = require( "composer" )
		local scene = composer.newScene()
		
		local audio = require("audio")

		---------------------------------------------------------------------------------
		-- All code outside of the listener functions will only be executed ONCE
		-- unless "composer.removeScene()" is called.
		---------------------------------------------------------------------------------

		-- local forward references should go here

		---------------------------------------------------------------------------------

		-- "scene:create()"
		local audioX = audio.loadStream( "x.wav" )
		local audioO = audio.loadStream( "bola.wav" )
		local vitoria = audio.loadStream( "vitoria.wav" )
		local empate = audio.loadStream( "empate.wav" )
		audio.setVolume(0.2 )

	 function q1(event)
		verificaposicaoX()
		verificaEmpate()
		verificaLinha()
		verificaColuna()
		verificaDiagonais()
		 
		 	
		if ( event.phase == "began" ) then
			
		
		if(jogo[1][1] == 0) then
		cont = cont+1

		
			
		if(jogador ==1) then
		

		  myText1 = display.newText( "X", 50,50, native.systemFont, 55 )
		jogo[1][1] = "X"
		
		audio.play( audioX )
			

		


		jogador=2
		

		else
		  myText1 = display.newText( "O", 50,50, native.systemFont, 55 )
			jogo[1][1] = "O"
				audio.play( audioO )
				
			jogador=1
			
		end
		else
	
		end	
		end
		
		end


		function q2(event)
		verificaposicaoX()
		verificaEmpate()
		verificaLinha()
		verificaColuna()
		 verificaDiagonais()
			if ( event.phase == "began" ) then
			
			if(jogo[1][2]==0) then
			cont = cont+1

		if(jogador ==1) then
		myText2 = display.newText( "X", 150,50, native.systemFont, 55 )
			jogo[1][2] = "X"
				audio.play( audioX )
		 jogador=2
		 

		else
		 myText2 = display.newText( "O", 150,50, native.systemFont, 55 )
			jogo[1][2] = "O"
				audio.play( audioO )
		 jogador=1
		
		 
		end
		else
		
		end	
		end

		end

		 function q3(event)
		verificaEmpate()
		verificaLinha()
		verificaColuna()
		 verificaDiagonais()
			if ( event.phase == "began" ) then
			if(jogo[1][3]==0) then
			cont = cont+1

		if(jogador ==1) then
		 myText3 = display.newText( "X", 250,50, native.systemFont, 55 )
			jogo[1][3] = "X"
			audio.play( audioX )
		 jogador=2
		
		else
		myText3 = display.newText( "O", 250,50, native.systemFont, 55 )
			jogo[1][3] = "O"
			audio.play( audioO )
		 jogador=1
		  
		end
		else
		
		end
		end
		end

		function q4(event)
		verificaLinha()
		verificaEmpate()
		verificaColuna()
		 verificaDiagonais()
			if ( event.phase == "began" ) then
			
			if(jogo[2][1]==0) then
			cont = cont+1
			
		if(jogador ==1) then
		 myText4 = display.newText( "X", 50,150, native.systemFont, 55 )
			jogo[2][1] = "X"
			audio.play( audioX )
		 jogador=2
		 
		else
	 myText4 = display.newText( "O", 50,150, native.systemFont, 55 )
			jogo[2][1] = "O"
			audio.play( audioO )
		 jogador=1
		 	
		end
		else
		
		end
		end
		end

		 function q5(event)
		verificaEmpate()
		verificaLinha()
		verificaColuna()
		 verificaDiagonais()
			if ( event.phase == "began" ) then
			if(jogo[2][2]==0) then
			cont = cont+1

		if(jogador ==1) then
		myText5 = display.newText( "X", 150,150, native.systemFont, 55 )
			jogo[2][2] = "X"
			audio.play( audioX )
		 jogador=2
		 	 
		else
		 myText5 = display.newText( "O", 150,150, native.systemFont, 55 )
			jogo[2][2] = "O"
			audio.play( audioO )
		 jogador=1
		 	 
		end
		else
		end
		end
		end

	 function q6(event)
		verificaLinha()
		verificaEmpate()
		verificaColuna()
		verificaDiagonais()
			if ( event.phase == "began" ) then
			if(jogo[2][3]==0) then
			cont = cont+1

		if(jogador ==1) then
		 myText6 = display.newText( "X", 250,150, native.systemFont, 55 )
			jogo[2][3] = "X"
			audio.play( audioX )
		 jogador=2
		 	
		else
		myText6 = display.newText( "O", 250,150, native.systemFont, 55 )
			jogo[2][3] = "O"
			audio.play( audioO )
		 jogador=1
		  
		end
		else
		
		end
		end
		end

		 function q7(event)
		verificaEmpate()
		verificaLinha()
		verificaColuna()
		 verificaDiagonais()
		 
			if ( event.phase == "began" ) then
		if(jogo[3][1]==0) then
			cont = cont+1

		if(jogador ==1) then
		 myText7 = display.newText( "X", 50,250, native.systemFont, 55 )
			jogo[3][1] = "X"
			audio.play( audioX )

		 jogador=2
		 
		else
		 myText7 = display.newText( "O", 50,250, native.systemFont, 55 )
			jogo[3][1] = "O"
			audio.play( audioO )
		 jogador=1
		 
		end
		else
		
		end
		end
		end

	 function q8(event)
		verificaEmpate()
		verificaLinha()
		verificaColuna()
		 verificaDiagonais()
			if ( event.phase == "began" ) then
			if(jogo[3][2]==0) then
			cont = cont+1

		if(jogador ==1) then
		 myText8 = display.newText( "X", 150,250, native.systemFont, 55 )
			jogo[3][2] = "X"
			audio.play( audioX )
		 jogador=2
	 
		else
		 myText8 = display.newText( "O", 150,250, native.systemFont, 55 )
			jogo[3][2] = "O"
			audio.play( audioO )
		 jogador=1
		  
		end
		else
		
		end
		end
		end
		

		 function q9(event)
		verificaEmpate()
		verificaLinha()
		verificaColuna()
		 verificaDiagonais()
			if ( event.phase == "began" ) then
			if(jogo[3][3]==0) then
			cont = cont+1

		if(jogador ==1) then
		 myText9 = display.newText( "X", 250,250, native.systemFont, 55 )
			jogo[3][3] = "X"
			audio.play( audioX )
		 jogador=2
		   
		else
		 myText9 = display.newText( "O", 250,250, native.systemFont, 55 )
			jogo[3][3] = "O"
			audio.play( audioO )
		 jogador=1
		  
		end
		else
		
		end
		end
		end

		function verificaEmpate()
		if(cont >=9) then
		local fim = display.newText( "Empate", largura/2, altura/1.3, native.systemFont, 30 )
		fim:setFillColor(32.0)
		audio.play(empate)
		

		end
		end
		
			
		-- Verifica as Jogadas das Linhas
function verificaLinha()


if jogo[1][1] == "X" and jogo[1][2] == "X" and jogo[1][3] == "X" then


local fim = display.newText( "Jogador X Ganhou", largura/2, altura/1.3, native.systemFont, 30 )
		fim:setFillColor(32.0)
		
		 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 1,0,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )
		
	
			

end

if jogo[2][1] == "X" and jogo[2][2] == "X" and jogo[2][3] == "X" then

local fim = display.newText( "Jogador X Ganhou", largura/2, altura/1.3, native.systemFont, 30 )
		fim:setFillColor(32.0)
		
		 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 1,0,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )
	

end

if jogo[3][1] == "X" and jogo[3][2] == "X" and jogo[3][3] == "X" then

local fim = display.newText( "Jogador X Ganhou", largura/2, altura/1.3, native.systemFont, 30 )
		fim:setFillColor(32.0)
		
		 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 1,0,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )
	
end

if jogo[1][1] == "O" and jogo[1][2] == "O" and jogo[1][3] == "O" then

local fim = display.newText( "Jogador O Ganhou", largura/2, altura/1.3, native.systemFont, 30 )
		fim:setFillColor(32.0)
		
		 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 0,1,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )

end

if jogo[2][1] == "O" and jogo[2][2] == "O" and jogo[2][3] == "O" then

local fim = display.newText( "Jogador O Ganhou", largura/2, altura/1.3, native.systemFont, 30 )
		fim:setFillColor(32.0)
		
		 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 0,1,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )

end

if jogo[3][1] == "O" and jogo[3][2] == "O" and jogo[3][3] == "O" then

local fim = display.newText( "Jogador O Ganhou", largura/2, altura/1.3, native.systemFont, 30 )
		fim:setFillColor(32.0)
		
		 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 0,1,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )
		

end

end


-- Verifica as Jogadas das Colunas
function verificaColuna()

if jogo[1][1] == "X" and jogo[2][1] == "X" and jogo[3][1] == "X" then

local fim = display.newText( "Jogador X Ganhou", largura/2, altura/1.3, native.systemFont, 30 )


		fim:setFillColor(32.0)
		 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 1,0,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )
		


end

if jogo[1][2] == "X" and jogo[2][2] == "X" and jogo[3][2] == "X" then

local fim = display.newText( "Jogador X Ganhou", largura/2, altura/1.3, native.systemFont, 30 )


		fim:setFillColor(32.0)
		insertQuery = [[INSERT INTO vencedor VALUES(NULL, 1,0,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )

end

if jogo[1][3] == "X" and jogo[2][3] == "X" and jogo[3][3] == "X" then

local fim = display.newText( "Jogador X Ganhou", largura/2, altura/1.3, native.systemFont, 30 )

		fim:setFillColor(32.0)
		
 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 1,0,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )

end

if jogo[1][1] == "O" and jogo[2][1] == "O" and jogo[3][1] == "O" then

local fim = display.newText( "Jogador O Ganhou", largura/2, altura/1.3, native.systemFont, 30 )


		fim:setFillColor(32.0)
		 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 0,1,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )

end

if jogo[1][2] == "O" and jogo[2][2] == "O" and jogo[3][2] == "O" then

local fim = display.newText( "Jogador O Ganhou", largura/2, altura/1.3, native.systemFont, 30 )

		fim:setFillColor(32.0)
		 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 0,1,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )

end

if jogo[1][3] == "O" and jogo[2][3] == "O" and jogo[3][3] == "O" then

local fim = display.newText( "Jogador O Ganhou", largura/2, altura/1.3, native.systemFont, 30 )

		fim:setFillColor(32.0)
	 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 0,1,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )


end


end


-- Verifica Jogadas Diagonais
function verificaDiagonais()


if jogo[1][1] == "X" and jogo[2][2] == "X" and jogo[3][3] == "X" then

local fim = display.newText( "Jogador X Ganhou", largura/2, altura/1.3, native.systemFont, 30 )
 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 1,0,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )
		fim:setFillColor(32.0)

end


if jogo[1][3] == "X" and jogo[2][2] == "X" and jogo[3][1] == "X" then

local fim = display.newText( "Jogador X Ganhou", largura/2, altura/1.3, native.systemFont, 30 )
 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 1,0,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )
		fim:setFillColor(32.0)

end


if jogo[1][1] == "O" and jogo[2][2] == "O" and jogo[3][3] == "O" then

local fim = display.newText( "Jogador O Ganhou", largura/2, altura/1.3, native.systemFont, 30 )
 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 0,1,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )
		fim:setFillColor(32.0)

end


if jogo[1][3] == "O" and jogo[2][2] == "O" and jogo[3][1] == "O" then

local fim = display.newText( "Jogador O Ganhou", largura/2, altura/1.3, native.systemFont, 30 )
 insertQuery = [[INSERT INTO vencedor VALUES(NULL, 0,1,0);]]
		db:exec(insertQuery)
		audio.play( vitoria )
		fim:setFillColor(32.0)

end





end

function verificaposicaoX() 
if (jogo[1][1] == "X") then
print("Chamou")

end
if (jogo[1][2] == "X") then

end

end


		function scene:create( event )

		local sceneGroup = self.view
		
		 sqlite3 = require( "sqlite3" )
		
		 path  = system.pathForFile("data.db", system.DocumentsDirectory)
		 db = sqlite3.open(path)
		
		vencedores = {}
		
		vencedor1 = 0
		vencedor2 = 0
		 tablesetup = [[CREATE TABLE IF NOT EXISTS vencedor(id INTEGER PRIMARY KEY autoincrement, jogador1 integer(25), jogador2 integer(25),
		empate);]]
		db:exec(tablesetup)
		
		jogador = 1
		 cont = 0
		 coluna = 0
		linha = 0
		jogo={}
		 
		 for linha=1,3,1 do
		jogo[linha]={}

		for coluna=1,3,1 do
		jogo[linha][coluna] = 0

		end

		end
		
		 coluna1= display.newLine(100, 0, 100, altura/1.6)

		 coluna2= display.newLine(200, 0, 200, altura/1.6) 

		 linha1= display.newLine(0, 90, largura, 90)

		 linha2= display.newLine(0, 200, largura, 200)
		
		
		 quadrado1 = display.newRect( 0, 50, 200, 80)
		quadrado1:setFillColor(0.1)
		quadrado1:addEventListener("touch", q1)


		quadrado2 = display.newRect(150, 50, 90,80)
		quadrado2:setFillColor(0.1)
		quadrado2:addEventListener("touch", q2)

		 quadrado3=display.newRect(250,50,90,80)
		quadrado3:setFillColor(0.1)
		quadrado3:addEventListener("touch", q3)

		 quadrado4 = display.newRect(0,150, 200,80)
		quadrado4:setFillColor(0.1)
		quadrado4:addEventListener("touch", q4)

		 quadrado5 = display.newRect(150,150, 90,80)
		quadrado5:setFillColor(0.1)
		quadrado5:addEventListener("touch", q5)

		 quadrado6 = display.newRect(250,150,90,80)
		quadrado6:setFillColor(0.1)
		quadrado6:addEventListener("touch", q6)

		 quadrado7 = display.newRect(50,250,90,80)
		quadrado7:setFillColor(0.1)
		quadrado7:addEventListener("touch", q7)

		 quadrado8 = display.newRect(150,250,90,80)
		quadrado8:setFillColor(0.1)
		quadrado8:addEventListener("touch", q8)

		quadrado9 = display.newRect(250,250,90,80)
		quadrado9:setFillColor(0.1)
		quadrado9:addEventListener("touch", q9)
		
	
		
		
		

		
		
		local myText = display.newText( "Boa Sorte", largura/2, altura/1.1, native.systemFont, 40 )
		myText:setFillColor(32.0)
		
		pontuacao = display.newRect( largura/2, altura, 200, 30)
		pontuacao:addEventListener("touch", pont)
		
		 myTextpont= display.newText( "Pontuação", largura/2, altura, native.systemFont, 30 )
		myTextpont:setFillColor(0.3)
		
		sceneGroup:insert(linha1)
		sceneGroup:insert(linha2)
		
		sceneGroup:insert(coluna1)
		sceneGroup:insert(coluna2)
		
		sceneGroup:insert(quadrado1)
		sceneGroup:insert(quadrado2)
		sceneGroup:insert(quadrado3)
		sceneGroup:insert(quadrado4)
		sceneGroup:insert(quadrado5)
		sceneGroup:insert(quadrado6)
		sceneGroup:insert(quadrado7)
		sceneGroup:insert(quadrado8)
		sceneGroup:insert(quadrado9)
		
		sceneGroup:insert(pontuacao)
		sceneGroup:insert(myTextpont)
		sceneGroup:insert(myText)
		myText1= lll
		
			
		
		
		
		end
		
		
		
	
		-- "scene:show()" 
		function scene:show( event )

		local sceneGroup = self.view
		local phase = event.phase

		if ( phase == "will" ) then
		-- Called when the scene is still off screen (but is about to come on screen).
		elseif ( phase == "did" ) then
		-- Called when the scene is now on screen.
		-- Insert code here to make the scene come alive.
		-- Example: start timers, begin animation, play audio, etc.
		end
		
		
	
		
		end

		-- "scene:hide()"
		function scene:hide( event )

		local sceneGroup = self.view
		local phase = event.phase

		if ( phase == "will" ) then
		-- Called when the scene is on screen (but is about to go off screen).
		-- Insert code here to "pause" the scene.
		-- Example: stop timers, stop animation, stop audio, etc.
		elseif ( phase == "did" ) then
		-- Called immediately after scene goes off screen.
		end
		end

		-- "scene:destroy()"
		function scene:destroy( event )

		local sceneGroup = self.view

		-- Called prior to the removal of scene's view ("sceneGroup").
		-- Insert code here to clean up the scene.
		-- Example: remove display objects, save state, etc.
		end

		---------------------------------------------------------------------------------
		
		-- Listener setup
		scene:addEventListener( "create", scene )
		scene:addEventListener( "show", scene )
		scene:addEventListener( "hide", scene )
		scene:addEventListener( "destroy", scene )
		
	function pont(event)
	composer.gotoScene("pontuacao")
	end

		return scene
		

		
