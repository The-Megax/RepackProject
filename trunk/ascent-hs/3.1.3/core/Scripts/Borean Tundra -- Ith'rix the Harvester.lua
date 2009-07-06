--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IthrixtheHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("IthrixtheHarvester_PoisonStinger", 7000, 0)
Unit:RegisterEvent("IthrixtheHarvester_StingerRage", 9000, 0)
Unit:RegisterEvent("IthrixtheHarvester_VenomSpit", 10000, 0)
end

function IthrixtheHarvester_PoisonStinger(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25748, pUnit:GetMainTank()) 
end

function IthrixtheHarvester_StingerRage(pUnit, Event) 
pUnit:CastSpell(34392) 
end

function IthrixtheHarvester_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45592, pUnit:GetMainTank()) 
end

function IthrixtheHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IthrixtheHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IthrixtheHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25453, 1, "IthrixtheHarvester_OnCombat")
RegisterUnitEvent(25453, 2, "IthrixtheHarvester_OnLeaveCombat")
RegisterUnitEvent(25453, 3, "IthrixtheHarvester_OnKilledTarget")
RegisterUnitEvent(25453, 4, "IthrixtheHarvester_OnDied")