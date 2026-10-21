package com.google.protobuf;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
final class MessageLiteToString {
    private static final String BUILDER_LIST_SUFFIX = "OrBuilderList";
    private static final String BYTES_SUFFIX = "Bytes";
    private static final String LIST_SUFFIX = "List";

    MessageLiteToString() {
    }

    static String toString(MessageLite messageLite, String commentString) {
        StringBuilder buffer = new StringBuilder();
        buffer.append("# ");
        buffer.append(commentString);
        reflectivePrintWithIndent(messageLite, buffer, 0);
        return buffer.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    private static void reflectivePrintWithIndent(MessageLite messageLite, StringBuilder sb, int i) {
        HashMap map;
        boolean zBooleanValue;
        ?? r3;
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        TreeSet treeSet = new TreeSet();
        int i2 = 0;
        for (Method method : messageLite.getClass().getDeclaredMethods()) {
            map3.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map2.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String strReplaceFirst = ((String) it.next()).replaceFirst("get", "");
            if (strReplaceFirst.endsWith(LIST_SUFFIX) && !strReplaceFirst.endsWith(BUILDER_LIST_SUFFIX)) {
                String str = strReplaceFirst.substring(i2, 1).toLowerCase() + strReplaceFirst.substring(1, strReplaceFirst.length() - LIST_SUFFIX.length());
                Method method2 = (Method) map2.get("get" + strReplaceFirst);
                if (method2 != null) {
                    printField(sb, i, camelCaseToSnakeCase(str), GeneratedMessageLite.invokeOrDie(method2, messageLite, new Object[i2]));
                }
            }
            if (((Method) map3.get("set" + strReplaceFirst)) != null) {
                if (strReplaceFirst.endsWith(BYTES_SUFFIX)) {
                    if (map2.containsKey("get" + strReplaceFirst.substring(i2, strReplaceFirst.length() - BYTES_SUFFIX.length()))) {
                    }
                }
                String str2 = strReplaceFirst.substring(i2, 1).toLowerCase() + strReplaceFirst.substring(1);
                Method method3 = (Method) map2.get("get" + strReplaceFirst);
                Method method4 = (Method) map2.get("has" + strReplaceFirst);
                if (method3 != null) {
                    Object objInvokeOrDie = GeneratedMessageLite.invokeOrDie(method3, messageLite, new Object[i2]);
                    if (method4 == null) {
                        map = map2;
                        r3 = !isDefaultValue(objInvokeOrDie) ? 1 : i2;
                    } else {
                        map = map2;
                        zBooleanValue = ((Boolean) GeneratedMessageLite.invokeOrDie(method4, messageLite, new Object[i2])).booleanValue();
                    }
                    if (r3 == 0) {
                        r3 = zBooleanValue;
                        map2 = map;
                        i2 = 0;
                    } else {
                        r3 = zBooleanValue;
                        printField(sb, i, camelCaseToSnakeCase(str2), objInvokeOrDie);
                        map2 = map;
                        i2 = 0;
                    }
                } else {
                    i2 = 0;
                }
            }
        }
        if (messageLite instanceof GeneratedMessageLite.ExtendableMessage) {
            Iterator it2 = ((GeneratedMessageLite.ExtendableMessage) messageLite).extensions.iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                printField(sb, i, "[" + ((GeneratedMessageLite.ExtensionDescriptor) entry.getKey()).getNumber() + "]", entry.getValue());
            }
        }
        if (((GeneratedMessageLite) messageLite).unknownFields != null) {
            ((GeneratedMessageLite) messageLite).unknownFields.printWithIndent(sb, i);
        }
    }

    private static boolean isDefaultValue(Object o) {
        if (o instanceof Boolean) {
            return !((Boolean) o).booleanValue();
        }
        if (o instanceof Integer) {
            return ((Integer) o).intValue() == 0;
        }
        if (o instanceof Float) {
            return ((Float) o).floatValue() == 0.0f;
        }
        if (o instanceof Double) {
            return ((Double) o).doubleValue() == 0.0d;
        }
        if (o instanceof String) {
            return o.equals("");
        }
        if (o instanceof ByteString) {
            return o.equals(ByteString.EMPTY);
        }
        if (o instanceof MessageLite) {
            return o == ((MessageLite) o).getDefaultInstanceForType();
        }
        return (o instanceof Enum) && ((Enum) o).ordinal() == 0;
    }

    static final void printField(StringBuilder buffer, int indent, String name, Object object) {
        if (object instanceof List) {
            List<?> list = (List) object;
            for (Object entry : list) {
                printField(buffer, indent, name, entry);
            }
            return;
        }
        buffer.append('\n');
        for (int i = 0; i < indent; i++) {
            buffer.append(' ');
        }
        buffer.append(name);
        if (object instanceof String) {
            buffer.append(": \"");
            buffer.append(TextFormatEscaper.escapeText((String) object));
            buffer.append('\"');
            return;
        }
        if (object instanceof ByteString) {
            buffer.append(": \"");
            buffer.append(TextFormatEscaper.escapeBytes((ByteString) object));
            buffer.append('\"');
        } else {
            if (object instanceof GeneratedMessageLite) {
                buffer.append(" {");
                reflectivePrintWithIndent((GeneratedMessageLite) object, buffer, indent + 2);
                buffer.append("\n");
                for (int i2 = 0; i2 < indent; i2++) {
                    buffer.append(' ');
                }
                buffer.append("}");
                return;
            }
            buffer.append(": ");
            buffer.append(object.toString());
        }
    }

    private static final String camelCaseToSnakeCase(String camelCase) {
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < camelCase.length(); i++) {
            char ch = camelCase.charAt(i);
            if (Character.isUpperCase(ch)) {
                builder.append("_");
            }
            builder.append(Character.toLowerCase(ch));
        }
        return builder.toString();
    }
}
