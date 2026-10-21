package android.provider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f121b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b(Object obj, int i2) {
        this.f121b = i2;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f121b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                ((FontsContract.FontRequestCallback) obj).onTypefaceRequestFailed(-1);
                break;
            case 1:
                ((FontsContract.FontRequestCallback) obj).onTypefaceRequestFailed(-2);
                break;
            case 2:
                ((FontsContract.FontRequestCallback) obj).onTypefaceRequestFailed(-3);
                break;
            case 3:
                ((FontsContract.FontRequestCallback) obj).onTypefaceRequestFailed(-3);
                break;
            case 4:
                ((FontsContract.FontRequestCallback) obj).onTypefaceRequestFailed(1);
                break;
            case 5:
                ((FontsContract.FontRequestCallback) obj).onTypefaceRequestFailed(-3);
                break;
            case 6:
                ((FontsContract.FontRequestCallback) obj).onTypefaceRequestFailed(-3);
                break;
            default:
                ((Settings.NameValueCache) obj).lambda$getStringForUser$0();
                break;
        }
    }
}
