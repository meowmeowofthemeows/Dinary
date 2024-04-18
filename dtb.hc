extern "c" U0 *scanf(U8 *char);
I64 len(U8 *str) {
	I64 i = 0; while (*str != '') { str++; i++; } return i;
}
I64 int(U8 *str) {
	I64 int = 0;
	for (I16 j = 0; j < len(str); j++) {
		if (j == 0) {
			int = str[j] - 48;
		} else {
			int = int * 10 + (str[j] - 48);
		}
	}
	return int;
}
U8 char(I8 int) {
	U8 char = int + 48;
	return char;
}
U0 numchck(U8 *str) {
	for (I16 k = 0; k < len(str); k++) {
		if (!(47 < str[k] < 58)) {
			0/0;
		}
	}
}
U0 main() {
	U8 *str = "\0";
	"Allowed characters: 0-9: ";
	scanf("%s",str);
	numchck(str);
	I64 dec = int(str);
	U8 *bin_str = "\0";
	while (dec > 0) {
		I8 bin = dec % 2;
		dec = dec / 2;
		bin_str--;
		bin_str[0] = char(bin);
	}
	"%s\n",bin_str;
}
