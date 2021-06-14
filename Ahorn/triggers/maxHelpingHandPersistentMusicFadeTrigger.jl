﻿module MaxHelpingHandPersistentMusicFadeTrigger

using ..Ahorn, Maple

@mapdef Trigger "MaxHelpingHand/PersistentMusicFadeTrigger" PersistentMusicFadeTrigger(x::Integer, y::Integer, width::Integer=Maple.defaultTriggerWidth, height::Integer=Maple.defaultTriggerHeight; 
	direction::String="leftToRight", fadeA::Number=0.0, fadeB::Number=1.0, parameter::String="")

const placements = Ahorn.PlacementDict(
    "Persistent Music Fade (max480's Helping Hand)" => Ahorn.EntityPlacement(
        PersistentMusicFadeTrigger,
        "rectangle"
    )
)

function Ahorn.editingOptions(trigger::Maple.MusicFadeTrigger)
    return Dict{String, Any}(
        "direction" => Maple.music_fade_trigger_directions
    )
end

end
