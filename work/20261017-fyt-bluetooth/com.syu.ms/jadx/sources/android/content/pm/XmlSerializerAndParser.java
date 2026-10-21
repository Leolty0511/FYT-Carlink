package android.content.pm;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public interface XmlSerializerAndParser<T> {
    T createFromXml(XmlPullParser xmlPullParser);

    void writeAsXml(T t2, XmlSerializer xmlSerializer);
}
