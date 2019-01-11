#! /usr/bin/env python3
import turtle
# , tkinter

cWidth, cHeight = 900, 600

turtle.setup(width=cWidth, height=cHeight)
turtle.setworldcoordinates(0, cHeight, cWidth, 0)
# urtle.setworldcoordinates(llx, lly, urx, ury)¶
# Parameters:	
# llx – a number, x-coordinate of lower left corner of canvas
# lly – a number, y-coordinate of lower left corner of canvas
# urx – a number, x-coordinate of upper right corner of canvas
# ury – a number, y-coordinate of upper right corner of canvas

turtle.penup()



# root = tkinter.Tk()

canvas = turtle.getcanvas()
x, y = canvas.winfo_pointerx(), canvas.winfo_pointery()

print(x, y)

# turtle.ondrag(turtle.goto)
# turtle.mainloop()
def motion(event):
    x, y = event.x, event.y
    print('{}, {}'.format(x, y))
    turtle.goto(x, y)

canvas.bind('<Motion>', motion)
# turtle.goto(x, y)

turtle.mainloop()
turtle.exitonclick()
