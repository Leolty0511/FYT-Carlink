package com.syu.ipc;

import android.os.RemoteCallbackList;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
public class ModuleCallbackList extends RemoteCallbackList<IModuleCallback> {
    public void update(int i2, int i3) {
        updateAll(i2, new int[]{i3}, null, null);
    }

    public static void update(ModuleCallbackList[] moduleCallbackListArr, int i2, int i3) {
        ModuleCallbackList moduleCallbackList;
        if (moduleCallbackListArr == null || i2 < 0 || i2 >= moduleCallbackListArr.length || (moduleCallbackList = moduleCallbackListArr[i2]) == null) {
            return;
        }
        moduleCallbackList.updateAll(i2, new int[]{i3}, null, null);
    }

    @Override // android.os.RemoteCallbackList
    public synchronized boolean register(IModuleCallback iModuleCallback) {
        return super.register(iModuleCallback);
    }

    @Override // android.os.RemoteCallbackList
    public synchronized boolean unregister(IModuleCallback iModuleCallback) {
        return super.unregister(iModuleCallback);
    }

    @Override // android.os.RemoteCallbackList
    public void updateOne(IModuleCallback iModuleCallback, int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (iModuleCallback == null) {
            return;
        }
        try {
            iModuleCallback.update(i2, iArr, fArr, strArr);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    public static void update(ModuleCallbackList[] moduleCallbackListArr, int[] iArr, int i2, int i3) {
        ModuleCallbackList moduleCallbackList;
        if (iArr == null || i2 < 0 || i2 >= iArr.length || iArr[i2] == i3) {
            return;
        }
        iArr[i2] = i3;
        if (moduleCallbackListArr == null || i2 >= moduleCallbackListArr.length || (moduleCallbackList = moduleCallbackListArr[i2]) == null) {
            return;
        }
        moduleCallbackList.updateAll(i2, new int[]{i3}, null, null);
    }

    public static void update(ModuleCallbackList[] moduleCallbackListArr, int i2, int i3, int i4) {
        ModuleCallbackList moduleCallbackList;
        if (moduleCallbackListArr == null || i2 < 0 || i2 >= moduleCallbackListArr.length || (moduleCallbackList = moduleCallbackListArr[i2]) == null) {
            return;
        }
        moduleCallbackList.updateAll(i2, new int[]{i3, i4}, null, null);
    }

    public static void update(ModuleCallbackList[] moduleCallbackListArr, int i2, int[] iArr) {
        ModuleCallbackList moduleCallbackList;
        if (moduleCallbackListArr == null || i2 < 0 || i2 >= moduleCallbackListArr.length || (moduleCallbackList = moduleCallbackListArr[i2]) == null) {
            return;
        }
        moduleCallbackList.updateAll(i2, iArr, null, null);
    }

    public static void update(ModuleCallbackList[] moduleCallbackListArr, int i2, String str) {
        ModuleCallbackList moduleCallbackList;
        if (moduleCallbackListArr == null || i2 < 0 || i2 >= moduleCallbackListArr.length || (moduleCallbackList = moduleCallbackListArr[i2]) == null) {
            return;
        }
        moduleCallbackList.updateAll(i2, null, null, new String[]{str});
    }

    public static void update(ModuleCallbackList[] moduleCallbackListArr, int i2, int[] iArr, float[] fArr, String[] strArr) {
        ModuleCallbackList moduleCallbackList;
        if (moduleCallbackListArr == null || i2 < 0 || i2 >= moduleCallbackListArr.length || (moduleCallbackList = moduleCallbackListArr[i2]) == null) {
            return;
        }
        moduleCallbackList.updateAll(i2, iArr, fArr, strArr);
    }

    public static void update(IModuleCallback iModuleCallback, int i2, int i3) {
        if (iModuleCallback != null) {
            synchronized (iModuleCallback) {
                try {
                    iModuleCallback.update(i2, new int[]{i3}, null, null);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void update(IModuleCallback iModuleCallback, int i2, int i3, int i4) {
        if (iModuleCallback != null) {
            synchronized (iModuleCallback) {
                try {
                    iModuleCallback.update(i2, new int[]{i3, i4}, null, null);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void update(IModuleCallback iModuleCallback, int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (iModuleCallback != null) {
            synchronized (iModuleCallback) {
                try {
                    iModuleCallback.update(i2, iArr, fArr, strArr);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void update(IModuleCallback iModuleCallback, int i2, int[] iArr) {
        if (iModuleCallback != null) {
            synchronized (iModuleCallback) {
                try {
                    iModuleCallback.update(i2, iArr, null, null);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void update(IModuleCallback iModuleCallback, int i2, String str) {
        if (iModuleCallback != null) {
            synchronized (iModuleCallback) {
                try {
                    iModuleCallback.update(i2, null, null, new String[]{str});
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void update(IModuleCallback iModuleCallback, int i2, int i3, String str) {
        if (iModuleCallback != null) {
            synchronized (iModuleCallback) {
                try {
                    iModuleCallback.update(i2, new int[]{i3}, null, new String[]{str});
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
