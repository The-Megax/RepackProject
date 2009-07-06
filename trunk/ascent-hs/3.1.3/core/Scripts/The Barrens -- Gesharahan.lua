--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Gesharahan_OnCombat(Unit, Event)
Unit:RegisterEvent("Gesharahan_DeadlyPoison", 6000, 1)
end

function Gesharahan_DeadlyPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3583, pUnit:GetMainTank()) 
end

function Gesharahan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Gesharahan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Gesharahan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3398, 1, "Gesharahan_OnCombat")
RegisterUnitEvent(3398, 2, "Gesharahan_OnLeaveCombat")
RegisterUnitEvent(3398, 3, "Gesharahan_OnKilledTarget")
RegisterUnitEvent(3398, 4, "Gesharahan_OnDied")