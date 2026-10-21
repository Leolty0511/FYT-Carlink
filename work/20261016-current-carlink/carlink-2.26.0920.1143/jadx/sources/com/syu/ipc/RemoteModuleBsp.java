package com.syu.ipc;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public class RemoteModuleBsp extends IRemoteModule.Stub {
    private static final RemoteModuleBsp INSTANCE = new RemoteModuleBsp();

    private RemoteModuleBsp() {
    }

    public static RemoteModuleBsp getInstance() {
        return INSTANCE;
    }

    @Override // com.syu.ipc.IRemoteModule
    public void cmd(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // com.syu.ipc.IRemoteModule
    public ModuleObject get(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // com.syu.ipc.IRemoteModule
    public void register(IModuleCallback iModuleCallback, int i2, int i3) {
        Log.i("fyt_service", "----register register----");
        if (iModuleCallback != null && i2 >= 0 && i2 < 10) {
            ModuleCallbackList[] moduleCallbackListArr = DataSyu.MCLS;
            if (moduleCallbackListArr[i2] == null) {
                synchronized (this) {
                    if (moduleCallbackListArr[i2] == null) {
                        moduleCallbackListArr[i2] = new ModuleCallbackList();
                    }
                }
            }
            moduleCallbackListArr[i2].register(iModuleCallback);
            if (i3 != 0 && i2 == 4) {
                ModuleCallbackList.update(moduleCallbackListArr, i2, (int[]) null, (float[]) null, new String[]{DataSyu.vechile});
            }
        }
    }

    @Override // com.syu.ipc.IRemoteModule
    public void unregister(IModuleCallback iModuleCallback, int i2) {
        ModuleCallbackList moduleCallbackList;
        if (iModuleCallback == null || (moduleCallbackList = DataSyu.MCLS[i2]) == null) {
            return;
        }
        moduleCallbackList.unregister(iModuleCallback);
    }
}
