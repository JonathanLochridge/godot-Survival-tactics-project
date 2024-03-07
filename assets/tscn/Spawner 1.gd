extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready():
	var PawnEnemy = load("res://assets/tscn/pawn.tscn") # Replace with function body.
	var PawnCopies = PawnEnemy.instantiate()
	PawnCopies._ready() #Runs with this but nothing actually happens.
	add_child(PawnCopies) #This is when it branches off and gives the error.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
