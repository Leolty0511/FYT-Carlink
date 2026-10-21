package org.ksoap2.serialization;

import java.io.IOException;
import java.math.BigDecimal;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class MarshalFloat implements Marshal {
    @Override // org.ksoap2.serialization.Marshal
    public Object readInstance(XmlPullParser parser, String namespace, String name, PropertyInfo propertyInfo) throws XmlPullParserException, IOException {
        String stringValue = parser.nextText();
        if (name.equals("float")) {
            Object result = new Float(stringValue);
            return result;
        }
        if (name.equals("double")) {
            Object result2 = new Double(stringValue);
            return result2;
        }
        if (name.equals("decimal")) {
            Object result3 = new BigDecimal(stringValue);
            return result3;
        }
        throw new RuntimeException("float, double, or decimal expected");
    }

    @Override // org.ksoap2.serialization.Marshal
    public void writeInstance(XmlSerializer writer, Object instance) throws IOException {
        writer.text(instance.toString());
    }

    @Override // org.ksoap2.serialization.Marshal
    public void register(SoapSerializationEnvelope cm) {
        cm.addMapping(cm.xsd, "float", Float.class, this);
        cm.addMapping(cm.xsd, "double", Double.class, this);
        cm.addMapping(cm.xsd, "decimal", BigDecimal.class, this);
    }
}
