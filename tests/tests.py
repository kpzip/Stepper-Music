import mido
import time

devices = mido.get_output_names()

num_steppers = 4

major_chord = [0, 4, 7, 12, 16, 19, 24, 28, 31, 36]

for i in range(len(devices)):
    print(str(i) + ": " + devices[i])

dev_num = int(input("Select a MIDI device:"))

with mido.open_output(devices[dev_num]) as midi:

    # Test single Note
    midi.send(mido.Message("note_on", note=60))
    time.sleep(1)
    midi.send(mido.Message("note_off", note=60))
    input()

    # Test note assignment
    for n in range(num_steppers):
        midi.send(mido.Message("note_on", note=60+major_chord[n]))
        time.sleep(0.5)

    time.sleep(1)

    for n in range(num_steppers):
        midi.send(mido.Message("note_off", note=60+major_chord[n]))
    input()

    # Test Channel Assignment
    for n in range(num_steppers):
        midi.send(mido.Message("note_on", note=60+major_chord[n], channel=n+1))
        time.sleep(1)
        midi.send(mido.Message("note_off", note=60+major_chord[n], channel=n+1))
        time.sleep(0.1)
    input()


