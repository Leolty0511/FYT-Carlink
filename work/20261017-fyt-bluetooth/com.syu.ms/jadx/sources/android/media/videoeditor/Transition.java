package android.media.videoeditor;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class Transition {
    public static final int BEHAVIOR_LINEAR = 2;
    private static final int BEHAVIOR_MAX_VALUE = 4;
    public static final int BEHAVIOR_MIDDLE_FAST = 4;
    public static final int BEHAVIOR_MIDDLE_SLOW = 3;
    private static final int BEHAVIOR_MIN_VALUE = 0;
    public static final int BEHAVIOR_SPEED_DOWN = 1;
    public static final int BEHAVIOR_SPEED_UP = 0;
    private final MediaItem mAfterMediaItem;
    private final MediaItem mBeforeMediaItem;
    public final int mBehavior;
    public long mDurationMs;
    public String mFilename;
    public MediaArtistNativeHelper mNativeHelper;
    private final String mUniqueId;

    private Transition() {
        this(null, null, null, 0L, 0);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Transition) {
            return this.mUniqueId.equals(((Transition) obj).mUniqueId);
        }
        return false;
    }

    public void generate() {
        MediaItem afterMediaItem = getAfterMediaItem();
        MediaItem beforeMediaItem = getBeforeMediaItem();
        MediaArtistNativeHelper.ClipSettings clipSettings = new MediaArtistNativeHelper.ClipSettings();
        MediaArtistNativeHelper.ClipSettings clipSettings2 = new MediaArtistNativeHelper.ClipSettings();
        MediaArtistNativeHelper.EditSettings editSettings = new MediaArtistNativeHelper.EditSettings();
        if (this.mNativeHelper == null) {
            if (afterMediaItem != null) {
                this.mNativeHelper = afterMediaItem.getNativeContext();
            } else if (beforeMediaItem != null) {
                this.mNativeHelper = beforeMediaItem.getNativeContext();
            }
        }
        MediaArtistNativeHelper.TransitionSettings transitionSettings = getTransitionSettings();
        if (afterMediaItem != null && beforeMediaItem != null) {
            clipSettings = afterMediaItem.getClipSettings();
            clipSettings2 = beforeMediaItem.getClipSettings();
            long j2 = clipSettings.endCutTime;
            long j3 = this.mDurationMs;
            clipSettings.beginCutTime = (int) (j2 - j3);
            clipSettings2.endCutTime = (int) (((long) clipSettings2.beginCutTime) + j3);
            List<MediaArtistNativeHelper.EffectSettings> listIsEffectandOverlayOverlapping = isEffectandOverlayOverlapping(afterMediaItem, clipSettings, 1);
            List<MediaArtistNativeHelper.EffectSettings> listIsEffectandOverlayOverlapping2 = isEffectandOverlayOverlapping(beforeMediaItem, clipSettings2, 2);
            for (int i2 = 0; i2 < listIsEffectandOverlayOverlapping2.size(); i2++) {
                MediaArtistNativeHelper.EffectSettings effectSettings = listIsEffectandOverlayOverlapping2.get(i2);
                effectSettings.startTime = (int) (((long) effectSettings.startTime) + this.mDurationMs);
            }
            editSettings.effectSettingsArray = new MediaArtistNativeHelper.EffectSettings[listIsEffectandOverlayOverlapping.size() + listIsEffectandOverlayOverlapping2.size()];
            int i3 = 0;
            int i4 = 0;
            while (i3 < listIsEffectandOverlayOverlapping.size()) {
                editSettings.effectSettingsArray[i4] = listIsEffectandOverlayOverlapping.get(i3);
                i3++;
                i4++;
            }
            int i5 = 0;
            while (i5 < listIsEffectandOverlayOverlapping2.size()) {
                editSettings.effectSettingsArray[i4] = listIsEffectandOverlayOverlapping2.get(i5);
                i5++;
                i4++;
            }
        } else if (afterMediaItem == null && beforeMediaItem != null) {
            beforeMediaItem.generateBlankFrame(clipSettings);
            clipSettings2 = beforeMediaItem.getClipSettings();
            long j4 = this.mDurationMs;
            clipSettings.endCutTime = (int) (50 + j4);
            clipSettings2.endCutTime = (int) (((long) clipSettings2.beginCutTime) + j4);
            List<MediaArtistNativeHelper.EffectSettings> listIsEffectandOverlayOverlapping3 = isEffectandOverlayOverlapping(beforeMediaItem, clipSettings2, 2);
            for (int i6 = 0; i6 < listIsEffectandOverlayOverlapping3.size(); i6++) {
                MediaArtistNativeHelper.EffectSettings effectSettings2 = listIsEffectandOverlayOverlapping3.get(i6);
                effectSettings2.startTime = (int) (((long) effectSettings2.startTime) + this.mDurationMs);
            }
            editSettings.effectSettingsArray = new MediaArtistNativeHelper.EffectSettings[listIsEffectandOverlayOverlapping3.size()];
            int i7 = 0;
            int i8 = 0;
            while (i7 < listIsEffectandOverlayOverlapping3.size()) {
                editSettings.effectSettingsArray[i8] = listIsEffectandOverlayOverlapping3.get(i7);
                i7++;
                i8++;
            }
        } else if (afterMediaItem != null && beforeMediaItem == null) {
            clipSettings = afterMediaItem.getClipSettings();
            afterMediaItem.generateBlankFrame(clipSettings2);
            long j5 = clipSettings.endCutTime;
            long j6 = this.mDurationMs;
            clipSettings.beginCutTime = (int) (j5 - j6);
            clipSettings2.endCutTime = (int) (j6 + 50);
            List<MediaArtistNativeHelper.EffectSettings> listIsEffectandOverlayOverlapping4 = isEffectandOverlayOverlapping(afterMediaItem, clipSettings, 1);
            editSettings.effectSettingsArray = new MediaArtistNativeHelper.EffectSettings[listIsEffectandOverlayOverlapping4.size()];
            int i9 = 0;
            int i10 = 0;
            while (i9 < listIsEffectandOverlayOverlapping4.size()) {
                editSettings.effectSettingsArray[i10] = listIsEffectandOverlayOverlapping4.get(i9);
                i9++;
                i10++;
            }
        }
        editSettings.clipSettingsArray = new MediaArtistNativeHelper.ClipSettings[]{clipSettings, clipSettings2};
        editSettings.backgroundMusicSettings = null;
        editSettings.transitionSettingsArray = new MediaArtistNativeHelper.TransitionSettings[]{transitionSettings};
        setFilename(this.mNativeHelper.generateTransitionClip(editSettings, this.mUniqueId, afterMediaItem, beforeMediaItem, this));
    }

    public MediaItem getAfterMediaItem() {
        return this.mAfterMediaItem;
    }

    public MediaItem getBeforeMediaItem() {
        return this.mBeforeMediaItem;
    }

    public int getBehavior() {
        return this.mBehavior;
    }

    public long getDuration() {
        return this.mDurationMs;
    }

    public String getFilename() {
        return this.mFilename;
    }

    public String getId() {
        return this.mUniqueId;
    }

    public long getMaximumDuration() {
        MediaItem mediaItem = this.mAfterMediaItem;
        if (mediaItem == null) {
            return this.mBeforeMediaItem.getTimelineDuration() / 2;
        }
        return this.mBeforeMediaItem == null ? mediaItem.getTimelineDuration() / 2 : Math.min(mediaItem.getTimelineDuration(), this.mBeforeMediaItem.getTimelineDuration()) / 2;
    }

    public MediaArtistNativeHelper.TransitionSettings getTransitionSettings() {
        MediaArtistNativeHelper.TransitionSettings transitionSettings = new MediaArtistNativeHelper.TransitionSettings();
        transitionSettings.duration = (int) getDuration();
        if (this instanceof TransitionAlpha) {
            TransitionAlpha transitionAlpha = (TransitionAlpha) this;
            transitionSettings.videoTransitionType = 257;
            transitionSettings.audioTransitionType = 1;
            transitionSettings.transitionBehaviour = this.mNativeHelper.getVideoTransitionBehaviour(transitionAlpha.getBehavior());
            MediaArtistNativeHelper.AlphaMagicSettings alphaMagicSettings = new MediaArtistNativeHelper.AlphaMagicSettings();
            transitionSettings.alphaSettings = alphaMagicSettings;
            transitionSettings.slideSettings = null;
            alphaMagicSettings.file = transitionAlpha.getPNGMaskFilename();
            transitionSettings.alphaSettings.blendingPercent = transitionAlpha.getBlendingPercent();
            transitionSettings.alphaSettings.invertRotation = transitionAlpha.isInvert();
            transitionSettings.alphaSettings.rgbWidth = transitionAlpha.getRGBFileWidth();
            transitionSettings.alphaSettings.rgbHeight = transitionAlpha.getRGBFileHeight();
        } else if (this instanceof TransitionSliding) {
            TransitionSliding transitionSliding = (TransitionSliding) this;
            transitionSettings.videoTransitionType = 258;
            transitionSettings.audioTransitionType = 1;
            transitionSettings.transitionBehaviour = this.mNativeHelper.getVideoTransitionBehaviour(transitionSliding.getBehavior());
            transitionSettings.alphaSettings = null;
            MediaArtistNativeHelper.SlideTransitionSettings slideTransitionSettings = new MediaArtistNativeHelper.SlideTransitionSettings();
            transitionSettings.slideSettings = slideTransitionSettings;
            slideTransitionSettings.direction = this.mNativeHelper.getSlideSettingsDirection(transitionSliding.getDirection());
        } else if (this instanceof TransitionCrossfade) {
            transitionSettings.videoTransitionType = 1;
            transitionSettings.audioTransitionType = 1;
            transitionSettings.transitionBehaviour = this.mNativeHelper.getVideoTransitionBehaviour(((TransitionCrossfade) this).getBehavior());
            transitionSettings.alphaSettings = null;
            transitionSettings.slideSettings = null;
        } else if (this instanceof TransitionFadeBlack) {
            transitionSettings.videoTransitionType = 259;
            transitionSettings.audioTransitionType = 1;
            transitionSettings.transitionBehaviour = this.mNativeHelper.getVideoTransitionBehaviour(((TransitionFadeBlack) this).getBehavior());
            transitionSettings.alphaSettings = null;
            transitionSettings.slideSettings = null;
        }
        return transitionSettings;
    }

    public int hashCode() {
        return this.mUniqueId.hashCode();
    }

    public void invalidate() {
        if (this.mFilename != null) {
            new File(this.mFilename).delete();
            this.mFilename = null;
        }
    }

    public List<MediaArtistNativeHelper.EffectSettings> isEffectandOverlayOverlapping(MediaItem mediaItem, MediaArtistNativeHelper.ClipSettings clipSettings, int i2) {
        ArrayList arrayList = new ArrayList();
        Iterator<Overlay> it = mediaItem.getAllOverlays().iterator();
        while (it.hasNext()) {
            MediaArtistNativeHelper.EffectSettings overlaySettings = this.mNativeHelper.getOverlaySettings((OverlayFrame) it.next());
            this.mNativeHelper.adjustEffectsStartTimeAndDuration(overlaySettings, clipSettings.beginCutTime, clipSettings.endCutTime);
            if (overlaySettings.duration != 0) {
                arrayList.add(overlaySettings);
            }
        }
        for (Effect effect : mediaItem.getAllEffects()) {
            if (effect instanceof EffectColor) {
                MediaArtistNativeHelper.EffectSettings effectSettings = this.mNativeHelper.getEffectSettings((EffectColor) effect);
                this.mNativeHelper.adjustEffectsStartTimeAndDuration(effectSettings, clipSettings.beginCutTime, clipSettings.endCutTime);
                if (effectSettings.duration != 0) {
                    if (mediaItem instanceof MediaVideoItem) {
                        effectSettings.fiftiesFrameRate = this.mNativeHelper.GetClosestVideoFrameRate(((MediaVideoItem) mediaItem).getFps());
                    }
                    arrayList.add(effectSettings);
                }
            }
        }
        return arrayList;
    }

    public boolean isGenerated() {
        return this.mFilename != null;
    }

    public void setDuration(long j2) {
        if (j2 > getMaximumDuration()) {
            throw new IllegalArgumentException("The duration is too large");
        }
        this.mDurationMs = j2;
        invalidate();
        this.mNativeHelper.setGeneratePreview(true);
    }

    public void setFilename(String str) {
        this.mFilename = str;
    }

    public Transition(String str, MediaItem mediaItem, MediaItem mediaItem2, long j2, int i2) {
        if (i2 < 0 || i2 > 4) {
            throw new IllegalArgumentException("Invalid behavior: " + i2);
        }
        if (mediaItem == null && mediaItem2 == null) {
            throw new IllegalArgumentException("Null media items");
        }
        this.mUniqueId = str;
        this.mAfterMediaItem = mediaItem;
        this.mBeforeMediaItem = mediaItem2;
        this.mDurationMs = j2;
        this.mBehavior = i2;
        this.mNativeHelper = null;
        if (j2 > getMaximumDuration()) {
            throw new IllegalArgumentException("The duration is too large");
        }
        if (mediaItem != null) {
            this.mNativeHelper = mediaItem.getNativeContext();
        } else {
            this.mNativeHelper = mediaItem2.getNativeContext();
        }
    }
}
