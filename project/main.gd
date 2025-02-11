extends Control

@onready var button1 : NinePatchButton = $MarginContainer/GridContainer/NinePatchButton1
@onready var button2 : NinePatchButton = $MarginContainer/GridContainer/NinePatchButton2
@onready var button3 : NinePatchButton = $MarginContainer/GridContainer/NinePatchButton3
@onready var button4 : NinePatchButton = $MarginContainer/GridContainer/NinePatchButton4


func _on_button_pressed( _button : NinePatchButton ):
	print( "%s pressed" % _button.name )


func _ready():
	button1.pressed.connect( _on_button_pressed.bind( button1 ) )
	button2.pressed.connect( _on_button_pressed.bind( button2 ) )
	button3.pressed.connect( _on_button_pressed.bind( button3 ) )
	button4.pressed.connect( _on_button_pressed.bind( button4 ) )
