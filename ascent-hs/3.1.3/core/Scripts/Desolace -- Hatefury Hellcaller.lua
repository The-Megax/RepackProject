--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HatefuryHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryHellcaller_Enrage", 10000, 1)
Unit:RegisterEvent("HatefuryHellcaller_Immolate", 5000, 1)
Unit:RegisterEvent("HatefuryHellcaller_RainofFire", 11000, 0)
end

function HatefuryHellcaller_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryHellcaller_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1094, pUnit:GetMainTank()) 
end

function HatefuryHellcaller_RainofFire(pUnit, Event) 
pUnit:CastSpell(39273) 
end

function HatefuryHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4675, 1, "HatefuryHellcaller_OnCombat")
RegisterUnitEvent(4675, 2, "HatefuryHellcaller_OnLeaveCombat")
RegisterUnitEvent(4675, 3, "HatefuryHellcaller_OnKilledTarget")
RegisterUnitEvent(4675, 4, "HatefuryHellcaller_OnDied")