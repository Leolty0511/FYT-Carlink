package androidx.emoji2.text;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f345b;
    public final /* synthetic */ FontRequestEmojiCompatConfig.FontRequestMetadataLoader c;

    public /* synthetic */ d(FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader, int i2) {
        this.f345b = i2;
        this.c = fontRequestMetadataLoader;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f345b;
        FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader = this.c;
        switch (i2) {
            case 0:
                fontRequestMetadataLoader.createMetadata();
                break;
            default:
                fontRequestMetadataLoader.loadInternal();
                break;
        }
    }
}
