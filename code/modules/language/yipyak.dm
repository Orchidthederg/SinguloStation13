/datum/language/yipyak
	name = "YipYak"
	desc = "A distant relative of Draconic developed by Kobolds, consisting primarily of yips, yaps, and hisses."
	speech_verb = pick("yips", "yaps", "hisses", "chirps")
	ask_verb = pick("yips", "yaps", "hisses", "chirps")
	exclaim_verb = "screeches"
	sing_verb = "chants"
	key = "l"
	flags = TONGUELESS_SPEECH | LANGUAGE_HIDE_ICON_IF_UNDERSTOOD
	space_chance = 70
	syllables = list(
		"yip", "yap", "yerp", "sss", "sSs", "kik", "yeep", "ack",
	)
	icon_state = "kobold"
	default_priority = 95
