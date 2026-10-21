package e;

import android.bluetooth.BluetoothClass;
import android.hardware.camera2.legacy.LegacyCameraDevice;
import android.text.format.DateUtils;
import android.util.Size;
import com.android.internal.logging.nano.MetricsProto;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f777a = 25;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Size f778b = new Size(1280, MetricsProto.MetricsEvent.ACTION_PERMISSION_DENIED_RECEIVE_WAP_PUSH);
    public static final Size c = new Size(LegacyCameraDevice.MAX_DIMEN_FOR_ROUNDING, BluetoothClass.Device.AUDIO_VIDEO_VIDEO_MONITOR);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Size f779d = new Size(DateUtils.FORMAT_NO_NOON_MIDNIGHT, 1440);
}
