--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ChillmereOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("ChillmereOracle_FrostNova", 10000, 0)
Unit:RegisterEvent("ChillmereOracle_HexoftheMurloc", 8000, 2)
Unit:RegisterEvent("ChillmereOracle_IceLance", 6000, 0)
end

function ChillmereOracle_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function ChillmereOracle_HexoftheMurloc(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49935, pUnit:GetMainTank()) 
end

function ChillmereOracle_IceLance(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49906, pUnit:GetMainTank()) 
end

function ChillmereOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChillmereOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChillmereOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24461, 1, "ChillmereOracle_OnCombat")
RegisterUnitEvent(24461, 2, "ChillmereOracle_OnLeaveCombat")
RegisterUnitEvent(24461, 3, "ChillmereOracle_OnKilledTarget")
RegisterUnitEvent(24461, 4, "ChillmereOracle_OnDied")