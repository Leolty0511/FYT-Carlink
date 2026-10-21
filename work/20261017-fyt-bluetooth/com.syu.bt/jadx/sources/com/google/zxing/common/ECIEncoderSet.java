package com.google.zxing.common;

import com.lsec.core.util.data.FinalChip;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ECIEncoderSet {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final List<CharsetEncoder> ENCODERS;
    private final CharsetEncoder[] encoders;
    private final int priorityEncoderIndex;

    static {
        $assertionsDisabled = !ECIEncoderSet.class.desiredAssertionStatus();
        ENCODERS = new ArrayList();
        String[] names = {"IBM437", "ISO-8859-2", "ISO-8859-3", "ISO-8859-4", "ISO-8859-5", "ISO-8859-6", "ISO-8859-7", "ISO-8859-8", "ISO-8859-9", "ISO-8859-10", "ISO-8859-11", "ISO-8859-13", "ISO-8859-14", "ISO-8859-15", "ISO-8859-16", "windows-1250", "windows-1251", "windows-1252", "windows-1256", "Shift_JIS"};
        for (String name : names) {
            if (CharacterSetECI.getCharacterSetECIByName(name) != null) {
                try {
                    ENCODERS.add(Charset.forName(name).newEncoder());
                } catch (UnsupportedCharsetException e) {
                }
            }
        }
    }

    public ECIEncoderSet(String stringToEncode, Charset priorityCharset, int fnc1) {
        List<CharsetEncoder> neededEncoders = new ArrayList<>();
        neededEncoders.add(StandardCharsets.ISO_8859_1.newEncoder());
        boolean needUnicodeEncoder = priorityCharset != null && priorityCharset.name().startsWith("UTF");
        for (int i = 0; i < stringToEncode.length(); i++) {
            boolean canEncode = false;
            for (CharsetEncoder encoder : neededEncoders) {
                char c = stringToEncode.charAt(i);
                if (c == fnc1 || encoder.canEncode(c)) {
                    canEncode = true;
                    break;
                }
            }
            if (!canEncode) {
                for (CharsetEncoder encoder2 : ENCODERS) {
                    if (encoder2.canEncode(stringToEncode.charAt(i))) {
                        neededEncoders.add(encoder2);
                        canEncode = true;
                        break;
                    }
                }
            }
            if (!canEncode) {
                needUnicodeEncoder = true;
            }
        }
        if (neededEncoders.size() == 1 && !needUnicodeEncoder) {
            this.encoders = new CharsetEncoder[]{neededEncoders.get(0)};
        } else {
            this.encoders = new CharsetEncoder[neededEncoders.size() + 2];
            int index = 0;
            Iterator<CharsetEncoder> it = neededEncoders.iterator();
            while (it.hasNext()) {
                this.encoders[index] = it.next();
                index++;
            }
            this.encoders[index] = StandardCharsets.UTF_8.newEncoder();
            this.encoders[index + 1] = StandardCharsets.UTF_16BE.newEncoder();
        }
        int priorityEncoderIndexValue = -1;
        if (priorityCharset != null) {
            for (int i2 = 0; i2 < this.encoders.length; i2++) {
                if (this.encoders[i2] != null && priorityCharset.name().equals(this.encoders[i2].charset().name())) {
                    priorityEncoderIndexValue = i2;
                    break;
                }
            }
        }
        this.priorityEncoderIndex = priorityEncoderIndexValue;
        if (!$assertionsDisabled && !this.encoders[0].charset().equals(StandardCharsets.ISO_8859_1)) {
            throw new AssertionError();
        }
    }

    public int length() {
        return this.encoders.length;
    }

    public String getCharsetName(int index) {
        if ($assertionsDisabled || index < length()) {
            return this.encoders[index].charset().name();
        }
        throw new AssertionError();
    }

    public Charset getCharset(int index) {
        if ($assertionsDisabled || index < length()) {
            return this.encoders[index].charset();
        }
        throw new AssertionError();
    }

    public int getECIValue(int encoderIndex) {
        return CharacterSetECI.getCharacterSetECI(this.encoders[encoderIndex].charset()).getValue();
    }

    public int getPriorityEncoderIndex() {
        return this.priorityEncoderIndex;
    }

    public boolean canEncode(char c, int encoderIndex) {
        if (!$assertionsDisabled && encoderIndex >= length()) {
            throw new AssertionError();
        }
        CharsetEncoder encoder = this.encoders[encoderIndex];
        return encoder.canEncode(FinalChip.BSP_PLATFORM_Null + c);
    }

    public byte[] encode(char c, int encoderIndex) {
        if (!$assertionsDisabled && encoderIndex >= length()) {
            throw new AssertionError();
        }
        CharsetEncoder encoder = this.encoders[encoderIndex];
        if ($assertionsDisabled || encoder.canEncode(FinalChip.BSP_PLATFORM_Null + c)) {
            return (FinalChip.BSP_PLATFORM_Null + c).getBytes(encoder.charset());
        }
        throw new AssertionError();
    }

    public byte[] encode(String s, int encoderIndex) {
        if (!$assertionsDisabled && encoderIndex >= length()) {
            throw new AssertionError();
        }
        CharsetEncoder encoder = this.encoders[encoderIndex];
        return s.getBytes(encoder.charset());
    }
}
