package android.media.videoeditor;

import android.graphics.Rect;
import android.net.ProxyProperties;
import android.os.Debug;
import android.os.Environment;
import android.os.SystemProperties;
import android.util.Log;
import android.util.Xml;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class VideoEditorImpl implements VideoEditor {
    private static final String ATTR_AFTER_MEDIA_ITEM_ID = "after_media_item";
    private static final String ATTR_ASPECT_RATIO = "aspect_ratio";
    private static final String ATTR_AUDIO_WAVEFORM_FILENAME = "waveform";
    private static final String ATTR_BEFORE_MEDIA_ITEM_ID = "before_media_item";
    private static final String ATTR_BEGIN_TIME = "begin_time";
    private static final String ATTR_BEHAVIOR = "behavior";
    private static final String ATTR_BLENDING = "blending";
    private static final String ATTR_COLOR_EFFECT_TYPE = "color_type";
    private static final String ATTR_COLOR_EFFECT_VALUE = "color_value";
    private static final String ATTR_DIRECTION = "direction";
    private static final String ATTR_DUCKED_TRACK_VOLUME = "ducking_volume";
    private static final String ATTR_DUCK_ENABLED = "ducking_enabled";
    private static final String ATTR_DUCK_THRESHOLD = "ducking_threshold";
    private static final String ATTR_DURATION = "duration";
    private static final String ATTR_END_RECT_BOTTOM = "end_b";
    private static final String ATTR_END_RECT_LEFT = "end_l";
    private static final String ATTR_END_RECT_RIGHT = "end_r";
    private static final String ATTR_END_RECT_TOP = "end_t";
    private static final String ATTR_END_TIME = "end_time";
    private static final String ATTR_FILENAME = "filename";
    private static final String ATTR_GENERATED_IMAGE_CLIP = "generated_image_clip";
    private static final String ATTR_GENERATED_TRANSITION_CLIP = "generated_transition_clip";
    private static final String ATTR_ID = "id";
    private static final String ATTR_INVERT = "invert";
    private static final String ATTR_IS_IMAGE_CLIP_GENERATED = "is_image_clip_generated";
    private static final String ATTR_IS_TRANSITION_GENERATED = "is_transition_generated";
    private static final String ATTR_LOOP = "loop";
    private static final String ATTR_MASK = "mask";
    private static final String ATTR_MUTED = "muted";
    private static final String ATTR_OVERLAY_FRAME_HEIGHT = "overlay_frame_height";
    private static final String ATTR_OVERLAY_FRAME_WIDTH = "overlay_frame_width";
    private static final String ATTR_OVERLAY_RESIZED_RGB_FRAME_HEIGHT = "resized_RGBframe_height";
    private static final String ATTR_OVERLAY_RESIZED_RGB_FRAME_WIDTH = "resized_RGBframe_width";
    private static final String ATTR_OVERLAY_RGB_FILENAME = "overlay_rgb_filename";
    private static final String ATTR_REGENERATE_PCM = "regeneratePCMFlag";
    private static final String ATTR_RENDERING_MODE = "rendering_mode";
    private static final String ATTR_START_RECT_BOTTOM = "start_b";
    private static final String ATTR_START_RECT_LEFT = "start_l";
    private static final String ATTR_START_RECT_RIGHT = "start_r";
    private static final String ATTR_START_RECT_TOP = "start_t";
    private static final String ATTR_START_TIME = "start_time";
    private static final String ATTR_TYPE = "type";
    private static final String ATTR_VOLUME = "volume";
    private static final int ENGINE_ACCESS_MAX_TIMEOUT_MS = 500;
    private static final String PROJECT_FILENAME = "videoeditor.xml";
    private static final String TAG = "VideoEditorImpl";
    private static final String TAG_AUDIO_TRACK = "audio_track";
    private static final String TAG_AUDIO_TRACKS = "audio_tracks";
    private static final String TAG_EFFECT = "effect";
    private static final String TAG_EFFECTS = "effects";
    private static final String TAG_MEDIA_ITEM = "media_item";
    private static final String TAG_MEDIA_ITEMS = "media_items";
    private static final String TAG_OVERLAY = "overlay";
    private static final String TAG_OVERLAYS = "overlays";
    private static final String TAG_OVERLAY_USER_ATTRIBUTES = "overlay_user_attributes";
    private static final String TAG_PROJECT = "project";
    private static final String TAG_TRANSITION = "transition";
    private static final String TAG_TRANSITIONS = "transitions";
    private int mAspectRatio;
    private long mDurationMs;
    private final Semaphore mLock;
    private MediaArtistNativeHelper mMANativeHelper;
    private final boolean mMallocDebug;
    private final String mProjectPath;
    private final List<MediaItem> mMediaItems = new ArrayList();
    private final List<AudioTrack> mAudioTracks = new ArrayList();
    private final List<Transition> mTransitions = new ArrayList();
    private boolean mPreviewInProgress = false;

    public VideoEditorImpl(String str) throws IOException {
        if (SystemProperties.get("libc.debug.malloc").equals("1")) {
            this.mMallocDebug = true;
            try {
                dumpHeap("HeapAtStart");
            } catch (Exception unused) {
                Log.e(TAG, "dumpHeap returned error in constructor");
            }
        } else {
            this.mMallocDebug = false;
        }
        Semaphore semaphore = new Semaphore(1, true);
        this.mLock = semaphore;
        this.mMANativeHelper = new MediaArtistNativeHelper(str, semaphore, this);
        this.mProjectPath = str;
        if (!new File(str, PROJECT_FILENAME).exists()) {
            this.mAspectRatio = 2;
            this.mDurationMs = 0L;
        } else {
            try {
                load();
            } catch (Exception e2) {
                e2.printStackTrace();
                throw new IOException(e2.toString());
            }
        }
    }

    private void computeTimelineDuration() {
        this.mDurationMs = 0L;
        int size = this.mMediaItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            MediaItem mediaItem = this.mMediaItems.get(i2);
            this.mDurationMs += mediaItem.getTimelineDuration();
            if (mediaItem.getEndTransition() != null && i2 < size - 1) {
                this.mDurationMs -= mediaItem.getEndTransition().getDuration();
            }
        }
    }

    private static void dumpHeap(String str) throws InterruptedException, IOException {
        System.gc();
        System.runFinalization();
        Thread.sleep(1000L);
        if (Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())) {
            String string = Environment.getExternalStorageDirectory().toString();
            if (new File(string + "/" + str + ".dump").exists()) {
                new File(string + "/" + str + ".dump").delete();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(string + "/" + str + ".dump");
            Debug.dumpNativeHeap(fileOutputStream.getFD());
            fileOutputStream.close();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00c8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void generateProjectThumbnail() {
        /*
            Method dump skipped, instruction units count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.media.videoeditor.VideoEditorImpl.generateProjectThumbnail():void");
    }

    private void load() throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(this.mProjectPath, PROJECT_FILENAME));
        try {
            List<String> arrayList = new ArrayList<>();
            XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
            xmlPullParserNewPullParser.setInput(fileInputStream, "UTF-8");
            boolean z2 = false;
            MediaItem mediaItem = null;
            Overlay overlay = null;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.next()) {
                if (eventType == 2) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (TAG_PROJECT.equals(name)) {
                        this.mAspectRatio = Integer.parseInt(xmlPullParserNewPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_ASPECT_RATIO));
                        this.mMANativeHelper.setAudioflag(Boolean.parseBoolean(xmlPullParserNewPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_REGENERATE_PCM)));
                    } else if (TAG_MEDIA_ITEM.equals(name)) {
                        String attributeValue = xmlPullParserNewPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "id");
                        try {
                            mediaItem = parseMediaItem(xmlPullParserNewPullParser);
                            this.mMediaItems.add(mediaItem);
                        } catch (Exception e2) {
                            Log.w(TAG, "Cannot load media item: " + attributeValue, e2);
                            if (this.mMediaItems.size() == 0) {
                                z2 = true;
                            }
                            arrayList.add(attributeValue);
                            mediaItem = null;
                        }
                    } else if (TAG_TRANSITION.equals(name)) {
                        try {
                            Transition transition = parseTransition(xmlPullParserNewPullParser, arrayList);
                            if (transition != null) {
                                this.mTransitions.add(transition);
                            }
                        } catch (Exception e3) {
                            Log.w(TAG, "Cannot load transition", e3);
                        }
                    } else if (TAG_OVERLAY.equals(name)) {
                        if (mediaItem != null) {
                            try {
                                overlay = parseOverlay(xmlPullParserNewPullParser, mediaItem);
                                mediaItem.addOverlay(overlay);
                            } catch (Exception e4) {
                                Log.w(TAG, "Cannot load overlay", e4);
                            }
                        }
                    } else if (TAG_OVERLAY_USER_ATTRIBUTES.equals(name)) {
                        if (overlay != null) {
                            int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                            for (int i2 = 0; i2 < attributeCount; i2++) {
                                overlay.setUserAttribute(xmlPullParserNewPullParser.getAttributeName(i2), xmlPullParserNewPullParser.getAttributeValue(i2));
                            }
                        }
                    } else if (TAG_EFFECT.equals(name)) {
                        if (mediaItem != null) {
                            try {
                                Effect effect = parseEffect(xmlPullParserNewPullParser, mediaItem);
                                mediaItem.addEffect(effect);
                                if (effect instanceof EffectKenBurns) {
                                    if (Boolean.parseBoolean(xmlPullParserNewPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_IS_IMAGE_CLIP_GENERATED))) {
                                        String attributeValue2 = xmlPullParserNewPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_GENERATED_IMAGE_CLIP);
                                        if (new File(attributeValue2).exists()) {
                                            ((MediaImageItem) mediaItem).setGeneratedImageClip(attributeValue2);
                                            ((MediaImageItem) mediaItem).setRegenerateClip(false);
                                        } else {
                                            ((MediaImageItem) mediaItem).setGeneratedImageClip(null);
                                            ((MediaImageItem) mediaItem).setRegenerateClip(true);
                                        }
                                    } else {
                                        ((MediaImageItem) mediaItem).setGeneratedImageClip(null);
                                        ((MediaImageItem) mediaItem).setRegenerateClip(true);
                                    }
                                }
                            } catch (Exception e5) {
                                Log.w(TAG, "Cannot load effect", e5);
                            }
                        }
                    } else if (TAG_AUDIO_TRACK.equals(name)) {
                        try {
                            addAudioTrack(parseAudioTrack(xmlPullParserNewPullParser));
                        } catch (Exception e6) {
                            Log.w(TAG, "Cannot load audio track", e6);
                        }
                    }
                } else if (eventType == 3) {
                    String name2 = xmlPullParserNewPullParser.getName();
                    if (TAG_MEDIA_ITEM.equals(name2)) {
                        mediaItem = null;
                    } else if (TAG_OVERLAY.equals(name2)) {
                        overlay = null;
                    }
                }
            }
            computeTimelineDuration();
            if (z2) {
                generateProjectThumbnail();
            }
            fileInputStream.close();
        } catch (Throwable th) {
            fileInputStream.close();
            throw th;
        }
    }

    private void lock() throws InterruptedException {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "lock: grabbing semaphore", new Throwable());
        }
        this.mLock.acquire();
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "lock: grabbed semaphore");
        }
    }

    private AudioTrack parseAudioTrack(XmlPullParser xmlPullParser) {
        return new AudioTrack(this, xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "id"), xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_FILENAME), Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_START_TIME)), Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEGIN_TIME)), Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_TIME)), Boolean.parseBoolean(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_LOOP)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "volume")), Boolean.parseBoolean(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_MUTED)), Boolean.parseBoolean(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_DUCK_ENABLED)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_DUCK_THRESHOLD)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_DUCKED_TRACK_VOLUME)), xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_AUDIO_WAVEFORM_FILENAME));
    }

    private Effect parseEffect(XmlPullParser xmlPullParser, MediaItem mediaItem) {
        String attributeValue = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "id");
        String attributeValue2 = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "type");
        long j2 = Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "duration"));
        long j3 = Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEGIN_TIME));
        if (EffectColor.class.getSimpleName().equals(attributeValue2)) {
            int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "color_type"));
            return new EffectColor(mediaItem, attributeValue, j3, j2, i2, (i2 == 1 || i2 == 2) ? Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_COLOR_EFFECT_VALUE)) : 0);
        }
        if (EffectKenBurns.class.getSimpleName().equals(attributeValue2)) {
            return new EffectKenBurns(mediaItem, attributeValue, new Rect(Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_START_RECT_LEFT)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_START_RECT_TOP)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_START_RECT_RIGHT)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_START_RECT_BOTTOM))), new Rect(Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_RECT_LEFT)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_RECT_TOP)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_RECT_RIGHT)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_RECT_BOTTOM))), j3, j2);
        }
        throw new IllegalArgumentException("Invalid effect type: " + attributeValue2);
    }

    private MediaItem parseMediaItem(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "id");
        String attributeValue2 = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "type");
        String attributeValue3 = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_FILENAME);
        int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_RENDERING_MODE));
        if (MediaImageItem.class.getSimpleName().equals(attributeValue2)) {
            return new MediaImageItem(this, attributeValue, attributeValue3, Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "duration")), i2);
        }
        if (MediaVideoItem.class.getSimpleName().equals(attributeValue2)) {
            MediaVideoItem mediaVideoItem = new MediaVideoItem(this, attributeValue, attributeValue3, i2, Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEGIN_TIME)), Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_TIME)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "volume")), Boolean.parseBoolean(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_MUTED)), xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_AUDIO_WAVEFORM_FILENAME));
            mediaVideoItem.setExtractBoundaries(Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEGIN_TIME)), Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_TIME)));
            mediaVideoItem.setVolume(Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "volume")));
            return mediaVideoItem;
        }
        throw new IllegalArgumentException("Unknown media item type: " + attributeValue2);
    }

    private Overlay parseOverlay(XmlPullParser xmlPullParser, MediaItem mediaItem) {
        String attributeValue = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "id");
        String attributeValue2 = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "type");
        long j2 = Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "duration"));
        long j3 = Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEGIN_TIME));
        if (!OverlayFrame.class.getSimpleName().equals(attributeValue2)) {
            throw new IllegalArgumentException("Invalid overlay type: " + attributeValue2);
        }
        OverlayFrame overlayFrame = new OverlayFrame(mediaItem, attributeValue, xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_FILENAME), j3, j2);
        String attributeValue3 = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_OVERLAY_RGB_FILENAME);
        if (attributeValue3 != null) {
            overlayFrame.setFilename(attributeValue3);
            int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_OVERLAY_FRAME_WIDTH));
            int i3 = Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_OVERLAY_FRAME_HEIGHT));
            overlayFrame.setOverlayFrameWidth(i2);
            overlayFrame.setOverlayFrameHeight(i3);
            overlayFrame.setResizedRGBSize(Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_OVERLAY_RESIZED_RGB_FRAME_WIDTH)), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_OVERLAY_RESIZED_RGB_FRAME_HEIGHT)));
        }
        return overlayFrame;
    }

    private Transition parseTransition(XmlPullParser xmlPullParser, List<String> list) {
        MediaItem mediaItem;
        MediaItem mediaItem2;
        MediaItem mediaItem3;
        Transition transitionFadeBlack;
        String attributeValue = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "id");
        String attributeValue2 = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "type");
        long j2 = Long.parseLong(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, "duration"));
        int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEHAVIOR));
        String attributeValue3 = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEFORE_MEDIA_ITEM_ID);
        if (attributeValue3 == null) {
            mediaItem = null;
        } else {
            if (list.contains(attributeValue3)) {
                return null;
            }
            mediaItem = getMediaItem(attributeValue3);
        }
        String attributeValue4 = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_AFTER_MEDIA_ITEM_ID);
        if (attributeValue4 == null) {
            mediaItem2 = null;
        } else {
            if (list.contains(attributeValue4)) {
                return null;
            }
            mediaItem2 = getMediaItem(attributeValue4);
        }
        if (TransitionAlpha.class.getSimpleName().equals(attributeValue2)) {
            mediaItem3 = mediaItem;
            transitionFadeBlack = new TransitionAlpha(attributeValue, mediaItem2, mediaItem, j2, i2, xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_MASK), Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BLENDING)), Boolean.getBoolean(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_INVERT)));
        } else {
            mediaItem3 = mediaItem;
            if (TransitionCrossfade.class.getSimpleName().equals(attributeValue2)) {
                transitionFadeBlack = new TransitionCrossfade(attributeValue, mediaItem2, mediaItem3, j2, i2);
            } else if (TransitionSliding.class.getSimpleName().equals(attributeValue2)) {
                transitionFadeBlack = new TransitionSliding(attributeValue, mediaItem2, mediaItem3, j2, i2, Integer.parseInt(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_DIRECTION)));
            } else {
                if (!TransitionFadeBlack.class.getSimpleName().equals(attributeValue2)) {
                    throw new IllegalArgumentException("Invalid transition type: " + attributeValue2);
                }
                transitionFadeBlack = new TransitionFadeBlack(attributeValue, mediaItem2, mediaItem3, j2, i2);
            }
        }
        Transition transition = transitionFadeBlack;
        if (Boolean.parseBoolean(xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_IS_TRANSITION_GENERATED))) {
            String attributeValue5 = xmlPullParser.getAttributeValue(ProxyProperties.LOCAL_EXCL_LIST, ATTR_GENERATED_TRANSITION_CLIP);
            if (new File(attributeValue5).exists()) {
                transition.setFilename(attributeValue5);
            } else {
                transition.setFilename(null);
            }
        }
        MediaItem mediaItem4 = mediaItem3;
        if (mediaItem4 != null) {
            mediaItem4.setBeginTransition(transition);
        }
        if (mediaItem2 != null) {
            mediaItem2.setEndTransition(transition);
        }
        return transition;
    }

    private void removeAdjacentTransitions(MediaItem mediaItem) {
        Transition beginTransition = mediaItem.getBeginTransition();
        if (beginTransition != null) {
            if (beginTransition.getAfterMediaItem() != null) {
                beginTransition.getAfterMediaItem().setEndTransition(null);
            }
            beginTransition.invalidate();
            this.mTransitions.remove(beginTransition);
        }
        Transition endTransition = mediaItem.getEndTransition();
        if (endTransition != null) {
            if (endTransition.getBeforeMediaItem() != null) {
                endTransition.getBeforeMediaItem().setBeginTransition(null);
            }
            endTransition.invalidate();
            this.mTransitions.remove(endTransition);
        }
        mediaItem.setBeginTransition(null);
        mediaItem.setEndTransition(null);
    }

    private void removeTransitionAfter(int i2) {
        MediaItem mediaItem = this.mMediaItems.get(i2);
        Iterator<Transition> it = this.mTransitions.iterator();
        while (it.hasNext()) {
            Transition next = it.next();
            if (next.getAfterMediaItem() == mediaItem) {
                this.mMANativeHelper.setGeneratePreview(true);
                it.remove();
                next.invalidate();
                mediaItem.setEndTransition(null);
                if (i2 < this.mMediaItems.size() - 1) {
                    this.mMediaItems.get(i2 + 1).setBeginTransition(null);
                    return;
                }
                return;
            }
        }
    }

    private void removeTransitionBefore(int i2) {
        MediaItem mediaItem = this.mMediaItems.get(i2);
        Iterator<Transition> it = this.mTransitions.iterator();
        while (it.hasNext()) {
            Transition next = it.next();
            if (next.getBeforeMediaItem() == mediaItem) {
                this.mMANativeHelper.setGeneratePreview(true);
                it.remove();
                next.invalidate();
                mediaItem.setBeginTransition(null);
                if (i2 > 0) {
                    this.mMediaItems.get(i2 - 1).setEndTransition(null);
                    return;
                }
                return;
            }
        }
    }

    private void unlock() {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "unlock: releasing semaphore");
        }
        this.mLock.release();
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized void addAudioTrack(AudioTrack audioTrack) {
        try {
            if (audioTrack == null) {
                throw new IllegalArgumentException("Audio Track is null");
            }
            if (this.mAudioTracks.size() == 1) {
                throw new IllegalArgumentException("No more tracks can be added");
            }
            this.mMANativeHelper.setGeneratePreview(true);
            this.mAudioTracks.add(audioTrack);
            if (new File(String.format(this.mProjectPath + "/AudioPcm" + audioTrack.getId() + ".pcm", new Object[0])).exists()) {
                this.mMANativeHelper.setAudioflag(false);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized void addMediaItem(MediaItem mediaItem) {
        try {
            if (mediaItem == null) {
                throw new IllegalArgumentException("Media item is null");
            }
            if (this.mMediaItems.contains(mediaItem)) {
                throw new IllegalArgumentException("Media item already exists: " + mediaItem.getId());
            }
            this.mMANativeHelper.setGeneratePreview(true);
            int size = this.mMediaItems.size();
            if (size > 0) {
                removeTransitionAfter(size - 1);
            }
            this.mMediaItems.add(mediaItem);
            computeTimelineDuration();
            if (this.mMediaItems.size() == 1) {
                generateProjectThumbnail();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized void addTransition(Transition transition) {
        try {
            if (transition == null) {
                throw new IllegalArgumentException("Null Transition");
            }
            MediaItem beforeMediaItem = transition.getBeforeMediaItem();
            MediaItem afterMediaItem = transition.getAfterMediaItem();
            List<MediaItem> list = this.mMediaItems;
            if (list == null) {
                throw new IllegalArgumentException("No media items are added");
            }
            if (afterMediaItem != null && beforeMediaItem != null) {
                int iIndexOf = list.indexOf(afterMediaItem);
                int iIndexOf2 = this.mMediaItems.indexOf(beforeMediaItem);
                if (iIndexOf == -1 || iIndexOf2 == -1) {
                    throw new IllegalArgumentException("Either of the mediaItem is not found in the list");
                }
                if (iIndexOf != iIndexOf2 - 1) {
                    throw new IllegalArgumentException("MediaItems are not in sequence");
                }
            }
            this.mMANativeHelper.setGeneratePreview(true);
            this.mTransitions.add(transition);
            if (afterMediaItem != null) {
                if (afterMediaItem.getEndTransition() != null) {
                    afterMediaItem.getEndTransition().invalidate();
                    this.mTransitions.remove(afterMediaItem.getEndTransition());
                }
                afterMediaItem.setEndTransition(transition);
            }
            if (beforeMediaItem != null) {
                if (beforeMediaItem.getBeginTransition() != null) {
                    beforeMediaItem.getBeginTransition().invalidate();
                    this.mTransitions.remove(beforeMediaItem.getBeginTransition());
                }
                beforeMediaItem.setBeginTransition(transition);
            }
            computeTimelineDuration();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.media.videoeditor.VideoEditor
    public void cancelExport(String str) {
        MediaArtistNativeHelper mediaArtistNativeHelper = this.mMANativeHelper;
        if (mediaArtistNativeHelper == null || str == null) {
            return;
        }
        mediaArtistNativeHelper.stop(str);
    }

    @Override // android.media.videoeditor.VideoEditor
    public void clearSurface(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == null) {
            throw new IllegalArgumentException("Invalid surface holder");
        }
        Surface surface = surfaceHolder.getSurface();
        if (surface == null) {
            throw new IllegalArgumentException("Surface could not be retrieved from surface holder");
        }
        if (!surface.isValid()) {
            throw new IllegalStateException("Surface is not valid");
        }
        MediaArtistNativeHelper mediaArtistNativeHelper = this.mMANativeHelper;
        if (mediaArtistNativeHelper != null) {
            mediaArtistNativeHelper.clearPreviewSurface(surface);
        } else {
            Log.w(TAG, "Native helper was not ready!");
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00fb  */
    @Override // android.media.videoeditor.VideoEditor
    public void export(String str, int i2, int i3, int i4, int i5, VideoEditor.ExportProgressListener exportProgressListener) throws Throwable {
        int i6;
        if (str == null) {
            throw new IllegalArgumentException("export: filename is null");
        }
        new File(str);
        if (this.mMediaItems.size() == 0) {
            throw new IllegalStateException("No MediaItems added");
        }
        if (i2 != 144 && i2 != 288 && i2 != 360 && i2 != 480 && i2 != 720 && i2 != 1080) {
            throw new IllegalArgumentException("Unsupported height value " + i2);
        }
        switch (i3) {
            case MediaProperties.BITRATE_28K /* 28000 */:
            case MediaProperties.BITRATE_40K /* 40000 */:
            case 64000:
            case 96000:
            case 128000:
            case 192000:
            case 256000:
            case 384000:
            case 512000:
            case 800000:
            case 2000000:
            case 5000000:
            case 8000000:
                computeTimelineDuration();
                if (VideoEditor.MAX_SUPPORTED_FILE_SIZE <= (this.mDurationMs * (((long) i3) + 96000)) / 8000) {
                    throw new IllegalStateException("Export Size is more than 2GB");
                }
                int i7 = 2;
                boolean z2 = true;
                if (i4 == 1) {
                    i6 = 1;
                } else {
                    if (i4 != 2) {
                        throw new IllegalArgumentException("Unsupported audio codec type " + i4);
                    }
                    i6 = 2;
                }
                if (i5 == 1) {
                    i7 = 1;
                } else if (i5 != 2) {
                    if (i5 != 3) {
                        throw new IllegalArgumentException("Unsupported video codec type " + i5);
                    }
                    i7 = 3;
                }
                try {
                    try {
                        lock();
                        try {
                            MediaArtistNativeHelper mediaArtistNativeHelper = this.mMANativeHelper;
                            if (mediaArtistNativeHelper == null) {
                                throw new IllegalStateException("The video editor is not initialized");
                            }
                            mediaArtistNativeHelper.setAudioCodec(i6);
                            this.mMANativeHelper.setVideoCodec(i7);
                            this.mMANativeHelper.export(str, this.mProjectPath, i2, i3, this.mMediaItems, this.mTransitions, this.mAudioTracks, exportProgressListener);
                            unlock();
                            return;
                        } catch (InterruptedException unused) {
                            Log.e(TAG, "Sem acquire NOT successful in export");
                            if (!z2) {
                                return;
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (z2) {
                            unlock();
                        }
                        throw th;
                    }
                } catch (InterruptedException unused2) {
                    z2 = false;
                } catch (Throwable th2) {
                    th = th2;
                    z2 = false;
                    if (z2) {
                        unlock();
                    }
                    throw th;
                }
                break;
            default:
                throw new IllegalArgumentException("Unsupported bitrate value " + i3);
        }
    }

    @Override // android.media.videoeditor.VideoEditor
    public void generatePreview(VideoEditor.MediaProcessingProgressListener mediaProcessingProgressListener) {
        try {
            try {
                lock();
                if (this.mMANativeHelper == null) {
                    throw new IllegalStateException("The video editor is not initialized");
                }
                if (this.mMediaItems.size() > 0 || this.mAudioTracks.size() > 0) {
                    this.mMANativeHelper.previewStoryBoard(this.mMediaItems, this.mTransitions, this.mAudioTracks, mediaProcessingProgressListener);
                }
                unlock();
            } catch (InterruptedException unused) {
                Log.e(TAG, "Sem acquire NOT successful in previewStoryBoard");
                if (0 == 0) {
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                unlock();
            }
            throw th;
        }
    }

    @Override // android.media.videoeditor.VideoEditor
    public List<AudioTrack> getAllAudioTracks() {
        return this.mAudioTracks;
    }

    @Override // android.media.videoeditor.VideoEditor
    public List<MediaItem> getAllMediaItems() {
        return this.mMediaItems;
    }

    @Override // android.media.videoeditor.VideoEditor
    public List<Transition> getAllTransitions() {
        return this.mTransitions;
    }

    @Override // android.media.videoeditor.VideoEditor
    public int getAspectRatio() {
        return this.mAspectRatio;
    }

    @Override // android.media.videoeditor.VideoEditor
    public AudioTrack getAudioTrack(String str) {
        for (AudioTrack audioTrack : this.mAudioTracks) {
            if (audioTrack.getId().equals(str)) {
                return audioTrack;
            }
        }
        return null;
    }

    @Override // android.media.videoeditor.VideoEditor
    public long getDuration() {
        computeTimelineDuration();
        return this.mDurationMs;
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized MediaItem getMediaItem(String str) {
        for (MediaItem mediaItem : this.mMediaItems) {
            if (mediaItem.getId().equals(str)) {
                return mediaItem;
            }
        }
        return null;
    }

    public MediaArtistNativeHelper getNativeContext() {
        return this.mMANativeHelper;
    }

    @Override // android.media.videoeditor.VideoEditor
    public String getPath() {
        return this.mProjectPath;
    }

    @Override // android.media.videoeditor.VideoEditor
    public Transition getTransition(String str) {
        for (Transition transition : this.mTransitions) {
            if (transition.getId().equals(str)) {
                return transition;
            }
        }
        return null;
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized void insertAudioTrack(AudioTrack audioTrack, String str) {
        if (this.mAudioTracks.size() == 1) {
            throw new IllegalArgumentException("No more tracks can be added");
        }
        if (str == null) {
            this.mMANativeHelper.setGeneratePreview(true);
            this.mAudioTracks.add(0, audioTrack);
            return;
        }
        int size = this.mAudioTracks.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mAudioTracks.get(i2).getId().equals(str)) {
                this.mMANativeHelper.setGeneratePreview(true);
                this.mAudioTracks.add(i2 + 1, audioTrack);
                return;
            }
        }
        throw new IllegalArgumentException("AudioTrack not found: " + str);
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized void insertMediaItem(MediaItem mediaItem, String str) {
        if (this.mMediaItems.contains(mediaItem)) {
            throw new IllegalArgumentException("Media item already exists: " + mediaItem.getId());
        }
        if (str == null) {
            this.mMANativeHelper.setGeneratePreview(true);
            if (this.mMediaItems.size() > 0) {
                removeTransitionBefore(0);
            }
            this.mMediaItems.add(0, mediaItem);
            computeTimelineDuration();
            generateProjectThumbnail();
            return;
        }
        int size = this.mMediaItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mMediaItems.get(i2).getId().equals(str)) {
                this.mMANativeHelper.setGeneratePreview(true);
                removeTransitionAfter(i2);
                this.mMediaItems.add(i2 + 1, mediaItem);
                computeTimelineDuration();
                return;
            }
        }
        throw new IllegalArgumentException("MediaItem not found: " + str);
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized void moveAudioTrack(String str, String str2) {
        throw new IllegalStateException("Not supported");
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized void moveMediaItem(String str, String str2) {
        MediaItem mediaItemRemoveMediaItem = removeMediaItem(str, true);
        if (mediaItemRemoveMediaItem == null) {
            throw new IllegalArgumentException("Target MediaItem not found: " + str);
        }
        if (str2 == null) {
            if (this.mMediaItems.size() <= 0) {
                throw new IllegalStateException("Cannot move media item (it is the only item)");
            }
            this.mMANativeHelper.setGeneratePreview(true);
            removeTransitionBefore(0);
            this.mMediaItems.add(0, mediaItemRemoveMediaItem);
            computeTimelineDuration();
            generateProjectThumbnail();
            return;
        }
        int size = this.mMediaItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.mMediaItems.get(i2).getId().equals(str2)) {
                this.mMANativeHelper.setGeneratePreview(true);
                removeTransitionAfter(i2);
                this.mMediaItems.add(i2 + 1, mediaItemRemoveMediaItem);
                computeTimelineDuration();
                return;
            }
        }
        throw new IllegalArgumentException("MediaItem not found: " + str2);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:? A[RETURN, SYNTHETIC] */
    @Override // android.media.videoeditor.VideoEditor
    public void release() {
        stopPreview();
        boolean z2 = false;
        try {
            try {
                lock();
                z2 = true;
                if (this.mMANativeHelper != null) {
                    this.mMediaItems.clear();
                    this.mAudioTracks.clear();
                    this.mTransitions.clear();
                    this.mMANativeHelper.releaseNativeHelper();
                    this.mMANativeHelper = null;
                }
            } catch (Exception e2) {
                Log.e(TAG, "Sem acquire NOT successful in export", e2);
                if (z2) {
                }
                if (this.mMallocDebug) {
                    try {
                        dumpHeap("HeapAtEnd");
                    } catch (Exception unused) {
                        Log.e(TAG, "dumpHeap returned error in release");
                        return;
                    }
                }
            }
            unlock();
            if (this.mMallocDebug) {
                dumpHeap("HeapAtEnd");
            }
        } catch (Throwable th) {
            if (z2) {
                unlock();
            }
            throw th;
        }
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized void removeAllMediaItems() {
        this.mMANativeHelper.setGeneratePreview(true);
        this.mMediaItems.clear();
        Iterator<Transition> it = this.mTransitions.iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
        this.mTransitions.clear();
        this.mDurationMs = 0L;
        if (new File(this.mProjectPath + "/" + VideoEditor.THUMBNAIL_FILENAME).exists()) {
            new File(this.mProjectPath + "/" + VideoEditor.THUMBNAIL_FILENAME).delete();
        }
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized AudioTrack removeAudioTrack(String str) {
        AudioTrack audioTrack;
        audioTrack = getAudioTrack(str);
        if (audioTrack == null) {
            throw new IllegalArgumentException(" No more audio tracks");
        }
        this.mMANativeHelper.setGeneratePreview(true);
        this.mAudioTracks.remove(audioTrack);
        audioTrack.invalidate();
        this.mMANativeHelper.invalidatePcmFile();
        this.mMANativeHelper.setAudioflag(true);
        return audioTrack;
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized MediaItem removeMediaItem(String str) {
        MediaItem mediaItem;
        String id = this.mMediaItems.get(0).getId();
        mediaItem = getMediaItem(str);
        if (mediaItem != null) {
            this.mMANativeHelper.setGeneratePreview(true);
            this.mMediaItems.remove(mediaItem);
            if (mediaItem instanceof MediaImageItem) {
                ((MediaImageItem) mediaItem).invalidate();
            }
            List<Overlay> allOverlays = mediaItem.getAllOverlays();
            if (allOverlays.size() > 0) {
                for (Overlay overlay : allOverlays) {
                    if (overlay instanceof OverlayFrame) {
                        ((OverlayFrame) overlay).invalidate();
                    }
                }
            }
            removeAdjacentTransitions(mediaItem);
            computeTimelineDuration();
        }
        if (id.equals(str)) {
            generateProjectThumbnail();
        }
        if (mediaItem instanceof MediaVideoItem) {
            ((MediaVideoItem) mediaItem).invalidate();
        }
        return mediaItem;
    }

    @Override // android.media.videoeditor.VideoEditor
    public synchronized Transition removeTransition(String str) {
        Transition transition;
        transition = getTransition(str);
        if (transition == null) {
            throw new IllegalStateException("Transition not found: " + str);
        }
        this.mMANativeHelper.setGeneratePreview(true);
        MediaItem afterMediaItem = transition.getAfterMediaItem();
        if (afterMediaItem != null) {
            afterMediaItem.setEndTransition(null);
        }
        MediaItem beforeMediaItem = transition.getBeforeMediaItem();
        if (beforeMediaItem != null) {
            beforeMediaItem.setBeginTransition(null);
        }
        this.mTransitions.remove(transition);
        transition.invalidate();
        computeTimelineDuration();
        return transition;
    }

    @Override // android.media.videoeditor.VideoEditor
    public long renderPreviewFrame(SurfaceHolder surfaceHolder, long j2, VideoEditor.OverlayData overlayData) throws Throwable {
        if (surfaceHolder == null) {
            throw new IllegalArgumentException("Surface Holder is null");
        }
        Surface surface = surfaceHolder.getSurface();
        if (surface == null) {
            throw new IllegalArgumentException("Surface could not be retrieved from Surface holder");
        }
        if (!surface.isValid()) {
            throw new IllegalStateException("Surface is not valid");
        }
        long jRenderPreviewFrame = 0;
        if (j2 < 0) {
            throw new IllegalArgumentException("requested time not correct");
        }
        if (j2 > this.mDurationMs) {
            throw new IllegalArgumentException("requested time more than duration");
        }
        boolean z2 = false;
        try {
            try {
                boolean zLock = lock(500L);
                try {
                    if (!zLock) {
                        throw new IllegalStateException("Timeout waiting for semaphore");
                    }
                    if (this.mMANativeHelper == null) {
                        throw new IllegalStateException("The video editor is not initialized");
                    }
                    if (this.mMediaItems.size() > 0) {
                        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
                        jRenderPreviewFrame = this.mMANativeHelper.renderPreviewFrame(surface, j2, surfaceFrame.width(), surfaceFrame.height(), overlayData);
                    }
                    if (zLock) {
                        unlock();
                    }
                    return jRenderPreviewFrame;
                } catch (InterruptedException unused) {
                    Log.w(TAG, "The thread was interrupted", new Throwable());
                    throw new IllegalStateException("The thread was interrupted");
                } catch (Throwable th) {
                    th = th;
                    z2 = zLock;
                    if (z2) {
                        unlock();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (InterruptedException unused2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0193  */
    @Override // android.media.videoeditor.VideoEditor
    public void save() throws IOException {
        String str;
        StringWriter stringWriter;
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        StringWriter stringWriter2 = new StringWriter();
        xmlSerializerNewSerializer.setOutput(stringWriter2);
        xmlSerializerNewSerializer.startDocument("UTF-8", Boolean.TRUE);
        String str2 = TAG_PROJECT;
        xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_PROJECT);
        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_ASPECT_RATIO, Integer.toString(this.mAspectRatio));
        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_REGENERATE_PCM, Boolean.toString(this.mMANativeHelper.getAudioflag()));
        xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_MEDIA_ITEMS);
        Iterator<MediaItem> it = this.mMediaItems.iterator();
        while (true) {
            str = "type";
            stringWriter = stringWriter2;
            if (!it.hasNext()) {
                break;
            }
            MediaItem next = it.next();
            Iterator<MediaItem> it2 = it;
            xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_MEDIA_ITEM);
            String str3 = str2;
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "id", next.getId());
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "type", next.getClass().getSimpleName());
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_FILENAME, next.getFilename());
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_RENDERING_MODE, Integer.toString(next.getRenderingMode()));
            if (next instanceof MediaVideoItem) {
                MediaVideoItem mediaVideoItem = (MediaVideoItem) next;
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEGIN_TIME, Long.toString(mediaVideoItem.getBoundaryBeginTime()));
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_TIME, Long.toString(mediaVideoItem.getBoundaryEndTime()));
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "volume", Integer.toString(mediaVideoItem.getVolume()));
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_MUTED, Boolean.toString(mediaVideoItem.isMuted()));
                if (mediaVideoItem.getAudioWaveformFilename() != null) {
                    xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_AUDIO_WAVEFORM_FILENAME, mediaVideoItem.getAudioWaveformFilename());
                }
            } else if (next instanceof MediaImageItem) {
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "duration", Long.toString(next.getTimelineDuration()));
            }
            List<Overlay> allOverlays = next.getAllOverlays();
            if (allOverlays.size() > 0) {
                xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_OVERLAYS);
                for (Iterator<Overlay> it3 = allOverlays.iterator(); it3.hasNext(); it3 = it3) {
                    Overlay next2 = it3.next();
                    xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_OVERLAY);
                    xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "id", next2.getId());
                    xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "type", next2.getClass().getSimpleName());
                    xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEGIN_TIME, Long.toString(next2.getStartTime()));
                    xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "duration", Long.toString(next2.getDuration()));
                    if (next2 instanceof OverlayFrame) {
                        OverlayFrame overlayFrame = (OverlayFrame) next2;
                        overlayFrame.save(getPath());
                        if (overlayFrame.getBitmapImageFileName() != null) {
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_FILENAME, overlayFrame.getBitmapImageFileName());
                        }
                        if (overlayFrame.getFilename() != null) {
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_OVERLAY_RGB_FILENAME, overlayFrame.getFilename());
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_OVERLAY_FRAME_WIDTH, Integer.toString(overlayFrame.getOverlayFrameWidth()));
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_OVERLAY_FRAME_HEIGHT, Integer.toString(overlayFrame.getOverlayFrameHeight()));
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_OVERLAY_RESIZED_RGB_FRAME_WIDTH, Integer.toString(overlayFrame.getResizedRGBSizeWidth()));
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_OVERLAY_RESIZED_RGB_FRAME_HEIGHT, Integer.toString(overlayFrame.getResizedRGBSizeHeight()));
                        }
                    }
                    xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_OVERLAY_USER_ATTRIBUTES);
                    Map<String, String> userAttributes = next2.getUserAttributes();
                    for (String str4 : userAttributes.keySet()) {
                        String str5 = userAttributes.get(str4);
                        if (str5 != null) {
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, str4, str5);
                        }
                    }
                    xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_OVERLAY_USER_ATTRIBUTES);
                    xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_OVERLAY);
                }
                xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_OVERLAYS);
            }
            List<Effect> allEffects = next.getAllEffects();
            if (allEffects.size() > 0) {
                xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_EFFECTS);
                for (Effect effect : allEffects) {
                    xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_EFFECT);
                    xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "id", effect.getId());
                    xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "type", effect.getClass().getSimpleName());
                    xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEGIN_TIME, Long.toString(effect.getStartTime()));
                    xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "duration", Long.toString(effect.getDuration()));
                    if (effect instanceof EffectColor) {
                        EffectColor effectColor = (EffectColor) effect;
                        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "color_type", Integer.toString(effectColor.getType()));
                        if (effectColor.getType() == 1 || effectColor.getType() == 2) {
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_COLOR_EFFECT_VALUE, Integer.toString(effectColor.getColor()));
                        }
                    } else if (effect instanceof EffectKenBurns) {
                        EffectKenBurns effectKenBurns = (EffectKenBurns) effect;
                        Rect startRect = effectKenBurns.getStartRect();
                        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_START_RECT_LEFT, Integer.toString(startRect.left));
                        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_START_RECT_TOP, Integer.toString(startRect.top));
                        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_START_RECT_RIGHT, Integer.toString(startRect.right));
                        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_START_RECT_BOTTOM, Integer.toString(startRect.bottom));
                        Rect endRect = effectKenBurns.getEndRect();
                        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_RECT_LEFT, Integer.toString(endRect.left));
                        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_RECT_TOP, Integer.toString(endRect.top));
                        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_RECT_RIGHT, Integer.toString(endRect.right));
                        xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_RECT_BOTTOM, Integer.toString(endRect.bottom));
                        MediaImageItem mediaImageItem = (MediaImageItem) effect.getMediaItem();
                        if (mediaImageItem.getGeneratedImageClip() != null) {
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_IS_IMAGE_CLIP_GENERATED, Boolean.toString(true));
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_GENERATED_IMAGE_CLIP, mediaImageItem.getGeneratedImageClip());
                        } else {
                            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_IS_IMAGE_CLIP_GENERATED, Boolean.toString(false));
                        }
                    }
                    xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_EFFECT);
                }
                xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_EFFECTS);
            }
            xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_MEDIA_ITEM);
            stringWriter2 = stringWriter;
            it = it2;
            str2 = str3;
        }
        String str6 = str2;
        xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_MEDIA_ITEMS);
        xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_TRANSITIONS);
        Iterator<Transition> it4 = this.mTransitions.iterator();
        while (it4.hasNext()) {
            Transition next3 = it4.next();
            xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_TRANSITION);
            Iterator<Transition> it5 = it4;
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "id", next3.getId());
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, str, next3.getClass().getSimpleName());
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "duration", Long.toString(next3.getDuration()));
            String str7 = str;
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEHAVIOR, Integer.toString(next3.getBehavior()));
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_IS_TRANSITION_GENERATED, Boolean.toString(next3.isGenerated()));
            if (next3.isGenerated()) {
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_GENERATED_TRANSITION_CLIP, next3.mFilename);
            }
            MediaItem afterMediaItem = next3.getAfterMediaItem();
            if (afterMediaItem != null) {
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_AFTER_MEDIA_ITEM_ID, afterMediaItem.getId());
            }
            MediaItem beforeMediaItem = next3.getBeforeMediaItem();
            if (beforeMediaItem != null) {
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEFORE_MEDIA_ITEM_ID, beforeMediaItem.getId());
            }
            if (next3 instanceof TransitionSliding) {
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_DIRECTION, Integer.toString(((TransitionSliding) next3).getDirection()));
            } else if (next3 instanceof TransitionAlpha) {
                TransitionAlpha transitionAlpha = (TransitionAlpha) next3;
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BLENDING, Integer.toString(transitionAlpha.getBlendingPercent()));
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_INVERT, Boolean.toString(transitionAlpha.isInvert()));
                if (transitionAlpha.getMaskFilename() != null) {
                    xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_MASK, transitionAlpha.getMaskFilename());
                }
            }
            xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_TRANSITION);
            it4 = it5;
            str = str7;
        }
        xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_TRANSITIONS);
        xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_AUDIO_TRACKS);
        for (AudioTrack audioTrack : this.mAudioTracks) {
            xmlSerializerNewSerializer.startTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_AUDIO_TRACK);
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "id", audioTrack.getId());
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_FILENAME, audioTrack.getFilename());
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_START_TIME, Long.toString(audioTrack.getStartTime()));
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_BEGIN_TIME, Long.toString(audioTrack.getBoundaryBeginTime()));
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_END_TIME, Long.toString(audioTrack.getBoundaryEndTime()));
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, "volume", Integer.toString(audioTrack.getVolume()));
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_DUCK_ENABLED, Boolean.toString(audioTrack.isDuckingEnabled()));
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_DUCKED_TRACK_VOLUME, Integer.toString(audioTrack.getDuckedTrackVolume()));
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_DUCK_THRESHOLD, Integer.toString(audioTrack.getDuckingThreshhold()));
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_MUTED, Boolean.toString(audioTrack.isMuted()));
            xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_LOOP, Boolean.toString(audioTrack.isLooping()));
            if (audioTrack.getAudioWaveformFilename() != null) {
                xmlSerializerNewSerializer.attribute(ProxyProperties.LOCAL_EXCL_LIST, ATTR_AUDIO_WAVEFORM_FILENAME, audioTrack.getAudioWaveformFilename());
            }
            xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_AUDIO_TRACK);
        }
        xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, TAG_AUDIO_TRACKS);
        xmlSerializerNewSerializer.endTag(ProxyProperties.LOCAL_EXCL_LIST, str6);
        xmlSerializerNewSerializer.endDocument();
        FileOutputStream fileOutputStream = new FileOutputStream(new File(getPath(), PROJECT_FILENAME));
        fileOutputStream.write(stringWriter.toString().getBytes());
        fileOutputStream.flush();
        fileOutputStream.close();
    }

    @Override // android.media.videoeditor.VideoEditor
    public void setAspectRatio(int i2) {
        this.mAspectRatio = i2;
        this.mMANativeHelper.setGeneratePreview(true);
        Iterator<Transition> it = this.mTransitions.iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
        Iterator<MediaItem> it2 = this.mMediaItems.iterator();
        while (it2.hasNext()) {
            Iterator<Overlay> it3 = it2.next().getAllOverlays().iterator();
            while (it3.hasNext()) {
                ((OverlayFrame) it3.next()).invalidateGeneratedFiles();
            }
        }
    }

    @Override // android.media.videoeditor.VideoEditor
    public void startPreview(SurfaceHolder surfaceHolder, long j2, long j3, boolean z2, int i2, VideoEditor.PreviewProgressListener previewProgressListener) {
        if (surfaceHolder == null) {
            throw new IllegalArgumentException();
        }
        Surface surface = surfaceHolder.getSurface();
        if (surface == null) {
            throw new IllegalArgumentException("Surface could not be retrieved from surface holder");
        }
        if (!surface.isValid()) {
            throw new IllegalStateException("Surface is not valid");
        }
        if (previewProgressListener == null) {
            throw new IllegalArgumentException();
        }
        if (j2 >= this.mDurationMs) {
            throw new IllegalArgumentException("Requested time not correct");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("Requested time not correct");
        }
        if (this.mPreviewInProgress) {
            throw new IllegalStateException("Preview already in progress");
        }
        try {
            if (!lock(500L)) {
                throw new IllegalStateException("Timeout waiting for semaphore");
            }
            if (this.mMANativeHelper == null) {
                throw new IllegalStateException("The video editor is not initialized");
            }
            if (this.mMediaItems.size() > 0) {
                this.mPreviewInProgress = true;
                this.mMANativeHelper.previewStoryBoard(this.mMediaItems, this.mTransitions, this.mAudioTracks, null);
                this.mMANativeHelper.doPreview(surface, j2, j3, z2, i2, previewProgressListener);
            }
        } catch (InterruptedException unused) {
            Log.w(TAG, "The thread was interrupted", new Throwable());
            throw new IllegalStateException("The thread was interrupted");
        }
    }

    @Override // android.media.videoeditor.VideoEditor
    public long stopPreview() {
        if (!this.mPreviewInProgress) {
            return 0L;
        }
        try {
            return this.mMANativeHelper.stopPreview();
        } finally {
            this.mPreviewInProgress = false;
            unlock();
        }
    }

    public void updateTimelineDuration() {
        computeTimelineDuration();
    }

    private boolean lock(long j2) throws InterruptedException {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "lock: grabbing semaphore with timeout " + j2, new Throwable());
        }
        boolean zTryAcquire = this.mLock.tryAcquire(j2, TimeUnit.MILLISECONDS);
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "lock: grabbed semaphore status " + zTryAcquire);
        }
        return zTryAcquire;
    }

    private synchronized MediaItem removeMediaItem(String str, boolean z2) {
        MediaItem mediaItem;
        String id = this.mMediaItems.get(0).getId();
        mediaItem = getMediaItem(str);
        if (mediaItem != null) {
            this.mMANativeHelper.setGeneratePreview(true);
            this.mMediaItems.remove(mediaItem);
            removeAdjacentTransitions(mediaItem);
            computeTimelineDuration();
        }
        if (id.equals(str)) {
            generateProjectThumbnail();
        }
        return mediaItem;
    }

    @Override // android.media.videoeditor.VideoEditor
    public void export(String str, int i2, int i3, VideoEditor.ExportProgressListener exportProgressListener) throws Throwable {
        export(str, i2, i3, 2, 2, exportProgressListener);
    }
}
