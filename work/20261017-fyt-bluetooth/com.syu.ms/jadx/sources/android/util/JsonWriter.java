package android.util;

import android.telephony.PhoneNumberUtils;
import java.io.Closeable;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class JsonWriter implements Closeable {
    private String indent;
    private boolean lenient;
    private final Writer out;
    private String separator;
    private final List<JsonScope> stack;

    /* JADX INFO: renamed from: android.util.JsonWriter$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$util$JsonScope;

        static {
            int[] iArr = new int[JsonScope.values().length];
            $SwitchMap$android$util$JsonScope = iArr;
            try {
                iArr[JsonScope.EMPTY_DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$util$JsonScope[JsonScope.EMPTY_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$util$JsonScope[JsonScope.NONEMPTY_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$util$JsonScope[JsonScope.DANGLING_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$util$JsonScope[JsonScope.NONEMPTY_DOCUMENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public JsonWriter(Writer writer) {
        ArrayList arrayList = new ArrayList();
        this.stack = arrayList;
        arrayList.add(JsonScope.EMPTY_DOCUMENT);
        this.separator = ":";
        Objects.requireNonNull(writer, "out == null");
        this.out = writer;
    }

    private void beforeName() throws IOException {
        JsonScope jsonScopePeek = peek();
        if (jsonScopePeek == JsonScope.NONEMPTY_OBJECT) {
            this.out.write(44);
        } else if (jsonScopePeek != JsonScope.EMPTY_OBJECT) {
            throw new IllegalStateException("Nesting problem: " + this.stack);
        }
        newline();
        replaceTop(JsonScope.DANGLING_NAME);
    }

    private void beforeValue(boolean z2) throws IOException {
        int i2 = AnonymousClass1.$SwitchMap$android$util$JsonScope[peek().ordinal()];
        if (i2 == 1) {
            if (!this.lenient && !z2) {
                throw new IllegalStateException("JSON must start with an array or an object.");
            }
            replaceTop(JsonScope.NONEMPTY_DOCUMENT);
            return;
        }
        if (i2 == 2) {
            replaceTop(JsonScope.NONEMPTY_ARRAY);
            newline();
            return;
        }
        if (i2 == 3) {
            this.out.append(PhoneNumberUtils.PAUSE);
            newline();
        } else if (i2 == 4) {
            this.out.append((CharSequence) this.separator);
            replaceTop(JsonScope.NONEMPTY_OBJECT);
        } else {
            if (i2 == 5) {
                throw new IllegalStateException("JSON must have only one top-level value.");
            }
            throw new IllegalStateException("Nesting problem: " + this.stack);
        }
    }

    private JsonWriter close(JsonScope jsonScope, JsonScope jsonScope2, String str) throws IOException {
        JsonScope jsonScopePeek = peek();
        if (jsonScopePeek != jsonScope2 && jsonScopePeek != jsonScope) {
            throw new IllegalStateException("Nesting problem: " + this.stack);
        }
        List<JsonScope> list = this.stack;
        list.remove(list.size() - 1);
        if (jsonScopePeek == jsonScope2) {
            newline();
        }
        this.out.write(str);
        return this;
    }

    private void newline() throws IOException {
        if (this.indent == null) {
            return;
        }
        this.out.write("\n");
        for (int i2 = 1; i2 < this.stack.size(); i2++) {
            this.out.write(this.indent);
        }
    }

    private JsonWriter open(JsonScope jsonScope, String str) throws IOException {
        beforeValue(true);
        this.stack.add(jsonScope);
        this.out.write(str);
        return this;
    }

    private JsonScope peek() {
        List<JsonScope> list = this.stack;
        return list.get(list.size() - 1);
    }

    private void replaceTop(JsonScope jsonScope) {
        List<JsonScope> list = this.stack;
        list.set(list.size() - 1, jsonScope);
    }

    private void string(String str) throws IOException {
        this.out.write("\"");
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\f') {
                this.out.write("\\f");
            } else if (cCharAt == '\r') {
                this.out.write("\\r");
            } else if (cCharAt == '\"' || cCharAt == '\\') {
                this.out.write(92);
                this.out.write(cCharAt);
            } else if (cCharAt != 8232 && cCharAt != 8233) {
                switch (cCharAt) {
                    case '\b':
                        this.out.write("\\b");
                        break;
                    case '\t':
                        this.out.write("\\t");
                        break;
                    case '\n':
                        this.out.write("\\n");
                        break;
                    default:
                        if (cCharAt <= 31) {
                            this.out.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
                        } else {
                            this.out.write(cCharAt);
                        }
                        break;
                }
            } else {
                this.out.write(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            }
        }
        this.out.write("\"");
    }

    public JsonWriter beginArray() {
        return open(JsonScope.EMPTY_ARRAY, "[");
    }

    public JsonWriter beginObject() {
        return open(JsonScope.EMPTY_OBJECT, "{");
    }

    public JsonWriter endArray() {
        return close(JsonScope.EMPTY_ARRAY, JsonScope.NONEMPTY_ARRAY, "]");
    }

    public JsonWriter endObject() {
        return close(JsonScope.EMPTY_OBJECT, JsonScope.NONEMPTY_OBJECT, "}");
    }

    public void flush() throws IOException {
        this.out.flush();
    }

    public boolean isLenient() {
        return this.lenient;
    }

    public JsonWriter name(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        beforeName();
        string(str);
        return this;
    }

    public JsonWriter nullValue() throws IOException {
        beforeValue(false);
        this.out.write("null");
        return this;
    }

    public void setIndent(String str) {
        if (str.isEmpty()) {
            this.indent = null;
            this.separator = ":";
        } else {
            this.indent = str;
            this.separator = ": ";
        }
    }

    public void setLenient(boolean z2) {
        this.lenient = z2;
    }

    public JsonWriter value(String str) throws IOException {
        if (str == null) {
            return nullValue();
        }
        beforeValue(false);
        string(str);
        return this;
    }

    public JsonWriter value(boolean z2) throws IOException {
        beforeValue(false);
        this.out.write(z2 ? "true" : "false");
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
        if (peek() != JsonScope.NONEMPTY_DOCUMENT) {
            throw new IOException("Incomplete document");
        }
    }

    public JsonWriter value(double d2) throws IOException {
        if (!this.lenient && (Double.isNaN(d2) || Double.isInfinite(d2))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d2);
        }
        beforeValue(false);
        this.out.append((CharSequence) Double.toString(d2));
        return this;
    }

    public JsonWriter value(long j2) throws IOException {
        beforeValue(false);
        this.out.write(Long.toString(j2));
        return this;
    }

    public JsonWriter value(Number number) throws IOException {
        if (number == null) {
            return nullValue();
        }
        String string = number.toString();
        if (!this.lenient && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        beforeValue(false);
        this.out.append((CharSequence) string);
        return this;
    }
}
