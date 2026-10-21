package com.syu.app;

import com.lsec.core.ipc.IRegisterModuleCallBack;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.lsec.core.ipc.module.main.Sound;
import com.lsec.core.ipc.module.sys.Sys;
import com.lsec.core.ipc786.module.Bt786;
import com.lsec.core.ipc786.module.Main786;
import com.syu.ipc.ICallback;
import com.syu.ipc.IModuleCallback;
import com.syu.ipc.IRegisterCallBack;

/* JADX INFO: loaded from: classes.dex */
public class RegCode {
    static final int[] CODE_Main = {50, 0, 12, 60, 1, 2, 43, 4, 166};
    static final int[] CODE_Bt = {34, 20, 21, 22, 31, 1, 26, 0, 13, 28, 2, 33, 18, 15, 14, 25, 29, 6, 7, 8, 9, 16, 35, 19, 24, 5, 12, 36, 42, 43, 44, 46, 47, 49, 50, 51, 58, 61, 62, 63, 64, 65, 67, 69};
    static final int[] CODE_Sound = {13, 11, 12, 0, 24, 2, 10, 60};
    static final int[] CODE_Unicar = {0, 1, 2, 3};
    static final int[] CODE_Sys = new int[1];
    static final int[] CODE_Main_786 = {3, 0, 2, 1};
    static final int[] CODE_Bt_786 = {11, 12, 2, 4, 13, 15, 6, 19, 18, 14, 23, 5, 1, 8, 22, 21, 9};
    public static IRegisterModuleCallBack mRegister_Main = new IRegisterModuleCallBack() { // from class: com.syu.app.RegCode.1
        @Override // com.lsec.core.ipc.IRegisterModuleCallBack
        public void register(IModuleCallback callback) {
            for (int updateCode : RegCode.CODE_Main) {
                Main.PROXY.register(callback, updateCode, 1);
            }
        }
    };
    public static IRegisterModuleCallBack mRegister_Sound = new IRegisterModuleCallBack() { // from class: com.syu.app.RegCode.2
        @Override // com.lsec.core.ipc.IRegisterModuleCallBack
        public void register(IModuleCallback callback) {
            for (int updateCode : RegCode.CODE_Sound) {
                Sound.PROXY.register(callback, updateCode, 1);
            }
        }
    };
    public static IRegisterModuleCallBack mRegister_Bt = new IRegisterModuleCallBack() { // from class: com.syu.app.RegCode.3
        @Override // com.lsec.core.ipc.IRegisterModuleCallBack
        public void register(IModuleCallback callback) {
            for (int updateCode : RegCode.CODE_Bt) {
                Bt.PROXY.register(callback, updateCode, 1);
            }
        }
    };
    public static IRegisterModuleCallBack mRegister_Sys = new IRegisterModuleCallBack() { // from class: com.syu.app.RegCode.4
        @Override // com.lsec.core.ipc.IRegisterModuleCallBack
        public void register(IModuleCallback callback) {
            for (int updateCode : RegCode.CODE_Sys) {
                Sys.PROXY.register(callback, updateCode, 1);
            }
        }
    };
    public static IRegisterCallBack mRegister_Main_786 = new IRegisterCallBack() { // from class: com.syu.app.RegCode.5
        @Override // com.syu.ipc.IRegisterCallBack
        public void register(ICallback callback) {
            for (int updateCode : RegCode.CODE_Main_786) {
                Main786.hInstance.registerCallback(callback, updateCode, true);
            }
        }
    };
    public static IRegisterCallBack mRegister_Bt_786 = new IRegisterCallBack() { // from class: com.syu.app.RegCode.6
        @Override // com.syu.ipc.IRegisterCallBack
        public void register(ICallback callback) {
            for (int updateCode : RegCode.CODE_Bt_786) {
                Bt786.hInstance.registerCallback(callback, updateCode, true);
            }
        }
    };
}
