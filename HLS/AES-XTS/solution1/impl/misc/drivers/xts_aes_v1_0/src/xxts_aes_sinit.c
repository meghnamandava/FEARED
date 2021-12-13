// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xxts_aes.h"

extern XXts_aes_Config XXts_aes_ConfigTable[];

XXts_aes_Config *XXts_aes_LookupConfig(u16 DeviceId) {
	XXts_aes_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XXTS_AES_NUM_INSTANCES; Index++) {
		if (XXts_aes_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XXts_aes_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XXts_aes_Initialize(XXts_aes *InstancePtr, u16 DeviceId) {
	XXts_aes_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XXts_aes_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XXts_aes_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

