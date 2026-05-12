extends Entity

@export_file var destination: String

func on_interact():
	interaction.shape.disabled = true
	Game.stage.change(destination)
