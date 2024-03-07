extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func spawn(): #presumably this never runs because the if statement need to call this has an error that seems syntx related?
	var PawnEnemy = load("res://assets/tscn/pawn.tscn") # Replace with function body.
	var PawnCopies = PawnEnemy.instantiate()
	PawnCopies.pawn_class = 6 #I suspect this won't work but it is my current best guess?
	PawnCopies._ready() #Runs with this but nothing actually happens.
	PawnCopies.x = 0.5
	PawnCopies.y= 0.5
	PawnCopies.z= 0.5
	add_child(PawnCopies) #This is when it branches off and gives the error.
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("spawn_unit"): #No idea why this is giving an error?
		spawn()#Where is the missing tab?
	pass
