-----------------------------------
--
--
--
-----------------------------------

-----------------------------------
-- onEffectGain Action
-----------------------------------

function onEffectGain(target,effect)
    local pet = target:getPet()
    if (pet) then
        pet:addMod(dsp.mod.INT, effect:getPower())
    end
end;

-----------------------------------
-- onEffectTick Action
-----------------------------------

function onEffectTick(target,effect)
end;

-----------------------------------
-- onEffectLose Action
-----------------------------------

function onEffectLose(target,effect)
    local pet = target:getPet()
    if (pet) then
        pet:delMod(dsp.mod.INT, effect:getPower())
    end
end;