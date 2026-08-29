extends Node

signal Action(value : float)

var MouseSpeed = 2000.0 
var MouseMaxSpeed = 500.0

#var CheeseCollected1

func MoldyCheese():
	MouseSpeed -= 1000
	MouseMaxSpeed -= 250
	MouseSpeed = move_toward(MouseSpeed,2000,20)
	MouseMaxSpeed = move_toward(MouseMaxSpeed,500,5)
