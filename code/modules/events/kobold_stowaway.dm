/datum/round_event_control/kobold_stowaway
	name = "Kobold stowaway"
	typepath = /datum/round_event/kobold_stowaway
	weight = 10

/datum/round_event/kobold_stowaway
	var/minimum_kobolds = 1
	var/maximum_kobolds = 5

/datum/round_event/kobold_stowaway/announce(fake)
	var/cause = pick("lots of shiny things being on the station", "treasure cuts", "boredom",
	"furries", "the Lavaland Wastes being cold", "the Lavaland Wastes being hot", "mean Ashwalkers",
	"Ash Drake mating season", "lack of adventure", "Swept", "Oranges removing all gold from their habitat")
	var/plural = pick("some", "numerous", "a flock of", "a pod of", "A troupe of", "many")
	var/name = pick("Kobolds", "short lizardpeople", "cute Ashwalkers", "scalies", "vertically challenged lizards",
	"scaled rodents", "adorable vermin")
	var/movement = pick("stowed away", "taken residence", "adventured", "wandered", "frolicked", "broken",
	"slipped", "tripped", "scampered")
	var/location = pick("Maintenance Tunnels", "spooky engineer halls", "Revnant wonderland", "mice nightclub",
	"dark wire-haven", "place in-between the couch cushions", "radiation shelters")
	var/signs = pick("glowing eyes", "dead mice", "large accumulations of shiny objects", "treasure",
	"adventure", "shed scales", "yiff victims", "otter space traces")

	priority_announce("Due to [cause], [plural] [name] have [movement] \
	into the [location]. Keep an eye out for [signs]", "Stowaway Alert",
	'sound/voice/hiss1.ogg')

/datum/round_event/kobold_stowaway/start()
	SSminor_mapping.trigger_stowaway(rand(minimum_kobolds, maximum_kobolds))
