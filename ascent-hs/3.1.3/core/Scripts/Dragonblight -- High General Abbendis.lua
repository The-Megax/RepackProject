--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HighGeneralAbbendis_OnCombat(Unit, Event)
Unit:RegisterEvent("HighGeneralAbbendis_JudgementofOnslaught", 4000, 1)
Unit:RegisterEvent("HighGeneralAbbendis_RagingConsecration", 6000, 1)
Unit:RegisterEvent("HighGeneralAbbendis_SealofOnslaught", 8000, 1)
end

function HighGeneralAbbendis_JudgementofOnslaught(pUnit, Event) 
pUnit:CastSpell(50905) 
end

function HighGeneralAbbendis_RagingConsecration(pUnit, Event) 
pUnit:CastSpell(50915) 
end

function HighGeneralAbbendis_SealofOnslaught(pUnit, Event) 
pUnit:CastSpell(50908) 
end

function HighGeneralAbbendis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighGeneralAbbendis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighGeneralAbbendis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27210, 1, "HighGeneralAbbendis_OnCombat")
RegisterUnitEvent(27210, 2, "HighGeneralAbbendis_OnLeaveCombat")
RegisterUnitEvent(27210, 3, "HighGeneralAbbendis_OnKilledTarget")
RegisterUnitEvent(27210, 4, "HighGeneralAbbendis_OnDied")