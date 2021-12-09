//50 E8 ? ? ? ? 8B 4F 10 8B 35 ? ? ? ? 6A 01 51 6A 00 6A 00 68 ? ? ? ?  8D 4C 24 24 E8 ? ? ? ? 50 8B CE E8 ? ? ? ?
state("prototypef") {
	int Time: "prototypeenginef.dll", 0x12837EC, 0x18, 0x0, 0x4, 0x4, 0x4, 0x0, 0x0, 0x0, 0x0, 0x18, 0x30, 0x4;
}

init {
	vars.tempTime = 0;
}

update {
	if (current.Time > 0) {
		vars.tempTime = current.Time;
	}
}

isLoading {
	return true;
}

gameTime {
        return TimeSpan.FromMilliseconds(vars.tempTime);
}
