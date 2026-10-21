package f;

import android.content.Context;
import android.os.Vibrator;
import com.google.android.projection.protocol.InputSource;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class m implements InputSource.OnInputFeedbackListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f850a;

    public m(AutoFragment autoFragment) {
        this.f850a = autoFragment;
    }

    @Override // com.google.android.projection.protocol.InputSource.OnInputFeedbackListener
    public final void onInputFeedback(int i2) {
        long[] jArr;
        if (i2 == InputSource.FEEDBACK_EVENT_SELECT) {
            jArr = new long[]{0, 75};
        } else {
            jArr = (i2 != InputSource.FEEDBACK_EVENT_FOCUS_CHANGE && i2 == InputSource.FEEDBACK_EVENT_DRAG_SELECT) ? new long[]{0, 75} : null;
        }
        if (jArr != null) {
            ((Vibrator) this.f850a.getContext().getSystemService(Context.VIBRATOR_SERVICE)).vibrate(jArr, -1);
        }
    }
}
