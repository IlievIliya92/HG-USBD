import time
import threading
import Tkinter
import ttk
from Tkinter import *
import serial


serial_data = ''
filter_data = ''
update_period = 1
serial_object = None
gui = Tk()
gui.title("HG WeatherStation")


def connect():
    """The function initiates the Connection to the UART device with the Port and Buad fed through the Entry
    boxes in the application.

    The radio button selects the platform, as the serial object has different key phrases
    for Linux and Windows. Some Exceptions have been made to prevent the app from crashing,
    such as blank entry fields and value errors, this is due to the state-less-ness of the
    UART device, the device sends data at regular intervals irrespective of the master's state.

    The other Parts are self explanatory.
    """

    version_ = button_var.get()
    print version_
    global serial_object
    port = port_entry.get()
    baud = 115200

    try:
        if version_ == 2:
            try:
                serial_object = serial.Serial('/dev/tty' + str(port), baud)

            except:
                print "Cant Open Specified Port"
        elif version_ == 1:
            serial_object = serial.Serial('COM' + str(port), baud)

    except ValueError:
        print "Enter Baud and Port"
        return

    t1 = threading.Thread(target = get_data)
    t1.daemon = True
    t1.start()



def get_data():
    """This function serves the purpose of collecting data from the serial object and storing
    the filtered data into a global variable.

    The function has been put into a thread since the serial event is a blocking function.
    """
    global serial_object
    global filter_data

    while(1):
        try:
            serial_data = serial_object.readline().strip('\n').strip('\r').strip('\x00')

            filter_data = serial_data.split(',')
            print filter_data

        except TypeError:
            pass




def update_gui():
    """" This function is an update function which is also threaded. The function assimilates the data
    and applies it to it corresponding progress bar. The text box is also updated every couple of seconds.

    A simple auto refresh function .after() could have been used, this has been avoid purposely due to
    various performance issues.


    """
    global filter_data
    global update_period

    text.place(x = 15, y = 10)
    date.place(x = 100, y = 120)
#    progress_1.place(x = 100, y = 120)
    timed.place(x = 100, y = 150)
    progress_temp.place(x = 175, y = 182)
    temp.place(x = 100, y = 180)
    progress_humidity.place(x = 175, y = 210)
    humidty.place(x = 100, y = 210)

    new = time.time()

    while(1):
        if filter_data:
#['2019', '06', '01', '00', '18', '03', '22.00', '41.74']
            text.insert(END, filter_data)
            text.insert(END,"\n")
            try:
                #progress_1["value"] = filter_data[0]
                date.insert(INSERT, filter_data[0] + ":" + filter_data[1] + ":" + filter_data[2] + "\n")
                timed.insert(INSERT, filter_data[3] + ":" + filter_data[4] + ":" + filter_data[5] + "\n")
                progress_temp["value"] = filter_data[6]
                temp.insert(INSERT, filter_data[6] + "\n")
                progress_humidity["value"] = filter_data[7]
                humidty.insert(INSERT, filter_data[7] + "\n")
            except :
                pass


            if time.time() - new >= update_period:
                text.delete("1.0", END)
                date.delete("1.0", END)
                timed.delete("1.0", END)
                progress_temp["value"] = 0
                temp.delete("1.0", END)
                progress_humidity["value"] = 0
                humidty.delete("1.0", END)

                new = time.time()

def disconnect():
    """
    This function is for disconnecting and quitting the application.

    Sometimes the application throws a couple of errors while it is being shut down, the fix isn't out yet
    but will be pushed to the repo once done.

    simple GUI.quit() calls.

    """
    try:
        serial_object.close()

    except AttributeError:
        print "Closed without Using it -_-"

    gui.quit()



if __name__ == "__main__":

    """
    The main loop consists of all the GUI objects and its placement.

    The Main loop handles all the widget placements.

    """
    #frames
    frame_1 = Frame(height = 285, width = 480, bd = 3, relief = 'groove').place(x = 7, y = 5)
    frame_2 = Frame(height = 150, width = 480, bd = 3, relief = 'groove').place(x = 7, y = 300)
    text = Text(width = 57, height = 5)


    #threads
    t2 = threading.Thread(target = update_gui)
    t2.daemon = True
    t2.start()


    #Labels
    data1_ = Label(text = "Date:").place(x = 30, y= 120)
    data2_ = Label(text = "Time:").place(x = 30, y= 150)
    data3_ = Label(text = "Temp:").place(x = 30, y= 180)
    data4_ = Label(text = "HUmidity:").place(x = 30, y= 210)

#    baud   = Label(text = "Baud").place(x = 100, y = 348)
    port   = Label(text = "Port").place(x = 120, y = 348)
    contact = Label(text = "HG WeatherStation").place(x = 250, y = 437)

    #progress_bars
    date = Text(width = 12, height = 1)
    timed = Text(width = 12, height = 1)
    progress_temp = ttk.Progressbar(orient = HORIZONTAL, mode = 'determinate', length = 200, max = 255)
    temp = Text(width = 8, height = 1)
    #progress_1 = ttk.Progressbar(orient = HORIZONTAL, mode = 'determinate', length = 200, max = 255)
    progress_humidity = ttk.Progressbar(orient = HORIZONTAL, mode = 'determinate', length = 200, max = 255)
    humidty = Text(width = 8, height = 1)

#    baud_entry = Entry(width = 7)
#    baud_entry.place(x = 100, y = 365)

    port_entry = Entry(width = 7)
    port_entry.place(x = 120, y = 365)

    #radio button
    button_var = IntVar()
    radio_1 = Radiobutton(text = "Windows", variable = button_var, value = 1).place(x = 10, y = 315)
    radio_2 = Radiobutton(text = "Linux", variable = button_var, value = 2).place(x = 110, y = 315)

    #button
    connect = Button(text = "Connect", command = connect).place(x = 15, y = 360)
    disconnect = Button(text = "Disconnect", command = disconnect).place(x =15, y = 400)

    #mainloop
    gui.geometry('500x500')
    gui.mainloop()
