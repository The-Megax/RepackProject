--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HandOfDeceiverVisual_OnSpawn(Unit,Event)
	Unit:FullCastSpell(51795)
	Unit:RegisterEvent("HandOfDeceiverVisual_Channel", 10000, 0)
end

function HandOfDeceiverVisual_Channel(Unit,Event)
	Unit:FullCastSpell(51795)
end

RegisterUnitEvent(25955, 18, "HandOfDeceiverVisual_OnSpawn")