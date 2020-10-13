def getBattery(events):
    c=50
    for i in events:
        if (i<0):
            c+=i
        else:
            c+=i
            if c>100:
                c=100
        print(c)
    return c
