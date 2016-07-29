local Coin_EventFrame = CreateFrame("Frame")
count = 0
Coin_EventFrame:RegisterEvent("CHAT_MSG_LOOT")
Coin_EventFrame:SetScript("OnEvent",
    function(self, event, ...)
        local args1, args2, args3, args4, args5, args6, args7, args8, args9, args10, args11 = ...
        print("hi")
        if args1:match("Counterfeit Coin") then
            count = count + 1
            print(count)
        end
    end)
function Coin_EventFrame:BAMBOOZLEMEWITHCOINS()
    print ("test")
end
