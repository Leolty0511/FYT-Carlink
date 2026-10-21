package android.content;

import java.io.InputStream;
import org.xml.sax.ContentHandler;

/* JADX INFO: loaded from: classes.dex */
public interface ContentInsertHandler extends ContentHandler {
    void insert(ContentResolver contentResolver, InputStream inputStream);

    void insert(ContentResolver contentResolver, String str);
}
