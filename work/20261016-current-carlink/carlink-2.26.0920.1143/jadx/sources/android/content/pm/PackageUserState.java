package android.content.pm;

import android.util.ArraySet;
import com.android.internal.util.ArrayUtils;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class PackageUserState {
    public int appLinkGeneration;
    public int categoryHint;
    public long ceDataInode;
    public ArraySet<String> disabledComponents;
    public int domainVerificationStatus;
    public int enabled;
    public ArraySet<String> enabledComponents;
    public boolean hidden;
    public int installReason;
    public boolean installed;
    public boolean instantApp;
    public String lastDisableAppCaller;
    public boolean notLaunched;
    public String[] overlayPaths;
    public boolean stopped;
    public boolean suspended;
    public boolean virtualPreload;

    public PackageUserState() {
        this.categoryHint = -1;
        this.installed = true;
        this.hidden = false;
        this.suspended = false;
        this.enabled = 0;
        this.domainVerificationStatus = 0;
        this.installReason = 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PackageUserState)) {
            return false;
        }
        PackageUserState packageUserState = (PackageUserState) obj;
        if (this.ceDataInode != packageUserState.ceDataInode || this.installed != packageUserState.installed || this.stopped != packageUserState.stopped || this.notLaunched != packageUserState.notLaunched || this.hidden != packageUserState.hidden || this.suspended != packageUserState.suspended || this.instantApp != packageUserState.instantApp || this.virtualPreload != packageUserState.virtualPreload || this.enabled != packageUserState.enabled) {
            return false;
        }
        String str = this.lastDisableAppCaller;
        if ((str == null && packageUserState.lastDisableAppCaller != null) || ((str != null && !str.equals(packageUserState.lastDisableAppCaller)) || this.domainVerificationStatus != packageUserState.domainVerificationStatus || this.appLinkGeneration != packageUserState.appLinkGeneration || this.categoryHint != packageUserState.categoryHint || this.installReason != packageUserState.installReason)) {
            return false;
        }
        ArraySet<String> arraySet = this.disabledComponents;
        if ((arraySet == null && packageUserState.disabledComponents != null) || (arraySet != null && packageUserState.disabledComponents == null)) {
            return false;
        }
        if (arraySet != null) {
            if (arraySet.size() != packageUserState.disabledComponents.size()) {
                return false;
            }
            for (int size = this.disabledComponents.size() - 1; size >= 0; size--) {
                if (!packageUserState.disabledComponents.contains(this.disabledComponents.valueAt(size))) {
                    return false;
                }
            }
        }
        ArraySet<String> arraySet2 = this.enabledComponents;
        if ((arraySet2 == null && packageUserState.enabledComponents != null) || (arraySet2 != null && packageUserState.enabledComponents == null)) {
            return false;
        }
        if (arraySet2 != null) {
            if (arraySet2.size() != packageUserState.enabledComponents.size()) {
                return false;
            }
            for (int size2 = this.enabledComponents.size() - 1; size2 >= 0; size2--) {
                if (!packageUserState.enabledComponents.contains(this.enabledComponents.valueAt(size2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean isAvailable(int i2) {
        boolean z2 = (4194304 & i2) != 0;
        boolean z3 = (i2 & 8192) != 0;
        if (z2) {
            return true;
        }
        return this.installed && (!this.hidden || z3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0019, code lost:
    
        if ((r6 & 32768) == 0) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isEnabled(android.content.pm.ComponentInfo r5, int r6) {
        /*
            r4 = this;
            r0 = r6 & 512(0x200, float:7.175E-43)
            r1 = 1
            if (r0 == 0) goto L6
            return r1
        L6:
            int r0 = r4.enabled
            r2 = 0
            if (r0 == 0) goto L1c
            r3 = 2
            if (r0 == r3) goto L1b
            r3 = 3
            if (r0 == r3) goto L1b
            r3 = 4
            if (r0 == r3) goto L15
            goto L23
        L15:
            r0 = 32768(0x8000, float:4.5918E-41)
            r6 = r6 & r0
            if (r6 != 0) goto L1c
        L1b:
            return r2
        L1c:
            android.content.pm.ApplicationInfo r6 = r5.applicationInfo
            boolean r6 = r6.enabled
            if (r6 != 0) goto L23
            return r2
        L23:
            android.util.ArraySet<java.lang.String> r6 = r4.enabledComponents
            java.lang.String r0 = r5.name
            boolean r6 = com.android.internal.util.ArrayUtils.contains(r6, r0)
            if (r6 == 0) goto L2e
            return r1
        L2e:
            android.util.ArraySet<java.lang.String> r6 = r4.disabledComponents
            java.lang.String r0 = r5.name
            boolean r6 = com.android.internal.util.ArrayUtils.contains(r6, r0)
            if (r6 == 0) goto L39
            return r2
        L39:
            boolean r5 = r5.enabled
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: android.content.pm.PackageUserState.isEnabled(android.content.pm.ComponentInfo, int):boolean");
    }

    public boolean isMatch(ComponentInfo componentInfo, int i2) {
        boolean zIsSystemApp = componentInfo.applicationInfo.isSystemApp();
        boolean z2 = (4202496 & i2) != 0;
        if ((!isAvailable(i2) && (!zIsSystemApp || !z2)) || !isEnabled(componentInfo, i2)) {
            return false;
        }
        if ((1048576 & i2) == 0 || zIsSystemApp) {
            return ((262144 & i2) != 0 && !componentInfo.directBootAware) || ((i2 & 524288) != 0 && componentInfo.directBootAware);
        }
        return false;
    }

    public PackageUserState(PackageUserState packageUserState) {
        this.categoryHint = -1;
        this.ceDataInode = packageUserState.ceDataInode;
        this.installed = packageUserState.installed;
        this.stopped = packageUserState.stopped;
        this.notLaunched = packageUserState.notLaunched;
        this.hidden = packageUserState.hidden;
        this.suspended = packageUserState.suspended;
        this.instantApp = packageUserState.instantApp;
        this.virtualPreload = packageUserState.virtualPreload;
        this.enabled = packageUserState.enabled;
        this.lastDisableAppCaller = packageUserState.lastDisableAppCaller;
        this.domainVerificationStatus = packageUserState.domainVerificationStatus;
        this.appLinkGeneration = packageUserState.appLinkGeneration;
        this.categoryHint = packageUserState.categoryHint;
        this.installReason = packageUserState.installReason;
        this.disabledComponents = ArrayUtils.cloneOrNull(packageUserState.disabledComponents);
        this.enabledComponents = ArrayUtils.cloneOrNull(packageUserState.enabledComponents);
        String[] strArr = packageUserState.overlayPaths;
        this.overlayPaths = strArr == null ? null : (String[]) Arrays.copyOf(strArr, strArr.length);
    }
}
