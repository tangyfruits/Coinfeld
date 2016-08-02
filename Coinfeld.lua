snakecount = 0
tincount = 0
local Coin_EventFrame = CreateFrame("Frame")
Coin_EventFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
Coin_EventFrame:SetScript("OnEvent",
    function(self, event, ...)
        local args1, args2, args3, args4, args5, args6, args7, args8, args9, args10, args11, args12 = ...
        if(args5 == UnitName("player") and args9 == "Stonesnake" and args12 == 173930) then
            SendChatMessage("You have thrown the Coin " .. tincount .. " times.", nil, nil)
            if math.fmod(snakecount, 13) == 1 then
                SendChatMessage("You have thrown the Coin " .. tincount .. " times.", nil, nil)
            end
        end
        if(args9 == UnitName("player") and args5 == "Stonesnake" and args12 == 173930) then
            snakecount = snakecount + 1
            SendChatMessage("You have caught the Coin " .. snakecount .. " times.", nil, nil)
            if math.fmod(snakecount, 13) == 1 then
                SendChatMessage("You have caught the Coin " .. snakecount .. " times.", nil, nil)
            end
        end
    end)


function Coin_EventFrame:BAMBOOZLEMEWITHCOINS()
    print ("test")
end
