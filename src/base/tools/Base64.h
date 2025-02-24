static const unsigned char pr2six[256] =
{
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64,
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64,
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 62, 64, 64, 64, 63,
	52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 64, 64, 64, 64, 64, 64,
	64,  0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14,
	15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 64, 64, 64, 64, 64,
	64, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
	41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 64, 64, 64, 64, 64,
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64,
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64,
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64,
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64,
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64,
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64,
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64,
	64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64
};

namespace {
	int move_0399_len(const char *bufcoded)
	{
		int nbytesdecoded;
		const unsigned char *bufin;
		int nprbytes;

		bufin = (const unsigned char *)bufcoded;
		while (pr2six[*(bufin++)] <= 63);

		nprbytes = (bufin - (const unsigned char *)bufcoded) - 1;
		nbytesdecoded = ((nprbytes + 3) / 4) * 3;

		return nbytesdecoded;
	}
	int move_0399(char* bufplain, const char* bufcoded)
	{
		int nbytesdecoded;
		const unsigned char* bufin;
		unsigned char* bufout;
		int nprbytes;

		bufin = (const unsigned char*)bufcoded;
		while (pr2six[*(bufin++)] <= 63);
		nprbytes = (bufin - (const unsigned char*)bufcoded) - 1;
		nbytesdecoded = ((nprbytes + 3) / 4) * 3;

		bufout = (unsigned char*)bufplain;
		bufin = (const unsigned char*)bufcoded;

		while (nprbytes > 4) {
			*(bufout++) =
				(unsigned char)(pr2six[*bufin] << 2 | pr2six[bufin[1]] >> 4);
			*(bufout++) =
				(unsigned char)(pr2six[bufin[1]] << 4 | pr2six[bufin[2]] >> 2);
			*(bufout++) =
				(unsigned char)(pr2six[bufin[2]] << 6 | pr2six[bufin[3]]);
			bufin += 4;
			nprbytes -= 4;
		}

		if (nprbytes > 1) {
			*(bufout++) =
				(unsigned char)(pr2six[*bufin] << 2 | pr2six[bufin[1]] >> 4);
		}
		if (nprbytes > 2) {
			*(bufout++) =
				(unsigned char)(pr2six[bufin[1]] << 4 | pr2six[bufin[2]] >> 2);
		}
		if (nprbytes > 3) {
			*(bufout++) =
				(unsigned char)(pr2six[bufin[2]] << 6 | pr2six[bufin[3]]);
		}

		nbytesdecoded -= (4 - nprbytes) & 3;
		return nbytesdecoded;
	}
}
