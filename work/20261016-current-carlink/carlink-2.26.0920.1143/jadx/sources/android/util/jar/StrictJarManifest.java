package android.util.jar;

import com.google.common.base.Ascii;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.jar.Attributes;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes2.dex */
public class StrictJarManifest implements Cloneable {
    static final int LINE_LENGTH_LIMIT = 72;
    private static final byte[] LINE_SEPARATOR = {Ascii.CR, 10};
    private static final byte[] VALUE_SEPARATOR = {58, 32};
    private HashMap<String, Chunk> chunks;
    private final HashMap<String, Attributes> entries;
    private final Attributes mainAttributes;
    private int mainEnd;

    public static final class Chunk {
        final int end;
        final int start;

        public Chunk(int i2, int i3) {
            this.start = i2;
            this.end = i3;
        }
    }

    public StrictJarManifest() {
        this.entries = new HashMap<>();
        this.mainAttributes = new Attributes();
    }

    private static void writeEntry(OutputStream outputStream, Attributes.Name name, String str, CharsetEncoder charsetEncoder, ByteBuffer byteBuffer) throws IOException {
        String string = name.toString();
        outputStream.write(string.getBytes(StandardCharsets.US_ASCII));
        outputStream.write(VALUE_SEPARATOR);
        charsetEncoder.reset();
        byteBuffer.clear().limit((72 - string.length()) - 2);
        CharBuffer charBufferWrap = CharBuffer.wrap(str);
        while (true) {
            CoderResult coderResultEncode = charsetEncoder.encode(charBufferWrap, byteBuffer, true);
            if (CoderResult.UNDERFLOW == coderResultEncode) {
                coderResultEncode = charsetEncoder.flush(byteBuffer);
            }
            outputStream.write(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.position());
            outputStream.write(LINE_SEPARATOR);
            if (CoderResult.UNDERFLOW == coderResultEncode) {
                return;
            }
            outputStream.write(32);
            byteBuffer.clear().limit(71);
        }
    }

    public void clear() {
        this.entries.clear();
        this.mainAttributes.clear();
    }

    public Object clone() {
        return new StrictJarManifest(this);
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        StrictJarManifest strictJarManifest = (StrictJarManifest) obj;
        if (this.mainAttributes.equals(strictJarManifest.mainAttributes)) {
            return getEntries().equals(strictJarManifest.getEntries());
        }
        return false;
    }

    public Attributes getAttributes(String str) {
        return getEntries().get(str);
    }

    public Chunk getChunk(String str) {
        return this.chunks.get(str);
    }

    public Map<String, Attributes> getEntries() {
        return this.entries;
    }

    public Attributes getMainAttributes() {
        return this.mainAttributes;
    }

    public int getMainAttributesEnd() {
        return this.mainEnd;
    }

    public int hashCode() {
        return this.mainAttributes.hashCode() ^ getEntries().hashCode();
    }

    public void read(InputStream inputStream) {
        read(Streams.readFullyNoClose(inputStream));
    }

    public void removeChunks() {
        this.chunks = null;
    }

    public void write(OutputStream outputStream) throws IOException {
        write(this, outputStream);
    }

    private void read(byte[] bArr) {
        if (bArr.length == 0) {
            return;
        }
        StrictJarManifestReader strictJarManifestReader = new StrictJarManifestReader(bArr, this.mainAttributes);
        this.mainEnd = strictJarManifestReader.getEndOfMainSection();
        strictJarManifestReader.readEntries(this.entries, this.chunks);
    }

    public static void write(StrictJarManifest strictJarManifest, OutputStream outputStream) throws IOException {
        CharsetEncoder charsetEncoderNewEncoder = StandardCharsets.UTF_8.newEncoder();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(72);
        Attributes.Name name = Attributes.Name.MANIFEST_VERSION;
        String value = strictJarManifest.mainAttributes.getValue(name);
        if (value == null) {
            name = Attributes.Name.SIGNATURE_VERSION;
            value = strictJarManifest.mainAttributes.getValue(name);
        }
        if (value != null) {
            writeEntry(outputStream, name, value, charsetEncoderNewEncoder, byteBufferAllocate);
            Iterator<Object> it = strictJarManifest.mainAttributes.keySet().iterator();
            while (it.hasNext()) {
                Attributes.Name name2 = (Attributes.Name) it.next();
                if (!name2.equals(name)) {
                    writeEntry(outputStream, name2, strictJarManifest.mainAttributes.getValue(name2), charsetEncoderNewEncoder, byteBufferAllocate);
                }
            }
        }
        outputStream.write(LINE_SEPARATOR);
        for (String str : strictJarManifest.getEntries().keySet()) {
            writeEntry(outputStream, Attributes.Name.NAME, str, charsetEncoderNewEncoder, byteBufferAllocate);
            Attributes attributes = strictJarManifest.entries.get(str);
            Iterator<Object> it2 = attributes.keySet().iterator();
            while (it2.hasNext()) {
                Attributes.Name name3 = (Attributes.Name) it2.next();
                writeEntry(outputStream, name3, attributes.getValue(name3), charsetEncoderNewEncoder, byteBufferAllocate);
            }
            outputStream.write(LINE_SEPARATOR);
        }
    }

    public StrictJarManifest(InputStream inputStream) {
        this();
        read(Streams.readFully(inputStream));
    }

    public StrictJarManifest(StrictJarManifest strictJarManifest) {
        this.mainAttributes = (Attributes) strictJarManifest.mainAttributes.clone();
        this.entries = (HashMap) ((HashMap) strictJarManifest.getEntries()).clone();
    }

    public StrictJarManifest(byte[] bArr, boolean z2) {
        this();
        if (z2) {
            this.chunks = new HashMap<>();
        }
        read(bArr);
    }
}
