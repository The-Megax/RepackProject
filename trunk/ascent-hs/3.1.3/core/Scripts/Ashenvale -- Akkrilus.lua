--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Akkrilus_OnCombat(Unit, Event)
Unit:RegisterEvent("Akkrilus_FireShieldII", 1000, 1)
Unit:RegisterEvent("Akkrilus_Immolate", 7000, 0)
end

function Akkrilus_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function Akkrilus_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1094, pUnit:GetMainTank()) 
end

function Akkrilus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Akkrilus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Akkrilus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3773, 1, "Akkrilus_OnCombat")
RegisterUnitEvent(3773, 2, "Akkrilus_OnLeaveCombat")
RegisterUnitEvent(3773, 3, "Akkrilus_OnKilledTarget")
RegisterUnitEvent(3773, 4, "Akkrilus_OnDied")