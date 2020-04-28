import serial
import pyaudio
import numpy as np
import wave
import scipy.signal as signal
import warnings
from bitstring import BitArray

def serial_init(speed):
    dev = serial.Serial(
        port='/dev/ttyUSB0', 
        baudrate=speed,
        parity=serial.PARITY_EVEN,
        stopbits=serial.STOPBITS_ONE,
        bytesize=serial.EIGHTBITS
    )
    return dev

def serial_recv(dev):
    # Для простоты макс. кол-во символов для чтения - 255. Время ожидания - 0.1
    # decode необходим для конвертирования набора полученных байтов в строку
    instr0 = dev.read(1)
    instr1 = dev.read(1)
    instr2 = dev.read(1)
    instr3 = dev.read(1)
    return instr3 + instr2 + instr1 + instr0

def serial_send(dev, cmd):
    dev.write(bytearray([cmd]))

if __name__ == '__main__':
	dev = serial_init(240000)
    
	while True:
		instr = serial_recv(dev)
		hex_string = instr.hex()
		binary_data = BitArray(hex=hex_string)

		print(binary_data.bin)
