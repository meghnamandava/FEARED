// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XXTS_AES_H
#define XXTS_AES_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xxts_aes_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XXts_aes_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XXts_aes;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XXts_aes_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XXts_aes_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XXts_aes_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XXts_aes_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XXts_aes_Initialize(XXts_aes *InstancePtr, u16 DeviceId);
XXts_aes_Config* XXts_aes_LookupConfig(u16 DeviceId);
int XXts_aes_CfgInitialize(XXts_aes *InstancePtr, XXts_aes_Config *ConfigPtr);
#else
int XXts_aes_Initialize(XXts_aes *InstancePtr, const char* InstanceName);
int XXts_aes_Release(XXts_aes *InstancePtr);
#endif

void XXts_aes_Start(XXts_aes *InstancePtr);
u32 XXts_aes_IsDone(XXts_aes *InstancePtr);
u32 XXts_aes_IsIdle(XXts_aes *InstancePtr);
u32 XXts_aes_IsReady(XXts_aes *InstancePtr);
void XXts_aes_EnableAutoRestart(XXts_aes *InstancePtr);
void XXts_aes_DisableAutoRestart(XXts_aes *InstancePtr);

void XXts_aes_Set_key_V(XXts_aes *InstancePtr, u32 Data);
u32 XXts_aes_Get_key_V(XXts_aes *InstancePtr);
void XXts_aes_Set_tweak_V(XXts_aes *InstancePtr, u32 Data);
u32 XXts_aes_Get_tweak_V(XXts_aes *InstancePtr);
void XXts_aes_Set_text_V(XXts_aes *InstancePtr, u32 Data);
u32 XXts_aes_Get_text_V(XXts_aes *InstancePtr);
void XXts_aes_Set_mode_V(XXts_aes *InstancePtr, u32 Data);
u32 XXts_aes_Get_mode_V(XXts_aes *InstancePtr);
void XXts_aes_Set_text_len_V(XXts_aes *InstancePtr, u32 Data);
u32 XXts_aes_Get_text_len_V(XXts_aes *InstancePtr);
void XXts_aes_Set_data_ret_V(XXts_aes *InstancePtr, u32 Data);
u32 XXts_aes_Get_data_ret_V(XXts_aes *InstancePtr);

void XXts_aes_InterruptGlobalEnable(XXts_aes *InstancePtr);
void XXts_aes_InterruptGlobalDisable(XXts_aes *InstancePtr);
void XXts_aes_InterruptEnable(XXts_aes *InstancePtr, u32 Mask);
void XXts_aes_InterruptDisable(XXts_aes *InstancePtr, u32 Mask);
void XXts_aes_InterruptClear(XXts_aes *InstancePtr, u32 Mask);
u32 XXts_aes_InterruptGetEnabled(XXts_aes *InstancePtr);
u32 XXts_aes_InterruptGetStatus(XXts_aes *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
