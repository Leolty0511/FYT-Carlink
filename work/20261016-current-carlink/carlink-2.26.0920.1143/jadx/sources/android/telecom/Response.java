package android.telecom;

/* JADX INFO: loaded from: classes2.dex */
public interface Response<IN, OUT> {
    void onError(IN in, int i2, String str);

    void onResult(IN in, OUT... outArr);
}
