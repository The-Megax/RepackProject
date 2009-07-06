--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SergeantBonesnap_OnCombat(Unit, Event)
Unit:RegisterEvent("SergeantBonesnap_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("SergeantBonesnap_HeroicStrike", 5000, 0)
Unit:RegisterEvent("SergeantBonesnap_Intercept", 9000, 0)
end

function SergeantBonesnap_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function SergeantBonesnap_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function SergeantBonesnap_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function SergeantBonesnap_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SergeantBonesnap_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SergeantBonesnap_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27493, 1, "SergeantBonesnap_OnCombat")
RegisterUnitEvent(27493, 2, "SergeantBonesnap_OnLeaveCombat")
RegisterUnitEvent(27493, 3, "SergeantBonesnap_OnKilledTarget")
RegisterUnitEvent(27493, 4, "SergeantBonesnap_OnDied")