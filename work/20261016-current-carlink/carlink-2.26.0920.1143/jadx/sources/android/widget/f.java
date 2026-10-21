package android.widget;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f257b;
    public final /* synthetic */ Object c;

    public /* synthetic */ f(Object obj, int i2) {
        this.f257b = i2;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f257b;
        Object obj = this.c;
        switch (i2) {
            case 0:
                ((DatePickerCalendarDelegate) obj).lambda$setCurrentView$1();
                break;
            case 1:
                ((DateTimeView) obj).clearFormatAndUpdate();
                break;
            default:
                ((SelectionActionModeHelper.TextClassificationAsyncTask) obj).onTimeOut();
                break;
        }
    }
}
