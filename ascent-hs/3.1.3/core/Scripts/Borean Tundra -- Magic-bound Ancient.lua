--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MagicboundAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("MagicboundAncient_MarkofDetonation", 6000, 0)
end

function MagicboundAncient_MarkofDetonation(pUnit, Event) 
pUnit:CastSpell(50506) 
end

function MagicboundAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagicboundAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagicboundAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25707, 1, "MagicboundAncient_OnCombat")
RegisterUnitEvent(25707, 2, "MagicboundAncient_OnLeaveCombat")
RegisterUnitEvent(25707, 3, "MagicboundAncient_OnKilledTarget")
RegisterUnitEvent(25707, 4, "MagicboundAncient_OnDied")