package android.media.videoeditor;

/* JADX INFO: loaded from: classes.dex */
public class EffectColor extends Effect {
    public static final int GRAY = 8355711;
    public static final int GREEN = 65280;
    public static final int PINK = 16737996;
    public static final int TYPE_COLOR = 1;
    public static final int TYPE_FIFTIES = 5;
    public static final int TYPE_GRADIENT = 2;
    public static final int TYPE_NEGATIVE = 4;
    public static final int TYPE_SEPIA = 3;
    private final int mColor;
    private final int mType;

    private EffectColor() {
        this(null, null, 0L, 0L, 0, 0);
    }

    public int getColor() {
        return this.mColor;
    }

    public int getType() {
        return this.mType;
    }

    public EffectColor(MediaItem mediaItem, String str, long j2, long j3, int i2, int i3) {
        super(mediaItem, str, j2, j3);
        if (i2 == 1 || i2 == 2) {
            if (i3 != 65280 && i3 != 8355711 && i3 != 16737996) {
                throw new IllegalArgumentException("Invalid Color: " + i3);
            }
            this.mColor = i3;
        } else {
            if (i2 != 3 && i2 != 4 && i2 != 5) {
                throw new IllegalArgumentException("Invalid type: " + i2);
            }
            this.mColor = -1;
        }
        this.mType = i2;
    }
}
