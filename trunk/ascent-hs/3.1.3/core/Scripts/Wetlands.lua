--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 27, 2009. ]]
function Axtroz_OnCombat(pUnit, event)
RegisterEvent("Breath", 10000, 0)
RegisterEvent("Rend", 15000, 0)
end
function Breath(pUnit, event)
local Main = pUnit:GetMainTank()
pUnit:FullCastSpellOnTarget(20712, Main)
if Main ~= nil then
else
end
end
function Rend(pUnit, event)
local Main = pUnit:GetMainTank()
pUnit:FullCastSpellOnTarget(20712, Main)
if Main ~= nil then
else
end
end
function Axtroz_OnLeaveCombat(pUnit, event)
pUnit:RemoveEvents()
end
function Axtroz_OnKillTarget(pUnit, event)
end
function Axtroz_OnDeath(pUnit, event)
pUnit:RemoveEvents()
end
RegisterUnitEvent(12899, 1, "Axtroz_OnCombat")
RegisterUnitEvent(12899, 2, "Axtroz_OnLeaveCombat")
RegisterUnitEvent(12899, 3, "Axtroz_OnKillTarget")
RegisterUnitEvent(12899, 4, "Axtroz_OnDeath")
[--
function Balgaras_the_Foul_OnCombat(pUnit, event)
RegisterEvent("FrostN", 10000, 0)
RegisterEvent("Volley", 15000, 0)
RegisterEvent("Volatile', 20000, 0)
end
function FrostN(pUnit, event)
--]


function Black_Slime_OnCombat(pUnit, event)
RegisterEvent("Sludge", 300000, 0)
end
function Sludge(pUnit, event)
local Target = pUnit:GetMainTarget()
if Target ~= nil then
pUnit:FullCastSpellOnTarget(3335, Target)
else
end
end
function Black_Slime_OnLeaveCombat(pUnit, event)
pUnit:RemoveEvents()
end
function Black_Slime_OnKillTarget(pUnit, event)

end
function Black_Slime_OnDeath(pUnit, event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(1030, 1, "Black_Slime_OnCombat")
RegisterUnitEvent(1030, 2, "Black_Slime_OnLeaveCombat")
RegisterUnitEvent(1030, 3, "Black_Slime_OnKillTarget")
RegisterUnitEvent(1030, 4, "Black_Slime_OnDeath")

function Mosshide_Gnoll_OnCombat(pUnit, event)
local text = math.random(1,2)
if(text == 1) then
pUnit:SendChatMessage(14, 0, "Grrrr... fresh meat!")
end
ifelse(text == 2) then
pUnit:SendChatMessage(14, 0, "More bones to gnaw on...")
end
end
function Mosshide_Gnoll_OnLeaveCombat(pUnit, event)
pUnit:RemoveEvents()
end
function Mosshide_Gnoll_OnKillTarget(pUnit, event)

end
function Mosshide_Gnoll_OnDeath(pUnit, event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(1007, 1, "Mosshide_Gnoll_OnCombat")
RegisterUnitEvent(1007, 2, "Mosshide_Gnoll_OnLeaveCombat")
RegisterUnitEvent(1007, 3, "Mosshide_Gnoll_OnKillTarget")
RegisterUnitEvent(1007, 4, "Mosshide_Gnoll_OnDeath")

function Mosshide_Mongrel_OnCombat(pUnit, event)
pUnit:RegisterEvent("Decay", 10000, 0)
end
function Decay(pUnit, event)
local plr = pUnit:GetMainTank()
if plr ~= nil then
pUnit:CastSpellOnTarget(8016, plr)
else
end
end
function Mosshide_Mongrel_OnLeaveCombat(pUnit, event)
pUnit:RemoveEvents()
end
function Mosshide_Mongrel_OnKillTarget(pUnit, event)

end
function Mosshide_Mongrel_OnDeath(pUnit, event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(1008, 1, "Mosshide_Mongrel_OnCombat")
RegisterUnitEvent(1008, 2, "Mosshide_Mongrel_OnLeaveCombat")
RegisterUnitEvent(1008, 3, "Mosshide_Mongrel_OnKillTarget")
RegisterUnitEvent(1008, 4, "Mosshide_Mongrel_OnDeath")




