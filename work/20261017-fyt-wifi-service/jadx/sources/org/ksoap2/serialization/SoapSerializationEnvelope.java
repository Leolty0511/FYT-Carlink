package org.ksoap2.serialization;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Vector;
import org.ksoap2.SoapEnvelope;
import org.ksoap2.SoapFault;
import org.ksoap2.SoapFault12;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class SoapSerializationEnvelope extends SoapEnvelope {
    private static final String ANY_TYPE_LABEL = "anyType";
    private static final String ARRAY_MAPPING_NAME = "Array";
    private static final String ARRAY_TYPE_LABEL = "arrayType";
    static final Marshal DEFAULT_MARSHAL = new DM();
    private static final String HREF_LABEL = "href";
    private static final String ID_LABEL = "id";
    private static final String ITEM_LABEL = "item";
    protected static final String NIL_LABEL = "nil";
    protected static final String NULL_LABEL = "null";
    protected static final int QNAME_MARSHAL = 3;
    protected static final int QNAME_NAMESPACE = 0;
    protected static final int QNAME_TYPE = 1;
    private static final String ROOT_LABEL = "root";
    private static final String TYPE_LABEL = "type";
    protected boolean addAdornments;
    public boolean avoidExceptionForUnknownProperty;
    protected Hashtable classToQName;
    public boolean dotNet;
    Hashtable idMap;
    public boolean implicitTypes;
    Vector multiRef;
    public Hashtable properties;
    protected Hashtable qNameToClass;
    public boolean skipNullProperties;

    public SoapSerializationEnvelope(int version) {
        super(version);
        this.properties = new Hashtable();
        this.qNameToClass = new Hashtable();
        this.classToQName = new Hashtable();
        this.addAdornments = true;
        this.idMap = new Hashtable();
        addMapping(this.enc, ARRAY_MAPPING_NAME, PropertyInfo.VECTOR_CLASS);
        DEFAULT_MARSHAL.register(this);
    }

    public boolean isAddAdornments() {
        return this.addAdornments;
    }

    public void setAddAdornments(boolean addAdornments) {
        this.addAdornments = addAdornments;
    }

    public void setBodyOutEmpty(boolean emptyBody) {
        if (emptyBody) {
            this.bodyOut = null;
        }
    }

    @Override // org.ksoap2.SoapEnvelope
    public void parseBody(XmlPullParser parser) throws XmlPullParserException, IllegalAccessException, InstantiationException, IOException {
        SoapFault fault;
        this.bodyIn = null;
        parser.nextTag();
        if (parser.getEventType() == 2 && parser.getNamespace().equals(this.env) && parser.getName().equals("Fault")) {
            if (this.version < 120) {
                fault = new SoapFault(this.version);
            } else {
                fault = new SoapFault12(this.version);
            }
            fault.parse(parser);
            this.bodyIn = fault;
            return;
        }
        while (parser.getEventType() == 2) {
            String rootAttr = parser.getAttributeValue(this.enc, ROOT_LABEL);
            Object o = read(parser, null, -1, parser.getNamespace(), parser.getName(), PropertyInfo.OBJECT_TYPE);
            if ("1".equals(rootAttr) || this.bodyIn == null) {
                this.bodyIn = o;
            }
            parser.nextTag();
        }
    }

    protected void readSerializable(XmlPullParser parser, SoapObject obj) throws XmlPullParserException, IOException {
        for (int counter = 0; counter < parser.getAttributeCount(); counter++) {
            String attributeName = parser.getAttributeName(counter);
            String value = parser.getAttributeValue(counter);
            obj.addAttribute(attributeName, value);
        }
        readSerializable(parser, (KvmSerializable) obj);
    }

    protected void readSerializable(XmlPullParser parser, KvmSerializable obj) throws XmlPullParserException, IOException {
        int tag;
        int i;
        try {
            int tag2 = parser.nextTag();
            tag = tag2;
        } catch (XmlPullParserException e) {
            if (obj instanceof HasInnerText) {
                ((HasInnerText) obj).setInnerText(parser.getText() != null ? parser.getText() : "");
            }
            int tag3 = parser.nextTag();
            tag = tag3;
        }
        while (tag != 3) {
            String name = parser.getName();
            try {
                if (!this.implicitTypes || !(obj instanceof SoapObject)) {
                    PropertyInfo info = new PropertyInfo();
                    int propertyCount = obj.getPropertyCount();
                    boolean propertyFound = false;
                    int i2 = 0;
                    while (i2 < propertyCount && !propertyFound) {
                        info.clear();
                        obj.getPropertyInfo(i2, this.properties, info);
                        if ((!name.equals(info.name) || info.namespace != null) && (!name.equals(info.name) || !parser.getNamespace().equals(info.namespace))) {
                            i = i2;
                        } else {
                            i = i2;
                            obj.setProperty(i, read(parser, obj, i2, null, null, info));
                            propertyFound = true;
                        }
                        i2 = i + 1;
                    }
                    if (!propertyFound) {
                        if (!this.avoidExceptionForUnknownProperty) {
                            throw new RuntimeException("Unknown Property: " + name);
                        }
                        while (true) {
                            if (parser.next() == 3 && name.equals(parser.getName())) {
                                break;
                            }
                        }
                        int tag4 = parser.nextTag();
                        tag = tag4;
                    } else if (obj instanceof HasAttributes) {
                        HasAttributes soapObject = (HasAttributes) obj;
                        int cnt = parser.getAttributeCount();
                        for (int counter = 0; counter < cnt; counter++) {
                            AttributeInfo attributeInfo = new AttributeInfo();
                            attributeInfo.setName(parser.getAttributeName(counter));
                            attributeInfo.setValue(parser.getAttributeValue(counter));
                            attributeInfo.setNamespace(parser.getAttributeNamespace(counter));
                            attributeInfo.setType(parser.getAttributeType(counter));
                            soapObject.setAttribute(attributeInfo);
                        }
                    }
                } else {
                    ((SoapObject) obj).addProperty(parser.getName(), read(parser, obj, obj.getPropertyCount(), ((SoapObject) obj).getNamespace(), name, PropertyInfo.OBJECT_TYPE));
                }
                int tag5 = parser.nextTag();
                tag = tag5;
            } catch (XmlPullParserException e2) {
                if (obj instanceof HasInnerText) {
                    ((HasInnerText) obj).setInnerText(parser.getText() != null ? parser.getText() : "");
                }
                tag = parser.nextTag();
            }
        }
        parser.require(3, null, null);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x009b  */
    /* JADX WARN: Code duplicated, block: B:32:0x00bd A[LOOP:2: B:30:0x00b7->B:32:0x00bd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cf A[LOOP:3: B:33:0x00c9->B:35:0x00cf, LOOP_END] */
    protected Object readUnknown(XmlPullParser parser, String typeNamespace, String typeName) throws XmlPullParserException, IOException {
        Object result;
        String text;
        SoapObject so;
        int i;
        int i2;
        String name = parser.getName();
        String namespace = parser.getNamespace();
        Vector attributeInfoVector = new Vector();
        for (int attributeCount = 0; attributeCount < parser.getAttributeCount(); attributeCount++) {
            AttributeInfo attributeInfo = new AttributeInfo();
            attributeInfo.setName(parser.getAttributeName(attributeCount));
            attributeInfo.setValue(parser.getAttributeValue(attributeCount));
            attributeInfo.setNamespace(parser.getAttributeNamespace(attributeCount));
            attributeInfo.setType(parser.getAttributeType(attributeCount));
            attributeInfoVector.addElement(attributeInfo);
        }
        parser.next();
        Object result2 = null;
        String text2 = null;
        if (parser.getEventType() == 4) {
            text2 = parser.getText();
            SoapPrimitive sp = new SoapPrimitive(typeNamespace, typeName, text2);
            result2 = sp;
            for (int i3 = 0; i3 < attributeInfoVector.size(); i3++) {
                sp.addAttribute((AttributeInfo) attributeInfoVector.elementAt(i3));
            }
            parser.next();
        } else {
            if (parser.getEventType() == 3) {
                SoapObject so2 = new SoapObject(typeNamespace, typeName);
                for (int i4 = 0; i4 < attributeInfoVector.size(); i4++) {
                    so2.addAttribute((AttributeInfo) attributeInfoVector.elementAt(i4));
                }
                result = so2;
                text = null;
            }
            if (parser.getEventType() == 2) {
                if (text == null && text.trim().length() != 0) {
                    throw new RuntimeException("Malformed input: Mixed content");
                }
                so = new SoapObject(typeNamespace, typeName);
                for (i = 0; i < attributeInfoVector.size(); i++) {
                    so.addAttribute((AttributeInfo) attributeInfoVector.elementAt(i));
                }
                for (int i5 = 3; i2 != i5; i5 = 3) {
                    SoapObject so3 = so;
                    so3.addProperty(parser.getNamespace(), parser.getName(), read(parser, so, so.getPropertyCount(), null, null, PropertyInfo.OBJECT_TYPE));
                    parser.nextTag();
                    so = so3;
                }
                result = so;
            }
            parser.require(3, namespace, name);
            return result;
        }
        result = result2;
        text = text2;
        if (parser.getEventType() == 2) {
            if (text == null) {
            }
            so = new SoapObject(typeNamespace, typeName);
            while (i < attributeInfoVector.size()) {
                so.addAttribute((AttributeInfo) attributeInfoVector.elementAt(i));
            }
            while (i2 != i5) {
                SoapObject so4 = so;
                so4.addProperty(parser.getNamespace(), parser.getName(), read(parser, so, so.getPropertyCount(), null, null, PropertyInfo.OBJECT_TYPE));
                parser.nextTag();
                so = so4;
            }
            result = so;
        }
        parser.require(3, namespace, name);
        return result;
    }

    private int getIndex(String value, int start, int dflt) {
        if (value == null) {
            return dflt;
        }
        try {
            return value.length() - start < 3 ? dflt : Integer.parseInt(value.substring(start + 1, value.length() - 1));
        } catch (Exception e) {
            return dflt;
        }
    }

    protected void readVector(XmlPullParser parser, Vector v, PropertyInfo elementType) throws XmlPullParserException, IOException {
        String namespace;
        String name;
        boolean dynamic;
        PropertyInfo elementType2;
        int size;
        int size2 = v.size();
        String type = parser.getAttributeValue(this.enc, ARRAY_TYPE_LABEL);
        int i = 0;
        if (type == null) {
            namespace = null;
            name = null;
            dynamic = true;
        } else {
            int cut0 = type.indexOf(58);
            int cut1 = type.indexOf("[", cut0);
            String name2 = type.substring(cut0 + 1, cut1);
            String prefix = cut0 == -1 ? "" : type.substring(0, cut0);
            String namespace2 = parser.getNamespace(prefix);
            size2 = getIndex(type, cut1, -1);
            if (size2 == -1) {
                namespace = namespace2;
                name = name2;
                dynamic = true;
            } else {
                v.setSize(size2);
                namespace = namespace2;
                name = name2;
                dynamic = false;
            }
        }
        if (elementType != null) {
            elementType2 = elementType;
        } else {
            elementType2 = PropertyInfo.OBJECT_TYPE;
        }
        parser.nextTag();
        int position = getIndex(parser.getAttributeValue(this.enc, "offset"), 0, 0);
        while (parser.getEventType() != 3) {
            int position2 = getIndex(parser.getAttributeValue(this.enc, "position"), i, position);
            if (dynamic && position2 >= size2) {
                int size3 = position2 + 1;
                v.setSize(size3);
                size = size3;
            } else {
                size = size2;
            }
            v.setElementAt(read(parser, v, position2, namespace, name, elementType2), position2);
            position = position2 + 1;
            parser.nextTag();
            size2 = size;
            i = 0;
        }
        parser.require(3, null, null);
    }

    protected String getIdFromHref(String hrefValue) {
        return hrefValue.substring(1);
    }

    public Object read(XmlPullParser parser, Object owner, int index, String namespace, String name, PropertyInfo expected) throws XmlPullParserException, IllegalAccessException, InstantiationException, IOException {
        String prefix;
        String name2;
        Object obj;
        String elementName = parser.getName();
        String href = parser.getAttributeValue(null, HREF_LABEL);
        if (href == null) {
            String nullAttr = parser.getAttributeValue(this.xsi, NIL_LABEL);
            String id = parser.getAttributeValue(null, ID_LABEL);
            if (nullAttr == null) {
                nullAttr = parser.getAttributeValue(this.xsi, NULL_LABEL);
            }
            if (nullAttr != null && SoapEnvelope.stringToBoolean(nullAttr)) {
                parser.nextTag();
                parser.require(3, null, elementName);
                obj = null;
            } else {
                String type = parser.getAttributeValue(this.xsi, TYPE_LABEL);
                if (type != null) {
                    int cut = type.indexOf(58);
                    String name3 = type.substring(cut + 1);
                    String prefix2 = cut == -1 ? "" : type.substring(0, cut);
                    prefix = parser.getNamespace(prefix2);
                    name2 = name3;
                } else if (name == null && namespace == null) {
                    if (parser.getAttributeValue(this.enc, ARRAY_TYPE_LABEL) == null) {
                        Object[] names = getInfo(expected.type, null);
                        String namespace2 = (String) names[0];
                        String str = (String) names[1];
                        prefix = namespace2;
                        name2 = str;
                    } else {
                        prefix = this.enc;
                        name2 = ARRAY_MAPPING_NAME;
                    }
                } else {
                    prefix = namespace;
                    name2 = name;
                }
                if (type == null) {
                    this.implicitTypes = true;
                }
                obj = readInstance(parser, prefix, name2, expected);
                if (obj == null) {
                    obj = readUnknown(parser, prefix, name2);
                }
            }
            if (id != null) {
                resolveReference(id, obj);
            }
        } else {
            if (owner == null) {
                throw new RuntimeException("href at root level?!?");
            }
            String href2 = getIdFromHref(href);
            Object obj2 = this.idMap.get(href2);
            if (obj2 == null || (obj2 instanceof FwdRef)) {
                FwdRef f = new FwdRef();
                f.next = (FwdRef) obj2;
                f.obj = owner;
                f.index = index;
                this.idMap.put(href2, f);
                obj2 = null;
            }
            parser.nextTag();
            parser.require(3, null, elementName);
            obj = obj2;
        }
        parser.require(3, null, elementName);
        return obj;
    }

    protected void resolveReference(String id, Object obj) {
        Object hlp = this.idMap.get(id);
        if (hlp instanceof FwdRef) {
            FwdRef f = (FwdRef) hlp;
            do {
                if (f.obj instanceof KvmSerializable) {
                    ((KvmSerializable) f.obj).setProperty(f.index, obj);
                } else {
                    ((Vector) f.obj).setElementAt(obj, f.index);
                }
                f = f.next;
            } while (f != null);
        } else if (hlp != null) {
            throw new RuntimeException("double ID");
        }
        this.idMap.put(id, obj);
    }

    public Object readInstance(XmlPullParser parser, String namespace, String name, PropertyInfo expected) throws XmlPullParserException, IllegalAccessException, InstantiationException, IOException {
        Object obj;
        Object obj2 = this.qNameToClass.get(new SoapPrimitive(namespace, name, null));
        if (obj2 == null) {
            return null;
        }
        if (obj2 instanceof Marshal) {
            return ((Marshal) obj2).readInstance(parser, namespace, name, expected);
        }
        if (obj2 instanceof SoapObject) {
            obj = ((SoapObject) obj2).newInstance();
        } else if (obj2 == SoapObject.class) {
            obj = new SoapObject(namespace, name);
        } else {
            try {
                obj = ((Class) obj2).newInstance();
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        if (obj instanceof HasAttributes) {
            HasAttributes soapObject = (HasAttributes) obj;
            int cnt = parser.getAttributeCount();
            for (int counter = 0; counter < cnt; counter++) {
                AttributeInfo attributeInfo = new AttributeInfo();
                attributeInfo.setName(parser.getAttributeName(counter));
                attributeInfo.setValue(parser.getAttributeValue(counter));
                attributeInfo.setNamespace(parser.getAttributeNamespace(counter));
                attributeInfo.setType(parser.getAttributeType(counter));
                soapObject.setAttribute(attributeInfo);
            }
        }
        if (obj instanceof SoapObject) {
            readSerializable(parser, (SoapObject) obj);
        } else if (obj instanceof KvmSerializable) {
            if (obj instanceof HasInnerText) {
                ((HasInnerText) obj).setInnerText(parser.getText() != null ? parser.getText() : "");
            }
            readSerializable(parser, (KvmSerializable) obj);
        } else if (obj instanceof Vector) {
            readVector(parser, (Vector) obj, expected.elementType);
        } else {
            throw new RuntimeException("no deserializer for " + obj.getClass());
        }
        return obj;
    }

    public Object[] getInfo(Object type, Object instance) {
        Object[] tmp;
        if (type == null) {
            if ((instance instanceof SoapObject) || (instance instanceof SoapPrimitive)) {
                type = instance;
            } else {
                type = instance.getClass();
            }
        }
        if (type instanceof SoapObject) {
            SoapObject so = (SoapObject) type;
            return new Object[]{so.getNamespace(), so.getName(), null, null};
        }
        if (type instanceof SoapPrimitive) {
            SoapPrimitive sp = (SoapPrimitive) type;
            return new Object[]{sp.getNamespace(), sp.getName(), null, DEFAULT_MARSHAL};
        }
        if ((type instanceof Class) && type != PropertyInfo.OBJECT_CLASS && (tmp = (Object[]) this.classToQName.get(((Class) type).getName())) != null) {
            return tmp;
        }
        return new Object[]{this.xsd, ANY_TYPE_LABEL, null, null};
    }

    public void addMapping(String namespace, String name, Class clazz, Marshal marshal) {
        this.qNameToClass.put(new SoapPrimitive(namespace, name, null), marshal == null ? clazz : marshal);
        this.classToQName.put(clazz.getName(), new Object[]{namespace, name, null, marshal});
    }

    public void addMapping(String namespace, String name, Class clazz) {
        addMapping(namespace, name, clazz, null);
    }

    public void addTemplate(SoapObject so) {
        this.qNameToClass.put(new SoapPrimitive(so.namespace, so.name, null), so);
    }

    public Object getResponse() throws SoapFault {
        if (this.bodyIn == null) {
            return null;
        }
        if (this.bodyIn instanceof SoapFault) {
            throw ((SoapFault) this.bodyIn);
        }
        KvmSerializable ks = (KvmSerializable) this.bodyIn;
        if (ks.getPropertyCount() == 0) {
            return null;
        }
        if (ks.getPropertyCount() == 1) {
            return ks.getProperty(0);
        }
        Vector ret = new Vector();
        for (int i = 0; i < ks.getPropertyCount(); i++) {
            ret.add(ks.getProperty(i));
        }
        return ret;
    }

    @Override // org.ksoap2.SoapEnvelope
    public void writeBody(XmlSerializer writer) throws IOException {
        if (this.bodyOut != null) {
            this.multiRef = new Vector();
            this.multiRef.addElement(this.bodyOut);
            Object[] qName = getInfo(null, this.bodyOut);
            writer.startTag(this.dotNet ? "" : (String) qName[0], (String) qName[1]);
            if (this.dotNet) {
                writer.attribute(null, "xmlns", (String) qName[0]);
            }
            if (this.addAdornments) {
                writer.attribute(null, ID_LABEL, qName[2] == null ? "o0" : (String) qName[2]);
                writer.attribute(this.enc, ROOT_LABEL, "1");
            }
            writeElement(writer, this.bodyOut, null, qName[3]);
            writer.endTag(this.dotNet ? "" : (String) qName[0], (String) qName[1]);
        }
    }

    private void writeAttributes(XmlSerializer writer, HasAttributes obj) throws IOException {
        int cnt = obj.getAttributeCount();
        for (int counter = 0; counter < cnt; counter++) {
            AttributeInfo attributeInfo = new AttributeInfo();
            obj.getAttributeInfo(counter, attributeInfo);
            obj.getAttribute(counter, attributeInfo);
            if (attributeInfo.getValue() != null) {
                writer.attribute(attributeInfo.getNamespace(), attributeInfo.getName(), attributeInfo.getValue().toString());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeArrayListBodyWithAttributes(XmlSerializer writer, KvmSerializable kvmSerializable) throws IOException {
        if (kvmSerializable instanceof HasAttributes) {
            writeAttributes(writer, (HasAttributes) kvmSerializable);
        }
        writeArrayListBody(writer, (ArrayList) kvmSerializable);
    }

    public void writeObjectBodyWithAttributes(XmlSerializer writer, KvmSerializable obj) throws IOException {
        if (obj instanceof HasAttributes) {
            writeAttributes(writer, (HasAttributes) obj);
        }
        writeObjectBody(writer, obj);
    }

    public void writeObjectBody(XmlSerializer writer, KvmSerializable obj) throws IOException {
        String name;
        String namespace;
        int cnt = obj.getPropertyCount();
        PropertyInfo propertyInfo = new PropertyInfo();
        for (int i = 0; i < cnt; i++) {
            Object prop = obj.getProperty(i);
            obj.getPropertyInfo(i, this.properties, propertyInfo);
            if (!(prop instanceof SoapObject)) {
                if ((propertyInfo.flags & 1) == 0) {
                    Object objValue = obj.getProperty(i);
                    if ((prop != null || !this.skipNullProperties) && objValue != SoapPrimitive.NullSkip) {
                        writer.startTag(propertyInfo.namespace, propertyInfo.name);
                        writeProperty(writer, objValue, propertyInfo);
                        writer.endTag(propertyInfo.namespace, propertyInfo.name);
                    }
                }
            } else {
                KvmSerializable nestedSoap = (SoapObject) prop;
                Object[] qName = getInfo(null, nestedSoap);
                String type = (String) qName[1];
                if (propertyInfo.name != null && propertyInfo.name.length() > 0) {
                    name = propertyInfo.name;
                } else {
                    name = (String) qName[1];
                }
                if (propertyInfo.namespace != null && propertyInfo.namespace.length() > 0) {
                    namespace = propertyInfo.namespace;
                } else {
                    namespace = (String) qName[0];
                }
                writer.startTag(namespace, name);
                if (!this.implicitTypes) {
                    String prefix = writer.getPrefix(namespace, true);
                    writer.attribute(this.xsi, TYPE_LABEL, prefix + ":" + type);
                }
                writeObjectBodyWithAttributes(writer, nestedSoap);
                writer.endTag(namespace, name);
            }
        }
        writeInnerText(writer, obj);
    }

    private void writeInnerText(XmlSerializer writer, KvmSerializable obj) throws IOException {
        Object value;
        if ((obj instanceof HasInnerText) && (value = ((HasInnerText) obj).getInnerText()) != null) {
            if (value instanceof ValueWriter) {
                ((ValueWriter) value).write(writer);
            } else {
                writer.cdsect(value.toString());
            }
        }
    }

    protected void writeProperty(XmlSerializer writer, Object obj, PropertyInfo type) throws IOException {
        String str;
        if (obj == null || obj == SoapPrimitive.NullNilElement) {
            writer.attribute(this.xsi, this.version >= 120 ? NIL_LABEL : NULL_LABEL, "true");
            return;
        }
        Object[] qName = getInfo(null, obj);
        if (type.multiRef || qName[2] != null) {
            int i = this.multiRef.indexOf(obj);
            if (i == -1) {
                i = this.multiRef.size();
                this.multiRef.addElement(obj);
            }
            if (qName[2] == null) {
                str = "#o" + i;
            } else {
                str = "#" + qName[2];
            }
            writer.attribute(null, HREF_LABEL, str);
            return;
        }
        if (!this.implicitTypes || obj.getClass() != type.type) {
            String prefix = writer.getPrefix((String) qName[0], true);
            writer.attribute(this.xsi, TYPE_LABEL, prefix + ":" + qName[1]);
        }
        writeElement(writer, obj, type, qName[3]);
    }

    protected void writeElement(XmlSerializer writer, Object element, PropertyInfo type, Object marshal) throws IOException {
        if (marshal != null) {
            ((Marshal) marshal).writeInstance(writer, element);
            return;
        }
        if ((element instanceof KvmSerializable) || element == SoapPrimitive.NullNilElement || element == SoapPrimitive.NullSkip) {
            if (element instanceof ArrayList) {
                writeArrayListBodyWithAttributes(writer, (KvmSerializable) element);
                return;
            } else {
                writeObjectBodyWithAttributes(writer, (KvmSerializable) element);
                return;
            }
        }
        if (element instanceof HasAttributes) {
            writeAttributes(writer, (HasAttributes) element);
        } else {
            if (element instanceof Vector) {
                writeVectorBody(writer, (Vector) element, type.elementType);
                return;
            }
            throw new RuntimeException("Cannot serialize: " + element);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void writeArrayListBody(XmlSerializer writer, ArrayList arrayList) throws IOException {
        String name;
        String namespace;
        KvmSerializable obj = (KvmSerializable) arrayList;
        int cnt = arrayList.size();
        PropertyInfo propertyInfo = new PropertyInfo();
        for (int i = 0; i < cnt; i++) {
            Object prop = obj.getProperty(i);
            obj.getPropertyInfo(i, this.properties, propertyInfo);
            if (!(prop instanceof SoapObject)) {
                if ((propertyInfo.flags & 1) == 0) {
                    Object objValue = obj.getProperty(i);
                    if ((prop != null || !this.skipNullProperties) && objValue != SoapPrimitive.NullSkip) {
                        writer.startTag(propertyInfo.namespace, propertyInfo.name);
                        writeProperty(writer, objValue, propertyInfo);
                        writer.endTag(propertyInfo.namespace, propertyInfo.name);
                    }
                }
            } else {
                KvmSerializable nestedSoap = (SoapObject) prop;
                Object[] qName = getInfo(null, nestedSoap);
                String type = (String) qName[1];
                if (propertyInfo.name != null && propertyInfo.name.length() > 0) {
                    name = propertyInfo.name;
                } else {
                    name = (String) qName[1];
                }
                if (propertyInfo.namespace != null && propertyInfo.namespace.length() > 0) {
                    namespace = propertyInfo.namespace;
                } else {
                    namespace = (String) qName[0];
                }
                writer.startTag(namespace, name);
                if (!this.implicitTypes) {
                    String prefix = writer.getPrefix(namespace, true);
                    writer.attribute(this.xsi, TYPE_LABEL, prefix + ":" + type);
                }
                writeObjectBodyWithAttributes(writer, nestedSoap);
                writer.endTag(namespace, name);
            }
        }
        writeInnerText(writer, obj);
    }

    protected void writeVectorBody(XmlSerializer writer, Vector vector, PropertyInfo elementType) throws IOException {
        String itemsTagName = ITEM_LABEL;
        String itemsNamespace = null;
        if (elementType == null) {
            elementType = PropertyInfo.OBJECT_TYPE;
        } else if ((elementType instanceof PropertyInfo) && elementType.name != null) {
            itemsTagName = elementType.name;
            itemsNamespace = elementType.namespace;
        }
        int cnt = vector.size();
        Object[] arrType = getInfo(elementType.type, null);
        if (!this.implicitTypes) {
            writer.attribute(this.enc, ARRAY_TYPE_LABEL, writer.getPrefix((String) arrType[0], false) + ":" + arrType[1] + "[" + cnt + "]");
        } else if (itemsNamespace == null) {
            itemsNamespace = (String) arrType[0];
        }
        boolean skipped = false;
        for (int i = 0; i < cnt; i++) {
            if (vector.elementAt(i) == null) {
                skipped = true;
            } else {
                writer.startTag(itemsNamespace, itemsTagName);
                if (skipped) {
                    writer.attribute(this.enc, "position", "[" + i + "]");
                    skipped = false;
                }
                writeProperty(writer, vector.elementAt(i), elementType);
                writer.endTag(itemsNamespace, itemsTagName);
            }
        }
    }
}
