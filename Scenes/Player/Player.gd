extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and GlobalVars.alive:
		velocity.y = JUMP_VELOCITY
	
	if velocity.y > 0 and self.rotation < 1.134:
		self.rotation += 0.075
	if velocity.y < 0 and self.rotation > -0.698:
		self.rotation -= 0.15
	
	if not GlobalVars.alive:
		get_node("AnimatedSprite2D").play("Still")

	move_and_slide()
