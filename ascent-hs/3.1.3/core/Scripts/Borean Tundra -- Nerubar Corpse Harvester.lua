--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NerubarCorpseHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarCorpseHarvester_VenomSpit", 8000, 0)
end

function NerubarCorpseHarvester_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45577, pUnit:GetMainTank()) 
end

function NerubarCorpseHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarCorpseHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarCorpseHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25445, 1, "NerubarCorpseHarvester_OnCombat")
RegisterUnitEvent(25445, 2, "NerubarCorpseHarvester_OnLeaveCombat")
RegisterUnitEvent(25445, 3, "NerubarCorpseHarvester_OnKilledTarget")
RegisterUnitEvent(25445, 4, "NerubarCorpseHarvester_OnDied")