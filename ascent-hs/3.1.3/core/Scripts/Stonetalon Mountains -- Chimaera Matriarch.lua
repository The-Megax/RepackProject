--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ChimaeraMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("ChimaeraMatriarch_CorrosivePoison", 10000, 0)
end

function ChimaeraMatriarch_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function ChimaeraMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChimaeraMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChimaeraMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6167, 1, "ChimaeraMatriarch_OnCombat")
RegisterUnitEvent(6167, 2, "ChimaeraMatriarch_OnLeaveCombat")
RegisterUnitEvent(6167, 3, "ChimaeraMatriarch_OnKilledTarget")
RegisterUnitEvent(6167, 4, "ChimaeraMatriarch_OnDied")