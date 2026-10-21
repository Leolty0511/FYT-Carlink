package android.widget;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.android.internal.content.FileSystemProvider;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c implements DatePicker.OnDateChangedListener, TimePicker.OnTimeChangedListener, ParcelFileDescriptor.OnCloseListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f255b;
    public final /* synthetic */ Object c;

    public /* synthetic */ c(Object obj, Object obj2) {
        this.c = obj;
        this.f255b = obj2;
    }

    @Override // android.os.ParcelFileDescriptor.OnCloseListener
    public final void onClose(IOException iOException) {
        ((FileSystemProvider) this.c).lambda$openDocument$0((File) this.f255b, iOException);
    }

    @Override // android.widget.DatePicker.OnDateChangedListener
    public final void onDateChanged(DatePicker datePicker, int i2, int i3, int i4) {
        ((DatePicker) this.c).lambda$new$0((Context) this.f255b, datePicker, i2, i3, i4);
    }

    @Override // android.widget.TimePicker.OnTimeChangedListener
    public final void onTimeChanged(TimePicker timePicker, int i2, int i3) {
        ((TimePicker) this.c).lambda$new$0((Context) this.f255b, timePicker, i2, i3);
    }
}
