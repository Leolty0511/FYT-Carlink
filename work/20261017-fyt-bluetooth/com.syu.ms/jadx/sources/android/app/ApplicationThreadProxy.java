package android.app;

import android.content.ComponentName;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Debug;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import java.io.FileDescriptor;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class ApplicationThreadProxy implements IApplicationThread {
    private final IBinder mRemote;

    public ApplicationThreadProxy(IBinder iBinder) {
        this.mRemote = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.mRemote;
    }

    @Override // android.app.IApplicationThread
    public final void bindApplication(String str, ApplicationInfo applicationInfo, List<ProviderInfo> list, ComponentName componentName, String str2, ParcelFileDescriptor parcelFileDescriptor, boolean z2, Bundle bundle, IInstrumentationWatcher iInstrumentationWatcher, IUiAutomationConnection iUiAutomationConnection, int i2, boolean z3, boolean z4, boolean z5, Configuration configuration, CompatibilityInfo compatibilityInfo, Map<String, IBinder> map, Bundle bundle2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeString(str);
        applicationInfo.writeToParcel(parcelObtain, 0);
        parcelObtain.writeTypedList(list);
        if (componentName == null) {
            parcelObtain.writeInt(0);
        } else {
            parcelObtain.writeInt(1);
            componentName.writeToParcel(parcelObtain, 0);
        }
        parcelObtain.writeString(str2);
        if (parcelFileDescriptor != null) {
            parcelObtain.writeInt(1);
            parcelFileDescriptor.writeToParcel(parcelObtain, 1);
        } else {
            parcelObtain.writeInt(0);
        }
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeBundle(bundle);
        parcelObtain.writeStrongInterface(iInstrumentationWatcher);
        parcelObtain.writeStrongInterface(iUiAutomationConnection);
        parcelObtain.writeInt(i2);
        parcelObtain.writeInt(z3 ? 1 : 0);
        parcelObtain.writeInt(z4 ? 1 : 0);
        parcelObtain.writeInt(z5 ? 1 : 0);
        configuration.writeToParcel(parcelObtain, 0);
        compatibilityInfo.writeToParcel(parcelObtain, 0);
        parcelObtain.writeMap(map);
        parcelObtain.writeBundle(bundle2);
        this.mRemote.transact(13, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void clearDnsCache() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        this.mRemote.transact(38, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void dispatchPackageBroadcast(int i2, String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeInt(i2);
        parcelObtain.writeStringArray(strArr);
        this.mRemote.transact(34, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void dumpActivity(FileDescriptor fileDescriptor, IBinder iBinder, String str, String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeFileDescriptor(fileDescriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeString(str);
        parcelObtain.writeStringArray(strArr);
        this.mRemote.transact(37, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void dumpDbInfo(FileDescriptor fileDescriptor, String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeFileDescriptor(fileDescriptor);
        parcelObtain.writeStringArray(strArr);
        this.mRemote.transact(46, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void dumpGfxInfo(FileDescriptor fileDescriptor, String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeFileDescriptor(fileDescriptor);
        parcelObtain.writeStringArray(strArr);
        this.mRemote.transact(44, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void dumpHeap(boolean z2, String str, ParcelFileDescriptor parcelFileDescriptor) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeString(str);
        if (parcelFileDescriptor != null) {
            parcelObtain.writeInt(1);
            parcelFileDescriptor.writeToParcel(parcelObtain, 1);
        } else {
            parcelObtain.writeInt(0);
        }
        this.mRemote.transact(36, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void dumpMemInfo(FileDescriptor fileDescriptor, Debug.MemoryInfo memoryInfo, boolean z2, boolean z3, boolean z4, String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeFileDescriptor(fileDescriptor);
        memoryInfo.writeToParcel(parcelObtain, 0);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeInt(z3 ? 1 : 0);
        parcelObtain.writeInt(z4 ? 1 : 0);
        parcelObtain.writeStringArray(strArr);
        this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
        parcelObtain2.readException();
        parcelObtain.recycle();
        parcelObtain2.recycle();
    }

    @Override // android.app.IApplicationThread
    public void dumpProvider(FileDescriptor fileDescriptor, IBinder iBinder, String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeFileDescriptor(fileDescriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeStringArray(strArr);
        this.mRemote.transact(45, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void dumpService(FileDescriptor fileDescriptor, IBinder iBinder, String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeFileDescriptor(fileDescriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeStringArray(strArr);
        this.mRemote.transact(22, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void processInBackground() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        this.mRemote.transact(19, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void profilerControl(boolean z2, String str, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeInt(i2);
        parcelObtain.writeString(str);
        if (parcelFileDescriptor != null) {
            parcelObtain.writeInt(1);
            parcelFileDescriptor.writeToParcel(parcelObtain, 1);
        } else {
            parcelObtain.writeInt(0);
        }
        this.mRemote.transact(28, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void requestAssistContextExtras(IBinder iBinder, IBinder iBinder2, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeStrongBinder(iBinder2);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(48, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void requestThumbnail(IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        this.mRemote.transact(15, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleActivityConfigurationChanged(IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        this.mRemote.transact(25, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleBindService(IBinder iBinder, Intent intent, boolean z2, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        intent.writeToParcel(parcelObtain, 0);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(20, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleConfigurationChanged(Configuration configuration) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        configuration.writeToParcel(parcelObtain, 0);
        this.mRemote.transact(16, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void scheduleCrash(String str) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeString(str);
        this.mRemote.transact(35, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleCreateBackupAgent(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        applicationInfo.writeToParcel(parcelObtain, 0);
        compatibilityInfo.writeToParcel(parcelObtain, 0);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(30, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleCreateService(IBinder iBinder, ServiceInfo serviceInfo, CompatibilityInfo compatibilityInfo, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        serviceInfo.writeToParcel(parcelObtain, 0);
        compatibilityInfo.writeToParcel(parcelObtain, 0);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(11, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleDestroyActivity(IBinder iBinder, boolean z2, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(9, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleDestroyBackupAgent(ApplicationInfo applicationInfo, CompatibilityInfo compatibilityInfo) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        applicationInfo.writeToParcel(parcelObtain, 0);
        compatibilityInfo.writeToParcel(parcelObtain, 0);
        this.mRemote.transact(31, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleExit() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        this.mRemote.transact(14, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void scheduleInstallProvider(ProviderInfo providerInfo) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        providerInfo.writeToParcel(parcelObtain, 0);
        this.mRemote.transact(51, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleLaunchActivity(Intent intent, IBinder iBinder, int i2, ActivityInfo activityInfo, Configuration configuration, CompatibilityInfo compatibilityInfo, int i3, Bundle bundle, List<ResultInfo> list, List<Intent> list2, boolean z2, boolean z3, String str, ParcelFileDescriptor parcelFileDescriptor, boolean z4) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        intent.writeToParcel(parcelObtain, 0);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeInt(i2);
        activityInfo.writeToParcel(parcelObtain, 0);
        configuration.writeToParcel(parcelObtain, 0);
        compatibilityInfo.writeToParcel(parcelObtain, 0);
        parcelObtain.writeInt(i3);
        parcelObtain.writeBundle(bundle);
        parcelObtain.writeTypedList(list);
        parcelObtain.writeTypedList(list2);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeInt(z3 ? 1 : 0);
        parcelObtain.writeString(str);
        if (parcelFileDescriptor != null) {
            parcelObtain.writeInt(1);
            parcelFileDescriptor.writeToParcel(parcelObtain, 1);
        } else {
            parcelObtain.writeInt(0);
        }
        parcelObtain.writeInt(z4 ? 1 : 0);
        this.mRemote.transact(7, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleLowMemory() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        this.mRemote.transact(24, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void scheduleNewIntent(List<Intent> list, IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeTypedList(list);
        parcelObtain.writeStrongBinder(iBinder);
        this.mRemote.transact(8, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void schedulePauseActivity(IBinder iBinder, boolean z2, boolean z3, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeInt(z3 ? 1 : 0);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(1, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleReceiver(Intent intent, ActivityInfo activityInfo, CompatibilityInfo compatibilityInfo, int i2, String str, Bundle bundle, boolean z2, int i3, int i4) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        intent.writeToParcel(parcelObtain, 0);
        activityInfo.writeToParcel(parcelObtain, 0);
        compatibilityInfo.writeToParcel(parcelObtain, 0);
        parcelObtain.writeInt(i2);
        parcelObtain.writeString(str);
        parcelObtain.writeBundle(bundle);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeInt(i3);
        parcelObtain.writeInt(i4);
        this.mRemote.transact(10, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void scheduleRegisteredReceiver(IIntentReceiver iIntentReceiver, Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, int i3, int i4) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iIntentReceiver.asBinder());
        intent.writeToParcel(parcelObtain, 0);
        parcelObtain.writeInt(i2);
        parcelObtain.writeString(str);
        parcelObtain.writeBundle(bundle);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeInt(z3 ? 1 : 0);
        parcelObtain.writeInt(i3);
        parcelObtain.writeInt(i4);
        this.mRemote.transact(23, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleRelaunchActivity(IBinder iBinder, List<ResultInfo> list, List<Intent> list2, int i2, boolean z2, Configuration configuration) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeTypedList(list);
        parcelObtain.writeTypedList(list2);
        parcelObtain.writeInt(i2);
        parcelObtain.writeInt(z2 ? 1 : 0);
        if (configuration != null) {
            parcelObtain.writeInt(1);
            configuration.writeToParcel(parcelObtain, 0);
        } else {
            parcelObtain.writeInt(0);
        }
        this.mRemote.transact(26, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleResumeActivity(IBinder iBinder, int i2, boolean z2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeInt(i2);
        parcelObtain.writeInt(z2 ? 1 : 0);
        this.mRemote.transact(5, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleSendResult(IBinder iBinder, List<ResultInfo> list) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeTypedList(list);
        this.mRemote.transact(6, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleServiceArgs(IBinder iBinder, boolean z2, int i2, int i3, Intent intent) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeInt(i2);
        parcelObtain.writeInt(i3);
        if (intent != null) {
            parcelObtain.writeInt(1);
            intent.writeToParcel(parcelObtain, 0);
        } else {
            parcelObtain.writeInt(0);
        }
        this.mRemote.transact(17, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleSleeping(IBinder iBinder, boolean z2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeInt(z2 ? 1 : 0);
        this.mRemote.transact(27, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleStopActivity(IBinder iBinder, boolean z2, int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeInt(z2 ? 1 : 0);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(3, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleStopService(IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        this.mRemote.transact(12, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleSuicide() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        this.mRemote.transact(33, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void scheduleTranslucentConversionComplete(IBinder iBinder, boolean z2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeInt(z2 ? 1 : 0);
        this.mRemote.transact(49, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void scheduleTrimMemory(int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(42, parcelObtain, null, 1);
    }

    @Override // android.app.IApplicationThread
    public final void scheduleUnbindService(IBinder iBinder, Intent intent) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        intent.writeToParcel(parcelObtain, 0);
        this.mRemote.transact(21, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public final void scheduleWindowVisibility(IBinder iBinder, boolean z2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        parcelObtain.writeInt(z2 ? 1 : 0);
        this.mRemote.transact(4, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void setCoreSettings(Bundle bundle) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeBundle(bundle);
        this.mRemote.transact(40, parcelObtain, null, 1);
    }

    @Override // android.app.IApplicationThread
    public void setHttpProxy(String str, String str2, String str3, String str4) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeString(str);
        parcelObtain.writeString(str2);
        parcelObtain.writeString(str3);
        parcelObtain.writeString(str4);
        this.mRemote.transact(39, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void setProcessState(int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(50, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void setSchedulingGroup(int i2) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeInt(i2);
        this.mRemote.transact(29, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void unstableProviderDied(IBinder iBinder) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeStrongBinder(iBinder);
        this.mRemote.transact(47, parcelObtain, null, 1);
        parcelObtain.recycle();
    }

    @Override // android.app.IApplicationThread
    public void updatePackageCompatibilityInfo(String str, CompatibilityInfo compatibilityInfo) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        parcelObtain.writeString(str);
        compatibilityInfo.writeToParcel(parcelObtain, 0);
        this.mRemote.transact(41, parcelObtain, null, 1);
    }

    @Override // android.app.IApplicationThread
    public void updateTimeZone() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(IApplicationThread.descriptor);
        this.mRemote.transact(18, parcelObtain, null, 1);
        parcelObtain.recycle();
    }
}
