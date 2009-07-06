--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function TwilightSpeakerViktor_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightSpeakerViktor_Fireball", 7000, 0)
end

function TwilightSpeakerViktor_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function TwilightSpeakerViktor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightSpeakerViktor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightSpeakerViktor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25924, 1, "TwilightSpeakerViktor_OnCombat")
RegisterUnitEvent(25924, 2, "TwilightSpeakerViktor_OnLeaveCombat")
RegisterUnitEvent(25924, 3, "TwilightSpeakerViktor_OnKilledTarget")
RegisterUnitEvent(25924, 4, "TwilightSpeakerViktor_OnDied")