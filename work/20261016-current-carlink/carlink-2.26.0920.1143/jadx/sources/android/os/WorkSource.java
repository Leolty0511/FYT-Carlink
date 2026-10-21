package android.os;

import android.net.wifi.WifiEnterpriseConfig;
import android.util.proto.ProtoOutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class WorkSource implements Parcelable {
    static final boolean DEBUG = false;
    static final String TAG = "WorkSource";
    static WorkSource sGoneWork;
    static WorkSource sNewbWork;
    String[] mNames;
    int mNum;
    int[] mUids;
    static final WorkSource sTmpWorkSource = new WorkSource(0);
    public static final Parcelable.Creator<WorkSource> CREATOR = new Parcelable.Creator<WorkSource>() { // from class: android.os.WorkSource.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WorkSource createFromParcel(Parcel parcel) {
            return new WorkSource(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WorkSource[] newArray(int i2) {
            return new WorkSource[i2];
        }
    };

    public WorkSource() {
        this.mNum = 0;
    }

    private static WorkSource addWork(WorkSource workSource, int i2) {
        if (workSource == null) {
            return new WorkSource(i2);
        }
        workSource.insert(workSource.mNum, i2);
        return workSource;
    }

    private int compare(WorkSource workSource, int i2, int i3) {
        int i4 = this.mUids[i2] - workSource.mUids[i3];
        return i4 != 0 ? i4 : this.mNames[i2].compareTo(workSource.mNames[i3]);
    }

    private void insert(int i2, int i3) {
        int[] iArr = this.mUids;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.mUids = iArr2;
            iArr2[0] = i3;
            this.mNum = 1;
            return;
        }
        int i4 = this.mNum;
        if (i4 < iArr.length) {
            if (i2 < i4) {
                System.arraycopy(iArr, i2, iArr, i2 + 1, i4 - i2);
            }
            this.mUids[i2] = i3;
            this.mNum++;
            return;
        }
        int[] iArr3 = new int[(i4 * 3) / 2];
        if (i2 > 0) {
            System.arraycopy(iArr, 0, iArr3, 0, i2);
        }
        int i5 = this.mNum;
        if (i2 < i5) {
            System.arraycopy(this.mUids, i2, iArr3, i2 + 1, i5 - i2);
        }
        this.mUids = iArr3;
        iArr3[i2] = i3;
        this.mNum++;
    }

    private boolean removeUids(WorkSource workSource) {
        int i2 = this.mNum;
        int[] iArr = this.mUids;
        int i3 = workSource.mNum;
        int[] iArr2 = workSource.mUids;
        int i4 = 0;
        int i5 = 0;
        boolean z2 = false;
        while (i4 < i2 && i5 < i3) {
            int i6 = iArr2[i5];
            int i7 = iArr[i4];
            if (i6 == i7) {
                i2--;
                if (i4 < i2) {
                    System.arraycopy(iArr, i4 + 1, iArr, i4, i2 - i4);
                }
                i5++;
                z2 = true;
            } else if (i6 > i7) {
                i4++;
            } else {
                i5++;
            }
        }
        this.mNum = i2;
        return z2;
    }

    private boolean removeUidsAndNames(WorkSource workSource) {
        int i2 = this.mNum;
        int[] iArr = this.mUids;
        String[] strArr = this.mNames;
        int i3 = workSource.mNum;
        int[] iArr2 = workSource.mUids;
        String[] strArr2 = workSource.mNames;
        int i4 = 0;
        int i5 = 0;
        boolean z2 = false;
        while (i4 < i2 && i5 < i3) {
            if (iArr2[i5] == iArr[i4] && strArr2[i5].equals(strArr[i4])) {
                i2--;
                if (i4 < i2) {
                    int i6 = i4 + 1;
                    int i7 = i2 - i4;
                    System.arraycopy(iArr, i6, iArr, i4, i7);
                    System.arraycopy(strArr, i6, strArr, i4, i7);
                }
                i5++;
                z2 = true;
            } else {
                int i8 = iArr2[i5];
                int i9 = iArr[i4];
                if (i8 > i9 || (i8 == i9 && strArr2[i5].compareTo(strArr[i4]) > 0)) {
                    i4++;
                } else {
                    i5++;
                }
            }
        }
        this.mNum = i2;
        return z2;
    }

    private boolean updateLocked(WorkSource workSource, boolean z2, boolean z3) {
        String[] strArr = this.mNames;
        if (strArr == null && workSource.mNames == null) {
            return updateUidsLocked(workSource, z2, z3);
        }
        if (this.mNum > 0 && strArr == null) {
            throw new IllegalArgumentException("Other " + workSource + " has names, but target " + this + " does not");
        }
        if (workSource.mNum <= 0 || workSource.mNames != null) {
            return updateUidsAndNamesLocked(workSource, z2, z3);
        }
        throw new IllegalArgumentException("Target " + this + " has names, but other " + workSource + " does not");
    }

    private boolean updateUidsAndNamesLocked(WorkSource workSource, boolean z2, boolean z3) {
        int iCompare;
        int i2 = workSource.mNum;
        int[] iArr = workSource.mUids;
        String[] strArr = workSource.mNames;
        int i3 = 0;
        int i4 = 0;
        boolean z4 = false;
        while (true) {
            int i5 = this.mNum;
            if (i3 >= i5 && i4 >= i2) {
                return z4;
            }
            if (i3 < i5) {
                if (i4 < i2) {
                    iCompare = compare(workSource, i3, i4);
                    if (iCompare > 0) {
                    }
                } else {
                    iCompare = -1;
                }
                if (z2) {
                    int i6 = i3;
                    while (iCompare < 0) {
                        sGoneWork = addWork(sGoneWork, this.mUids[i6], this.mNames[i6]);
                        i6++;
                        if (i6 >= this.mNum) {
                            break;
                        }
                        iCompare = i4 < i2 ? compare(workSource, i6, i4) : -1;
                    }
                    if (i3 < i6) {
                        int[] iArr2 = this.mUids;
                        System.arraycopy(iArr2, i6, iArr2, i3, this.mNum - i6);
                        String[] strArr2 = this.mNames;
                        System.arraycopy(strArr2, i6, strArr2, i3, this.mNum - i6);
                        this.mNum -= i6 - i3;
                    } else {
                        i3 = i6;
                    }
                    if (i3 < this.mNum && iCompare == 0) {
                        i3++;
                        i4++;
                    }
                } else {
                    if (i4 < i2 && iCompare == 0) {
                        i4++;
                    }
                    i3++;
                }
            }
            insert(i3, iArr[i4], strArr[i4]);
            if (z3) {
                sNewbWork = addWork(sNewbWork, iArr[i4], strArr[i4]);
            }
            i3++;
            i4++;
            z4 = true;
        }
    }

    private boolean updateUidsLocked(WorkSource workSource, boolean z2, boolean z3) {
        int i2 = this.mNum;
        int[] iArr = this.mUids;
        int i3 = workSource.mNum;
        int[] iArr2 = workSource.mUids;
        int i4 = 0;
        int i5 = 0;
        boolean z4 = false;
        while (true) {
            if (i4 >= i2 && i5 >= i3) {
                this.mNum = i2;
                this.mUids = iArr;
                return z4;
            }
            if (i4 >= i2 || (i5 < i3 && iArr2[i5] < iArr[i4])) {
                if (iArr == null) {
                    iArr = new int[4];
                    iArr[0] = iArr2[i5];
                } else if (i2 >= iArr.length) {
                    int[] iArr3 = new int[(iArr.length * 3) / 2];
                    if (i4 > 0) {
                        System.arraycopy(iArr, 0, iArr3, 0, i4);
                    }
                    if (i4 < i2) {
                        System.arraycopy(iArr, i4, iArr3, i4 + 1, i2 - i4);
                    }
                    iArr3[i4] = iArr2[i5];
                    iArr = iArr3;
                } else {
                    if (i4 < i2) {
                        System.arraycopy(iArr, i4, iArr, i4 + 1, i2 - i4);
                    }
                    iArr[i4] = iArr2[i5];
                }
                if (z3) {
                    sNewbWork = addWork(sNewbWork, iArr2[i5]);
                }
                i2++;
                i4++;
                i5++;
                z4 = true;
            } else if (z2) {
                int i6 = i4;
                while (i6 < i2 && (i5 >= i3 || iArr2[i5] > iArr[i6])) {
                    sGoneWork = addWork(sGoneWork, iArr[i6]);
                    i6++;
                }
                if (i4 < i6) {
                    System.arraycopy(iArr, i6, iArr, i4, i2 - i6);
                    i2 -= i6 - i4;
                } else {
                    i4 = i6;
                }
                if (i4 < i2 && i5 < i3 && iArr2[i5] == iArr[i4]) {
                    i4++;
                    i5++;
                }
            } else {
                if (i5 < i3 && iArr2[i5] == iArr[i4]) {
                    i5++;
                }
                i4++;
            }
        }
    }

    public boolean add(WorkSource workSource) {
        boolean zUpdateLocked;
        synchronized (sTmpWorkSource) {
            zUpdateLocked = updateLocked(workSource, false, false);
        }
        return zUpdateLocked;
    }

    public WorkSource addReturningNewbs(WorkSource workSource) {
        WorkSource workSource2;
        synchronized (sTmpWorkSource) {
            sNewbWork = null;
            updateLocked(workSource, false, true);
            workSource2 = sNewbWork;
        }
        return workSource2;
    }

    public void clear() {
        this.mNum = 0;
    }

    public void clearNames() {
        if (this.mNames != null) {
            this.mNames = null;
            int i2 = this.mNum;
            int i3 = 1;
            for (int i4 = 1; i4 < this.mNum; i4++) {
                int[] iArr = this.mUids;
                int i5 = iArr[i4];
                if (i5 == iArr[i4 - 1]) {
                    i2--;
                } else {
                    iArr[i3] = i5;
                    i3++;
                }
            }
            this.mNum = i2;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean diff(WorkSource workSource) {
        int i2 = this.mNum;
        if (i2 != workSource.mNum) {
            return true;
        }
        int[] iArr = this.mUids;
        int[] iArr2 = workSource.mUids;
        String[] strArr = this.mNames;
        String[] strArr2 = workSource.mNames;
        for (int i3 = 0; i3 < i2; i3++) {
            if (iArr[i3] != iArr2[i3]) {
                return true;
            }
            if (strArr != null && strArr2 != null && !strArr[i3].equals(strArr2[i3])) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        return (obj instanceof WorkSource) && !diff((WorkSource) obj);
    }

    public int get(int i2) {
        return this.mUids[i2];
    }

    public String getName(int i2) {
        String[] strArr = this.mNames;
        if (strArr != null) {
            return strArr[i2];
        }
        return null;
    }

    public int hashCode() {
        int iHashCode = 0;
        for (int i2 = 0; i2 < this.mNum; i2++) {
            iHashCode = ((iHashCode >>> 28) | (iHashCode << 4)) ^ this.mUids[i2];
        }
        if (this.mNames != null) {
            for (int i3 = 0; i3 < this.mNum; i3++) {
                iHashCode = this.mNames[i3].hashCode() ^ ((iHashCode << 4) | (iHashCode >>> 28));
            }
        }
        return iHashCode;
    }

    public boolean remove(WorkSource workSource) {
        if (this.mNum <= 0 || workSource.mNum <= 0) {
            return false;
        }
        String[] strArr = this.mNames;
        if (strArr == null && workSource.mNames == null) {
            return removeUids(workSource);
        }
        if (strArr == null) {
            throw new IllegalArgumentException("Other " + workSource + " has names, but target " + this + " does not");
        }
        if (workSource.mNames != null) {
            return removeUidsAndNames(workSource);
        }
        throw new IllegalArgumentException("Target " + this + " has names, but other " + workSource + " does not");
    }

    public void set(WorkSource workSource) {
        if (workSource == null) {
            this.mNum = 0;
            return;
        }
        int i2 = workSource.mNum;
        this.mNum = i2;
        int[] iArr = workSource.mUids;
        if (iArr == null) {
            this.mUids = null;
            this.mNames = null;
            return;
        }
        int[] iArr2 = this.mUids;
        if (iArr2 == null || iArr2.length < i2) {
            this.mUids = (int[]) iArr.clone();
        } else {
            System.arraycopy(iArr, 0, iArr2, 0, i2);
        }
        String[] strArr = workSource.mNames;
        if (strArr == null) {
            this.mNames = null;
            return;
        }
        String[] strArr2 = this.mNames;
        if (strArr2 != null) {
            int length = strArr2.length;
            int i3 = this.mNum;
            if (length >= i3) {
                System.arraycopy(strArr, 0, strArr2, 0, i3);
                return;
            }
        }
        this.mNames = (String[]) strArr.clone();
    }

    public WorkSource[] setReturningDiffs(WorkSource workSource) {
        synchronized (sTmpWorkSource) {
            sNewbWork = null;
            sGoneWork = null;
            updateLocked(workSource, true, true);
            WorkSource workSource2 = sNewbWork;
            if (workSource2 == null && sGoneWork == null) {
                return null;
            }
            return new WorkSource[]{workSource2, sGoneWork};
        }
    }

    public int size() {
        return this.mNum;
    }

    public WorkSource stripNames() {
        if (this.mNum <= 0) {
            return new WorkSource();
        }
        WorkSource workSource = new WorkSource();
        for (int i2 = 0; i2 < this.mNum; i2++) {
            int i3 = this.mUids[i2];
            if (i2 == 0 || -1 != i3) {
                workSource.add(i3);
            }
        }
        return workSource;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WorkSource{");
        for (int i2 = 0; i2 < this.mNum; i2++) {
            if (i2 != 0) {
                sb.append(", ");
            }
            sb.append(this.mUids[i2]);
            if (this.mNames != null) {
                sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                sb.append(this.mNames[i2]);
            }
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mNum);
        parcel.writeIntArray(this.mUids);
        parcel.writeStringArray(this.mNames);
    }

    public void writeToProto(ProtoOutputStream protoOutputStream, long j2) {
        long jStart = protoOutputStream.start(j2);
        for (int i2 = 0; i2 < this.mNum; i2++) {
            long jStart2 = protoOutputStream.start(2272037699585L);
            protoOutputStream.write(1112396529665L, this.mUids[i2]);
            String[] strArr = this.mNames;
            if (strArr != null) {
                protoOutputStream.write(1159641169922L, strArr[i2]);
            }
            protoOutputStream.end(jStart2);
        }
        protoOutputStream.end(jStart);
    }

    public WorkSource(WorkSource workSource) {
        if (workSource == null) {
            this.mNum = 0;
            return;
        }
        this.mNum = workSource.mNum;
        int[] iArr = workSource.mUids;
        if (iArr != null) {
            this.mUids = (int[]) iArr.clone();
            String[] strArr = workSource.mNames;
            this.mNames = strArr != null ? (String[]) strArr.clone() : null;
        } else {
            this.mUids = null;
            this.mNames = null;
        }
    }

    private static WorkSource addWork(WorkSource workSource, int i2, String str) {
        if (workSource == null) {
            return new WorkSource(i2, str);
        }
        workSource.insert(workSource.mNum, i2, str);
        return workSource;
    }

    public boolean add(int i2) {
        int i3 = this.mNum;
        if (i3 <= 0) {
            this.mNames = null;
            insert(0, i2);
            return true;
        }
        if (this.mNames == null) {
            int iBinarySearch = Arrays.binarySearch(this.mUids, 0, i3, i2);
            if (iBinarySearch >= 0) {
                return false;
            }
            insert((-iBinarySearch) - 1, i2);
            return true;
        }
        throw new IllegalArgumentException("Adding without name to named " + this);
    }

    public WorkSource addReturningNewbs(int i2) {
        WorkSource workSource;
        WorkSource workSource2 = sTmpWorkSource;
        synchronized (workSource2) {
            sNewbWork = null;
            workSource2.mUids[0] = i2;
            updateLocked(workSource2, false, true);
            workSource = sNewbWork;
        }
        return workSource;
    }

    public WorkSource(int i2) {
        this.mNum = 1;
        this.mUids = new int[]{i2, 0};
        this.mNames = null;
    }

    public boolean add(int i2, String str) {
        int i3;
        if (this.mNum <= 0) {
            insert(0, i2, str);
            return true;
        }
        if (this.mNames != null) {
            int i4 = 0;
            while (i4 < this.mNum && (i3 = this.mUids[i4]) <= i2) {
                if (i3 == i2) {
                    int iCompareTo = this.mNames[i4].compareTo(str);
                    if (iCompareTo > 0) {
                        break;
                    }
                    if (iCompareTo == 0) {
                        return false;
                    }
                }
                i4++;
            }
            insert(i4, i2, str);
            return true;
        }
        throw new IllegalArgumentException("Adding name to unnamed " + this);
    }

    public void set(int i2) {
        this.mNum = 1;
        if (this.mUids == null) {
            this.mUids = new int[2];
        }
        this.mUids[0] = i2;
        this.mNames = null;
    }

    public WorkSource(int i2, String str) {
        if (str != null) {
            this.mNum = 1;
            this.mUids = new int[]{i2, 0};
            this.mNames = new String[]{str, null};
            return;
        }
        throw new NullPointerException("Name can't be null");
    }

    private void insert(int i2, int i3, String str) {
        int[] iArr = this.mUids;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.mUids = iArr2;
            iArr2[0] = i3;
            String[] strArr = new String[4];
            this.mNames = strArr;
            strArr[0] = str;
            this.mNum = 1;
            return;
        }
        int i4 = this.mNum;
        if (i4 >= iArr.length) {
            int[] iArr3 = new int[(i4 * 3) / 2];
            String[] strArr2 = new String[(i4 * 3) / 2];
            if (i2 > 0) {
                System.arraycopy(iArr, 0, iArr3, 0, i2);
                System.arraycopy(this.mNames, 0, strArr2, 0, i2);
            }
            int i5 = this.mNum;
            if (i2 < i5) {
                int i6 = i2 + 1;
                System.arraycopy(this.mUids, i2, iArr3, i6, i5 - i2);
                System.arraycopy(this.mNames, i2, strArr2, i6, this.mNum - i2);
            }
            this.mUids = iArr3;
            this.mNames = strArr2;
            iArr3[i2] = i3;
            strArr2[i2] = str;
            this.mNum++;
            return;
        }
        if (i2 < i4) {
            int i7 = i2 + 1;
            System.arraycopy(iArr, i2, iArr, i7, i4 - i2);
            String[] strArr3 = this.mNames;
            System.arraycopy(strArr3, i2, strArr3, i7, this.mNum - i2);
        }
        this.mUids[i2] = i3;
        this.mNames[i2] = str;
        this.mNum++;
    }

    public void set(int i2, String str) {
        if (str != null) {
            this.mNum = 1;
            if (this.mUids == null) {
                this.mUids = new int[2];
                this.mNames = new String[2];
            }
            this.mUids[0] = i2;
            this.mNames[0] = str;
            return;
        }
        throw new NullPointerException("Name can't be null");
    }

    public WorkSource(Parcel parcel) {
        this.mNum = parcel.readInt();
        this.mUids = parcel.createIntArray();
        this.mNames = parcel.createStringArray();
    }
}
