local composer = require( "composer" )
local scene = composer.newScene()
 
---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------
 
-- local forward references should go here
 
---------------------------------------------------------------------------------
 
 
	sqlite3 = require( "sqlite3" )
vencedor1=0
vencedor2=0
		
		 path  = system.pathForFile("data.db", system.DocumentsDirectory)
		 db = sqlite3.open(path)
 
 
 
-- "scene:create()"
function scene:create( event )


 
   local sceneGroup = self.view
   
   
		
   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.
end
 
-- "scene:show()"
function scene:show( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
	  	for row in db:nrows("SELECT * FROM vencedor where jogador1 = 1") do
		
		vencedor1 = vencedor1 +1
		
		end
		
		for row in db:nrows("SELECT * FROM vencedor where jogador2 = 1") do
		
		vencedor2 = vencedor2 +1
		end
		local j1 = display.newText("Jogador X = ".. vencedor1, 150, 10, native.systemFont, 40 )
		local j2 = display.newText("Jogador O = ".. vencedor2, 150, 100, native.systemFont, 40 )
 
 
		local novamenteText = display.newText("Jogar Novamente", largura/2, altura/2, native.systemFont, 30 )
		novamenteText:setFillColor(0.3)
 
		novamente1 = display.newRect( largura/2, altura/2, 300, 50)
		novamente1:addEventListener("touch", novamente)
		
		deletar = display.newRect(largura/2, altura/1.5, 300,50)
		deletar:addEventListener("touch", delete)
		deletarText = display.newText("Resetar Pontuação", largura/2, altura/1.5, native.systemFont, 30)
		deletarText:setFillColor(0.3)
		
		sceneGroup:insert(j1)
		sceneGroup:insert(j2)
		sceneGroup:insert(novamente1)
		sceneGroup:insert(novamenteText)
		sceneGroup:insert(deletar)
		sceneGroup:insert(deletarText)
		
		print("Show")
		
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
 
---------------------------------------------------------------------------------
 function novamente(event)
 
 composer.gotoScene("jogar")
 end
 
  function delete(event)
 
 
db:exec("begin-transaction")

local q = [[DELETE FROM vencedor]]
db:exec( q )

db:exec("commit")
print(errcode)

end

return scene