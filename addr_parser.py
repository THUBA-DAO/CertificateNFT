import pandas as pd
import math

airdroplist = pd.read_csv("./recipients.csv")
airdroplist = airdroplist.values.tolist()

addresses = []

for address in airdroplist:
    addresses.append(address[0])

addresses = tuple(addresses)

def addrlisttostring(airdropaddrs):
    str = "["
    for i, addr in enumerate(airdropaddrs):
        str = str + '"' + addr.replace(' ', '') + '"'
        if i == len(airdropaddrs)-1:
            str = str + ']'
        else:
            str = str + ','
    return str

print("===Addresses===\n", addrlisttostring(addresses))
print("===NumOfParticipants===\n", len(addresses))
