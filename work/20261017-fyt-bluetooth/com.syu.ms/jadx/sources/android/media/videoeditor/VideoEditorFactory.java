package android.media.videoeditor;

import android.provider.MediaStore;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: loaded from: classes.dex */
public class VideoEditorFactory {
    public static VideoEditor create(String str) throws FileNotFoundException {
        File file = new File(str);
        if (!file.exists()) {
            if (!file.mkdirs()) {
                throw new FileNotFoundException("Cannot create project path: " + str);
            }
            if (!new File(file, MediaStore.MEDIA_IGNORE_FILENAME).createNewFile()) {
                throw new FileNotFoundException("Cannot create file .nomedia");
            }
        }
        return new VideoEditorImpl(str);
    }

    public static VideoEditor load(String str, boolean z2) {
        VideoEditorImpl videoEditorImpl = new VideoEditorImpl(str);
        if (z2) {
            videoEditorImpl.generatePreview(null);
        }
        return videoEditorImpl;
    }
}
