package android.util;

import android.accessibilityservice.c;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import libcore.internal.StringPool;

/* JADX INFO: loaded from: classes2.dex */
public final class JsonReader implements Closeable {
    private static final String FALSE = "false";
    private static final String TRUE = "true";
    private final Reader in;
    private String name;
    private boolean skipping;
    private JsonToken token;
    private String value;
    private int valueLength;
    private int valuePos;
    private final StringPool stringPool = new StringPool();
    private boolean lenient = false;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int bufferStartLine = 1;
    private int bufferStartColumn = 1;
    private final List<JsonScope> stack = new ArrayList();

    /* JADX INFO: renamed from: android.util.JsonReader$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$util$JsonScope;

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
                $SwitchMap$android$util$JsonScope[JsonScope.EMPTY_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$util$JsonScope[JsonScope.DANGLING_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$android$util$JsonScope[JsonScope.NONEMPTY_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$android$util$JsonScope[JsonScope.NONEMPTY_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$android$util$JsonScope[JsonScope.CLOSED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public JsonReader(Reader reader) {
        push(JsonScope.EMPTY_DOCUMENT);
        this.skipping = false;
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.in = reader;
    }

    private JsonToken advance() throws IOException {
        peek();
        JsonToken jsonToken = this.token;
        this.token = null;
        this.value = null;
        this.name = null;
        return jsonToken;
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private JsonToken decodeLiteral() {
        char[] cArr;
        char c;
        char[] cArr2;
        char c2;
        char[] cArr3;
        char c3;
        int i2 = this.valuePos;
        if (i2 == -1) {
            return JsonToken.STRING;
        }
        int i3 = this.valueLength;
        if (i3 == 4 && (('n' == (c3 = (cArr3 = this.buffer)[i2]) || 'N' == c3) && (('u' == cArr3[i2 + 1] || 'U' == cArr3[i2 + 1]) && (('l' == cArr3[i2 + 2] || 'L' == cArr3[i2 + 2]) && ('l' == cArr3[i2 + 3] || 'L' == cArr3[i2 + 3]))))) {
            this.value = "null";
            return JsonToken.NULL;
        }
        if (i3 == 4 && (('t' == (c2 = (cArr2 = this.buffer)[i2]) || 'T' == c2) && (('r' == cArr2[i2 + 1] || 'R' == cArr2[i2 + 1]) && (('u' == cArr2[i2 + 2] || 'U' == cArr2[i2 + 2]) && ('e' == cArr2[i2 + 3] || 'E' == cArr2[i2 + 3]))))) {
            this.value = TRUE;
            return JsonToken.BOOLEAN;
        }
        if (i3 == 5 && (('f' == (c = (cArr = this.buffer)[i2]) || 'F' == c) && (('a' == cArr[i2 + 1] || 'A' == cArr[i2 + 1]) && (('l' == cArr[i2 + 2] || 'L' == cArr[i2 + 2]) && (('s' == cArr[i2 + 3] || 'S' == cArr[i2 + 3]) && ('e' == cArr[i2 + 4] || 'E' == cArr[i2 + 4])))))) {
            this.value = FALSE;
            return JsonToken.BOOLEAN;
        }
        this.value = this.stringPool.get(this.buffer, i2, i3);
        return decodeNumber(this.buffer, this.valuePos, this.valueLength);
    }

    private JsonToken decodeNumber(char[] cArr, int i2, int i3) {
        int i4;
        int i5;
        char c;
        char c2 = cArr[i2];
        if (c2 == '-') {
            int i6 = i2 + 1;
            i4 = i6;
            c2 = cArr[i6];
        } else {
            i4 = i2;
        }
        if (c2 == '0') {
            i5 = i4 + 1;
            c = cArr[i5];
        } else {
            if (c2 < '1' || c2 > '9') {
                return JsonToken.STRING;
            }
            i5 = i4 + 1;
            c = cArr[i5];
            while (c >= '0' && c <= '9') {
                i5++;
                c = cArr[i5];
            }
        }
        if (c == '.') {
            i5++;
            c = cArr[i5];
            while (c >= '0' && c <= '9') {
                i5++;
                c = cArr[i5];
            }
        }
        if (c == 'e' || c == 'E') {
            int i7 = i5 + 1;
            char c3 = cArr[i7];
            if (c3 == '+' || c3 == '-') {
                i7++;
                c3 = cArr[i7];
            }
            if (c3 < '0' || c3 > '9') {
                return JsonToken.STRING;
            }
            i5 = i7 + 1;
            char c4 = cArr[i5];
            while (c4 >= '0' && c4 <= '9') {
                i5++;
                c4 = cArr[i5];
            }
        }
        return i5 == i2 + i3 ? JsonToken.NUMBER : JsonToken.STRING;
    }

    private void expect(JsonToken jsonToken) throws IOException {
        peek();
        if (this.token == jsonToken) {
            advance();
            return;
        }
        throw new IllegalStateException("Expected " + jsonToken + " but was " + peek());
    }

    private boolean fillBuffer(int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        while (true) {
            i3 = this.pos;
            if (i6 >= i3) {
                break;
            }
            if (this.buffer[i6] == '\n') {
                this.bufferStartLine++;
                this.bufferStartColumn = 1;
            } else {
                this.bufferStartColumn++;
            }
            i6++;
        }
        int i7 = this.limit;
        if (i7 != i3) {
            int i8 = i7 - i3;
            this.limit = i8;
            char[] cArr = this.buffer;
            System.arraycopy(cArr, i3, cArr, 0, i8);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.in;
            char[] cArr2 = this.buffer;
            int i9 = this.limit;
            int i10 = reader.read(cArr2, i9, cArr2.length - i9);
            if (i10 == -1) {
                return false;
            }
            i4 = this.limit + i10;
            this.limit = i4;
            if (this.bufferStartLine == 1 && (i5 = this.bufferStartColumn) == 1 && i4 > 0 && this.buffer[0] == 65279) {
                this.pos++;
                this.bufferStartColumn = i5 - 1;
            }
        } while (i4 < i2);
        return true;
    }

    private int getColumnNumber() {
        int i2 = this.bufferStartColumn;
        for (int i3 = 0; i3 < this.pos; i3++) {
            i2 = this.buffer[i3] == '\n' ? 1 : i2 + 1;
        }
        return i2;
    }

    private int getLineNumber() {
        int i2 = this.bufferStartLine;
        for (int i3 = 0; i3 < this.pos; i3++) {
            if (this.buffer[i3] == '\n') {
                i2++;
            }
        }
        return i2;
    }

    private CharSequence getSnippet() {
        StringBuilder sb = new StringBuilder();
        int iMin = Math.min(this.pos, 20);
        sb.append(this.buffer, this.pos - iMin, iMin);
        sb.append(this.buffer, this.pos, Math.min(this.limit - this.pos, 20));
        return sb;
    }

    private JsonToken nextInArray(boolean z2) throws IOException {
        if (z2) {
            replaceTop(JsonScope.NONEMPTY_ARRAY);
        } else {
            int iNextNonWhitespace = nextNonWhitespace();
            if (iNextNonWhitespace != 44) {
                if (iNextNonWhitespace != 59) {
                    if (iNextNonWhitespace != 93) {
                        throw syntaxError("Unterminated array");
                    }
                    pop();
                    JsonToken jsonToken = JsonToken.END_ARRAY;
                    this.token = jsonToken;
                    return jsonToken;
                }
                checkLenient();
            }
        }
        int iNextNonWhitespace2 = nextNonWhitespace();
        if (iNextNonWhitespace2 != 44 && iNextNonWhitespace2 != 59) {
            if (iNextNonWhitespace2 != 93) {
                this.pos--;
                return nextValue();
            }
            if (z2) {
                pop();
                JsonToken jsonToken2 = JsonToken.END_ARRAY;
                this.token = jsonToken2;
                return jsonToken2;
            }
        }
        checkLenient();
        this.pos--;
        this.value = "null";
        JsonToken jsonToken3 = JsonToken.NULL;
        this.token = jsonToken3;
        return jsonToken3;
    }

    private JsonToken nextInObject(boolean z2) throws IOException {
        if (!z2) {
            int iNextNonWhitespace = nextNonWhitespace();
            if (iNextNonWhitespace != 44 && iNextNonWhitespace != 59) {
                if (iNextNonWhitespace != 125) {
                    throw syntaxError("Unterminated object");
                }
                pop();
                JsonToken jsonToken = JsonToken.END_OBJECT;
                this.token = jsonToken;
                return jsonToken;
            }
        } else {
            if (nextNonWhitespace() == 125) {
                pop();
                JsonToken jsonToken2 = JsonToken.END_OBJECT;
                this.token = jsonToken2;
                return jsonToken2;
            }
            this.pos--;
        }
        int iNextNonWhitespace2 = nextNonWhitespace();
        if (iNextNonWhitespace2 == 34) {
            this.name = nextString((char) iNextNonWhitespace2);
        } else if (iNextNonWhitespace2 != 39) {
            checkLenient();
            this.pos--;
            String strNextLiteral = nextLiteral(false);
            this.name = strNextLiteral;
            if (strNextLiteral.isEmpty()) {
                throw syntaxError("Expected name");
            }
        } else {
            checkLenient();
            this.name = nextString((char) iNextNonWhitespace2);
        }
        replaceTop(JsonScope.DANGLING_NAME);
        JsonToken jsonToken3 = JsonToken.NAME;
        this.token = jsonToken3;
        return jsonToken3;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x004a. Please report as an issue. */
    private String nextLiteral(boolean z2) throws IOException {
        this.valuePos = -1;
        int i2 = 0;
        this.valueLength = 0;
        String string = null;
        int i3 = 0;
        StringBuilder sb = null;
        while (true) {
            int i4 = this.pos;
            if (i4 + i3 < this.limit) {
                char c = this.buffer[i4 + i3];
                if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                    if (c != '#') {
                        if (c != ',') {
                            if (c != '/' && c != '=') {
                                if (c != '{' && c != '}' && c != ':') {
                                    if (c != ';') {
                                        switch (c) {
                                            case '[':
                                            case ']':
                                                break;
                                            case '\\':
                                                break;
                                            default:
                                                i3++;
                                                break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    checkLenient();
                }
                i2 = i3;
            } else if (i3 >= this.buffer.length) {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(this.buffer, this.pos, i3);
                this.valueLength += i3;
                this.pos += i3;
                if (fillBuffer(1)) {
                    i3 = 0;
                }
            } else if (!fillBuffer(i3 + 1)) {
                this.buffer[this.limit] = 0;
                i2 = i3;
            }
            if (z2 && sb == null) {
                this.valuePos = this.pos;
            } else if (this.skipping) {
                string = "skipped!";
            } else if (sb == null) {
                string = this.stringPool.get(this.buffer, this.pos, i2);
            } else {
                sb.append(this.buffer, this.pos, i2);
                string = sb.toString();
            }
            this.valueLength += i2;
            this.pos += i2;
            return string;
        }
    }

    private int nextNonWhitespace() throws IOException {
        while (true) {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                throw new EOFException("End of input");
            }
            char[] cArr = this.buffer;
            int i2 = this.pos;
            int i3 = i2 + 1;
            this.pos = i3;
            char c = cArr[i2];
            if (c != '\t' && c != '\n' && c != '\r' && c != ' ') {
                if (c == '#') {
                    checkLenient();
                    skipToEndOfLine();
                } else {
                    if (c != '/') {
                        return c;
                    }
                    if (i3 == this.limit && !fillBuffer(1)) {
                        return c;
                    }
                    checkLenient();
                    char[] cArr2 = this.buffer;
                    int i4 = this.pos;
                    char c2 = cArr2[i4];
                    if (c2 == '*') {
                        this.pos = i4 + 1;
                        if (!skipTo("*/")) {
                            throw syntaxError("Unterminated comment");
                        }
                        this.pos += 2;
                    } else {
                        if (c2 != '/') {
                            return c;
                        }
                        this.pos = i4 + 1;
                        skipToEndOfLine();
                    }
                }
            }
        }
    }

    private JsonToken nextValue() throws IOException {
        int iNextNonWhitespace = nextNonWhitespace();
        if (iNextNonWhitespace != 34) {
            if (iNextNonWhitespace != 39) {
                if (iNextNonWhitespace == 91) {
                    push(JsonScope.EMPTY_ARRAY);
                    JsonToken jsonToken = JsonToken.BEGIN_ARRAY;
                    this.token = jsonToken;
                    return jsonToken;
                }
                if (iNextNonWhitespace != 123) {
                    this.pos--;
                    return readLiteral();
                }
                push(JsonScope.EMPTY_OBJECT);
                JsonToken jsonToken2 = JsonToken.BEGIN_OBJECT;
                this.token = jsonToken2;
                return jsonToken2;
            }
            checkLenient();
        }
        this.value = nextString((char) iNextNonWhitespace);
        JsonToken jsonToken3 = JsonToken.STRING;
        this.token = jsonToken3;
        return jsonToken3;
    }

    private JsonToken objectValue() throws IOException {
        int iNextNonWhitespace = nextNonWhitespace();
        if (iNextNonWhitespace != 58) {
            if (iNextNonWhitespace != 61) {
                throw syntaxError("Expected ':'");
            }
            checkLenient();
            if (this.pos < this.limit || fillBuffer(1)) {
                char[] cArr = this.buffer;
                int i2 = this.pos;
                if (cArr[i2] == '>') {
                    this.pos = i2 + 1;
                }
            }
        }
        replaceTop(JsonScope.NONEMPTY_OBJECT);
        return nextValue();
    }

    private JsonScope peekStack() {
        List<JsonScope> list = this.stack;
        return list.get(list.size() - 1);
    }

    private JsonScope pop() {
        List<JsonScope> list = this.stack;
        return list.remove(list.size() - 1);
    }

    private void push(JsonScope jsonScope) {
        this.stack.add(jsonScope);
    }

    private char readEscapeCharacter() throws IOException {
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int i2 = this.pos;
        int i3 = i2 + 1;
        this.pos = i3;
        char c = cArr[i2];
        if (c == 'b') {
            return '\b';
        }
        if (c == 'f') {
            return '\f';
        }
        if (c == 'n') {
            return '\n';
        }
        if (c == 'r') {
            return '\r';
        }
        if (c == 't') {
            return '\t';
        }
        if (c != 'u') {
            return c;
        }
        if (i3 + 4 > this.limit && !fillBuffer(4)) {
            throw syntaxError("Unterminated escape sequence");
        }
        String str = this.stringPool.get(this.buffer, this.pos, 4);
        this.pos += 4;
        return (char) Integer.parseInt(str, 16);
    }

    private JsonToken readLiteral() throws IOException {
        this.value = nextLiteral(true);
        if (this.valueLength == 0) {
            throw syntaxError("Expected literal value");
        }
        JsonToken jsonTokenDecodeLiteral = decodeLiteral();
        this.token = jsonTokenDecodeLiteral;
        if (jsonTokenDecodeLiteral == JsonToken.STRING) {
            checkLenient();
        }
        return this.token;
    }

    private void replaceTop(JsonScope jsonScope) {
        List<JsonScope> list = this.stack;
        list.set(list.size() - 1, jsonScope);
    }

    private boolean skipTo(String str) {
        while (true) {
            if (str.length() + this.pos > this.limit && !fillBuffer(str.length())) {
                return false;
            }
            for (int i2 = 0; i2 < str.length(); i2++) {
                if (this.buffer[this.pos + i2] != str.charAt(i2)) {
                    this.pos++;
                }
            }
            return true;
        }
    }

    private void skipToEndOfLine() {
        char c;
        do {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                return;
            }
            char[] cArr = this.buffer;
            int i2 = this.pos;
            this.pos = i2 + 1;
            c = cArr[i2];
            if (c == '\r') {
                return;
            }
        } while (c != '\n');
    }

    private IOException syntaxError(String str) throws MalformedJsonException {
        StringBuilder sbU = c.u(str, " at line ");
        sbU.append(getLineNumber());
        sbU.append(" column ");
        sbU.append(getColumnNumber());
        throw new MalformedJsonException(sbU.toString());
    }

    public void beginArray() throws IOException {
        expect(JsonToken.BEGIN_ARRAY);
    }

    public void beginObject() throws IOException {
        expect(JsonToken.BEGIN_OBJECT);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.value = null;
        this.token = null;
        this.stack.clear();
        this.stack.add(JsonScope.CLOSED);
        this.in.close();
    }

    public void endArray() throws IOException {
        expect(JsonToken.END_ARRAY);
    }

    public void endObject() throws IOException {
        expect(JsonToken.END_OBJECT);
    }

    public boolean hasNext() throws IOException {
        peek();
        JsonToken jsonToken = this.token;
        return (jsonToken == JsonToken.END_OBJECT || jsonToken == JsonToken.END_ARRAY) ? false : true;
    }

    public boolean isLenient() {
        return this.lenient;
    }

    public boolean nextBoolean() throws IOException {
        peek();
        if (this.token == JsonToken.BOOLEAN) {
            boolean z2 = this.value == TRUE;
            advance();
            return z2;
        }
        throw new IllegalStateException("Expected a boolean but was " + this.token);
    }

    public double nextDouble() throws IOException {
        peek();
        JsonToken jsonToken = this.token;
        if (jsonToken == JsonToken.STRING || jsonToken == JsonToken.NUMBER) {
            double d2 = Double.parseDouble(this.value);
            advance();
            return d2;
        }
        throw new IllegalStateException("Expected a double but was " + this.token);
    }

    public int nextInt() throws IOException {
        int i2;
        peek();
        JsonToken jsonToken = this.token;
        if (jsonToken != JsonToken.STRING && jsonToken != JsonToken.NUMBER) {
            throw new IllegalStateException("Expected an int but was " + this.token);
        }
        try {
            i2 = Integer.parseInt(this.value);
        } catch (NumberFormatException unused) {
            double d2 = Double.parseDouble(this.value);
            int i3 = (int) d2;
            if (i3 != d2) {
                throw new NumberFormatException(this.value);
            }
            i2 = i3;
        }
        advance();
        return i2;
    }

    public long nextLong() throws IOException {
        long j2;
        peek();
        JsonToken jsonToken = this.token;
        if (jsonToken != JsonToken.STRING && jsonToken != JsonToken.NUMBER) {
            throw new IllegalStateException("Expected a long but was " + this.token);
        }
        try {
            j2 = Long.parseLong(this.value);
        } catch (NumberFormatException unused) {
            double d2 = Double.parseDouble(this.value);
            long j3 = (long) d2;
            if (j3 != d2) {
                throw new NumberFormatException(this.value);
            }
            j2 = j3;
        }
        advance();
        return j2;
    }

    public String nextName() throws IOException {
        peek();
        if (this.token == JsonToken.NAME) {
            String str = this.name;
            advance();
            return str;
        }
        throw new IllegalStateException("Expected a name but was " + peek());
    }

    public void nextNull() throws IOException {
        peek();
        if (this.token == JsonToken.NULL) {
            advance();
        } else {
            throw new IllegalStateException("Expected null but was " + this.token);
        }
    }

    public String nextString() throws IOException {
        peek();
        JsonToken jsonToken = this.token;
        if (jsonToken == JsonToken.STRING || jsonToken == JsonToken.NUMBER) {
            String str = this.value;
            advance();
            return str;
        }
        throw new IllegalStateException("Expected a string but was " + peek());
    }

    public JsonToken peek() throws IOException {
        JsonToken jsonToken;
        JsonToken jsonToken2 = this.token;
        if (jsonToken2 != null) {
            return jsonToken2;
        }
        switch (AnonymousClass1.$SwitchMap$android$util$JsonScope[peekStack().ordinal()]) {
            case 1:
                replaceTop(JsonScope.NONEMPTY_DOCUMENT);
                JsonToken jsonTokenNextValue = nextValue();
                if (this.lenient || (jsonToken = this.token) == JsonToken.BEGIN_ARRAY || jsonToken == JsonToken.BEGIN_OBJECT) {
                    return jsonTokenNextValue;
                }
                throw new IOException("Expected JSON document to start with '[' or '{' but was " + this.token);
            case 2:
                return nextInArray(true);
            case 3:
                return nextInArray(false);
            case 4:
                return nextInObject(true);
            case 5:
                return objectValue();
            case 6:
                return nextInObject(false);
            case 7:
                try {
                    JsonToken jsonTokenNextValue2 = nextValue();
                    if (this.lenient) {
                        return jsonTokenNextValue2;
                    }
                    throw syntaxError("Expected EOF");
                } catch (EOFException unused) {
                    JsonToken jsonToken3 = JsonToken.END_DOCUMENT;
                    this.token = jsonToken3;
                    return jsonToken3;
                }
            case 8:
                throw new IllegalStateException("JsonReader is closed");
            default:
                throw new AssertionError();
        }
    }

    public void setLenient(boolean z2) {
        this.lenient = z2;
    }

    public void skipValue() {
        this.skipping = true;
        try {
            if (!hasNext() || peek() == JsonToken.END_DOCUMENT) {
                throw new IllegalStateException("No element left to skip");
            }
            int i2 = 0;
            do {
                JsonToken jsonTokenAdvance = advance();
                if (jsonTokenAdvance == JsonToken.BEGIN_ARRAY || jsonTokenAdvance == JsonToken.BEGIN_OBJECT) {
                    i2++;
                } else if (jsonTokenAdvance == JsonToken.END_ARRAY || jsonTokenAdvance == JsonToken.END_OBJECT) {
                    i2--;
                }
            } while (i2 != 0);
            this.skipping = false;
        } catch (Throwable th) {
            this.skipping = false;
            throw th;
        }
    }

    public String toString() {
        return "JsonReader near " + ((Object) getSnippet());
    }

    private String nextString(char c) throws IOException {
        StringBuilder sb = null;
        do {
            int i2 = this.pos;
            while (true) {
                int i3 = this.pos;
                if (i3 < this.limit) {
                    char[] cArr = this.buffer;
                    int i4 = i3 + 1;
                    this.pos = i4;
                    char c2 = cArr[i3];
                    if (c2 == c) {
                        if (this.skipping) {
                            return "skipped!";
                        }
                        if (sb == null) {
                            return this.stringPool.get(cArr, i2, (i4 - i2) - 1);
                        }
                        sb.append(cArr, i2, (i4 - i2) - 1);
                        return sb.toString();
                    }
                    if (c2 == '\\') {
                        if (sb == null) {
                            sb = new StringBuilder();
                        }
                        sb.append(this.buffer, i2, (this.pos - i2) - 1);
                        sb.append(readEscapeCharacter());
                        i2 = this.pos;
                    }
                }
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(this.buffer, i2, this.pos - i2);
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }
}
