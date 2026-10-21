package android.os.storage;

/* JADX INFO: loaded from: classes.dex */
public abstract class StorageManagerInternal {

    public interface ExternalStorageMountPolicy {
        int getMountMode(int i2, String str);

        boolean hasExternalStorage(int i2, String str);
    }

    public abstract void addExternalStoragePolicy(ExternalStorageMountPolicy externalStorageMountPolicy);

    public abstract int getExternalStorageMountMode(int i2, String str);

    public abstract void onExternalStoragePolicyChanged(int i2, String str);
}
