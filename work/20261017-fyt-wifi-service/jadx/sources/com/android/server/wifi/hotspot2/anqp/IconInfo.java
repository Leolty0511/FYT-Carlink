package com.android.server.wifi.hotspot2.anqp;

import android.text.TextUtils;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.wifi.ByteBufferReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class IconInfo {
    private static final int LANGUAGE_CODE_LENGTH = 3;
    private final String mFileName;
    private final int mHeight;
    private final String mIconType;
    private final String mLanguage;
    private final int mWidth;

    @VisibleForTesting
    public IconInfo(int width, int height, String language, String iconType, String fileName) {
        this.mWidth = width;
        this.mHeight = height;
        this.mLanguage = language;
        this.mIconType = iconType;
        this.mFileName = fileName;
    }

    public static IconInfo parse(ByteBuffer payload) {
        int width = ((int) ByteBufferReader.readInteger(payload, ByteOrder.LITTLE_ENDIAN, 2)) & Constants.SHORT_MASK;
        int height = ((int) ByteBufferReader.readInteger(payload, ByteOrder.LITTLE_ENDIAN, 2)) & Constants.SHORT_MASK;
        String language = ByteBufferReader.readString(payload, 3, StandardCharsets.US_ASCII).trim();
        String iconType = ByteBufferReader.readStringWithByteLength(payload, StandardCharsets.US_ASCII);
        String fileName = ByteBufferReader.readStringWithByteLength(payload, StandardCharsets.UTF_8);
        return new IconInfo(width, height, language, iconType, fileName);
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public String getLanguage() {
        return this.mLanguage;
    }

    public String getIconType() {
        return this.mIconType;
    }

    public String getFileName() {
        return this.mFileName;
    }

    public boolean equals(Object thatObject) {
        if (this == thatObject) {
            return true;
        }
        if (!(thatObject instanceof IconInfo)) {
            return false;
        }
        IconInfo that = (IconInfo) thatObject;
        return this.mWidth == that.mWidth && this.mHeight == that.mHeight && TextUtils.equals(this.mLanguage, that.mLanguage) && TextUtils.equals(this.mIconType, that.mIconType) && TextUtils.equals(this.mFileName, that.mFileName);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mWidth), Integer.valueOf(this.mHeight), this.mLanguage, this.mIconType, this.mFileName);
    }

    public String toString() {
        return "IconInfo{Width=" + this.mWidth + ", Height=" + this.mHeight + ", Language=" + this.mLanguage + ", IconType='" + this.mIconType + "', FileName='" + this.mFileName + "'}";
    }
}
