// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xxts_aes.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XXts_aes_CfgInitialize(XXts_aes *InstancePtr, XXts_aes_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XXts_aes_Start(XXts_aes *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_AP_CTRL) & 0x80;
    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XXts_aes_IsDone(XXts_aes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XXts_aes_IsIdle(XXts_aes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XXts_aes_IsReady(XXts_aes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XXts_aes_EnableAutoRestart(XXts_aes *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_AP_CTRL, 0x80);
}

void XXts_aes_DisableAutoRestart(XXts_aes *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_AP_CTRL, 0);
}

void XXts_aes_Set_key_V(XXts_aes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_KEY_V_DATA, Data);
}

u32 XXts_aes_Get_key_V(XXts_aes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_KEY_V_DATA);
    return Data;
}

void XXts_aes_Set_tweak_V(XXts_aes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_TWEAK_V_DATA, Data);
}

u32 XXts_aes_Get_tweak_V(XXts_aes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_TWEAK_V_DATA);
    return Data;
}

void XXts_aes_Set_text_V(XXts_aes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_TEXT_V_DATA, Data);
}

u32 XXts_aes_Get_text_V(XXts_aes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_TEXT_V_DATA);
    return Data;
}

void XXts_aes_Set_mode_V(XXts_aes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_MODE_V_DATA, Data);
}

u32 XXts_aes_Get_mode_V(XXts_aes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_MODE_V_DATA);
    return Data;
}

void XXts_aes_Set_text_len_V(XXts_aes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_TEXT_LEN_V_DATA, Data);
}

u32 XXts_aes_Get_text_len_V(XXts_aes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_TEXT_LEN_V_DATA);
    return Data;
}

void XXts_aes_Set_data_ret_V(XXts_aes *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_DATA_RET_V_DATA, Data);
}

u32 XXts_aes_Get_data_ret_V(XXts_aes *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_DATA_RET_V_DATA);
    return Data;
}

void XXts_aes_InterruptGlobalEnable(XXts_aes *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_GIE, 1);
}

void XXts_aes_InterruptGlobalDisable(XXts_aes *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_GIE, 0);
}

void XXts_aes_InterruptEnable(XXts_aes *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_IER);
    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_IER, Register | Mask);
}

void XXts_aes_InterruptDisable(XXts_aes *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_IER);
    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_IER, Register & (~Mask));
}

void XXts_aes_InterruptClear(XXts_aes *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XXts_aes_WriteReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_ISR, Mask);
}

u32 XXts_aes_InterruptGetEnabled(XXts_aes *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_IER);
}

u32 XXts_aes_InterruptGetStatus(XXts_aes *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XXts_aes_ReadReg(InstancePtr->Ctrl_BaseAddress, XXTS_AES_CTRL_ADDR_ISR);
}

