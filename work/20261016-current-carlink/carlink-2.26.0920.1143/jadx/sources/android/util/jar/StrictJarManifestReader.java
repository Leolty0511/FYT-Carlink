package android.util.jar;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.jar.Attributes;

/* JADX INFO: loaded from: classes2.dex */
class StrictJarManifestReader {
    private final byte[] buf;
    private final int endOfMainSection;
    private Attributes.Name name;
    private int pos;
    private String value;
    private final HashMap<String, Attributes.Name> attributeNameCache = new HashMap<>();
    private final ByteArrayOutputStream valueBuffer = new ByteArrayOutputStream(80);
    private int consecutiveLineBreaks = 0;

    public StrictJarManifestReader(byte[] bArr, Attributes attributes) {
        this.buf = bArr;
        while (readHeader()) {
            attributes.put(this.name, this.value);
        }
        this.endOfMainSection = this.pos;
    }

    private boolean readHeader() throws IOException {
        if (this.consecutiveLineBreaks > 1) {
            this.consecutiveLineBreaks = 0;
            return false;
        }
        readName();
        this.consecutiveLineBreaks = 0;
        readValue();
        return this.consecutiveLineBreaks > 0;
    }

    private void readName() throws IOException {
        int i2;
        byte[] bArr;
        int i3;
        int i4 = this.pos;
        do {
            i2 = this.pos;
            bArr = this.buf;
            if (i2 >= bArr.length) {
                return;
            }
            i3 = i2 + 1;
            this.pos = i3;
        } while (bArr[i2] != 58);
        String str = new String(bArr, i4, (i3 - i4) - 1, StandardCharsets.US_ASCII);
        byte[] bArr2 = this.buf;
        int i5 = this.pos;
        this.pos = i5 + 1;
        if (bArr2[i5] != 32) {
            throw new IOException(String.format("Invalid value for attribute '%s'", str));
        }
        try {
            Attributes.Name name = this.attributeNameCache.get(str);
            this.name = name;
            if (name == null) {
                Attributes.Name name2 = new Attributes.Name(str);
                this.name = name2;
                this.attributeNameCache.put(str, name2);
            }
        } catch (IllegalArgumentException e2) {
            throw new IOException(e2.getMessage());
        }
    }

    private void readValue() throws IOException {
        byte[] bArr;
        int i2 = this.pos;
        this.valueBuffer.reset();
        int i3 = i2;
        loop0: while (true) {
            boolean z2 = false;
            while (true) {
                int i4 = this.pos;
                bArr = this.buf;
                if (i4 >= bArr.length) {
                    break loop0;
                }
                int i5 = i4 + 1;
                this.pos = i5;
                byte b2 = bArr[i4];
                if (b2 == 0) {
                    throw new IOException("NUL character in a manifest");
                }
                if (b2 != 10) {
                    if (b2 == 13) {
                        this.consecutiveLineBreaks++;
                        z2 = true;
                    } else if (b2 == 32 && this.consecutiveLineBreaks == 1) {
                        this.valueBuffer.write(bArr, i2, i3 - i2);
                        i2 = this.pos;
                        this.consecutiveLineBreaks = 0;
                    } else {
                        if (this.consecutiveLineBreaks >= 1) {
                            this.pos = i5 - 1;
                            break loop0;
                        }
                        i3 = i5;
                    }
                } else if (z2) {
                    break;
                } else {
                    this.consecutiveLineBreaks++;
                }
            }
        }
        this.valueBuffer.write(bArr, i2, i3 - i2);
        this.value = this.valueBuffer.toString(StandardCharsets.UTF_8.name());
    }

    public int getEndOfMainSection() {
        return this.endOfMainSection;
    }

    public void readEntries(Map<String, Attributes> map, Map<String, StrictJarManifest.Chunk> map2) {
        int i2 = this.pos;
        while (readHeader()) {
            if (!Attributes.Name.NAME.equals(this.name)) {
                throw new IOException("Entry is not named");
            }
            String str = this.value;
            Attributes attributes = map.get(str);
            if (attributes == null) {
                attributes = new Attributes(12);
            }
            while (readHeader()) {
                attributes.put(this.name, this.value);
            }
            if (map2 != null) {
                if (map2.get(str) != null) {
                    throw new IOException("A jar verifier does not support more than one entry with the same name");
                }
                map2.put(str, new StrictJarManifest.Chunk(i2, this.pos));
                i2 = this.pos;
            }
            map.put(str, attributes);
        }
    }
}
