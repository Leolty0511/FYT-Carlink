package android.speech.srec;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class WaveHeader {
    public static final short FORMAT_ALAW = 6;
    public static final short FORMAT_PCM = 1;
    public static final short FORMAT_ULAW = 7;
    private static final int HEADER_LENGTH = 44;
    private static final String TAG = "WaveHeader";
    private short mBitsPerSample;
    private short mFormat;
    private int mNumBytes;
    private short mNumChannels;
    private int mSampleRate;

    public WaveHeader() {
    }

    private static void readId(InputStream inputStream, String str) throws IOException {
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) != inputStream.read()) {
                throw new IOException(str + " tag not present");
            }
        }
    }

    private static int readInt(InputStream inputStream) {
        return (inputStream.read() << 24) | inputStream.read() | (inputStream.read() << 8) | (inputStream.read() << 16);
    }

    private static short readShort(InputStream inputStream) throws IOException {
        return (short) ((inputStream.read() << 8) | inputStream.read());
    }

    private static void writeId(OutputStream outputStream, String str) throws IOException {
        for (int i2 = 0; i2 < str.length(); i2++) {
            outputStream.write(str.charAt(i2));
        }
    }

    private static void writeInt(OutputStream outputStream, int i2) throws IOException {
        outputStream.write(i2 >> 0);
        outputStream.write(i2 >> 8);
        outputStream.write(i2 >> 16);
        outputStream.write(i2 >> 24);
    }

    private static void writeShort(OutputStream outputStream, short s2) throws IOException {
        outputStream.write(s2 >> 0);
        outputStream.write(s2 >> 8);
    }

    public short getBitsPerSample() {
        return this.mBitsPerSample;
    }

    public short getFormat() {
        return this.mFormat;
    }

    public int getNumBytes() {
        return this.mNumBytes;
    }

    public short getNumChannels() {
        return this.mNumChannels;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public int read(InputStream inputStream) throws IOException {
        readId(inputStream, "RIFF");
        readInt(inputStream);
        readId(inputStream, "WAVE");
        readId(inputStream, "fmt ");
        if (16 != readInt(inputStream)) {
            throw new IOException("fmt chunk length not 16");
        }
        this.mFormat = readShort(inputStream);
        this.mNumChannels = readShort(inputStream);
        this.mSampleRate = readInt(inputStream);
        int i2 = readInt(inputStream);
        short s2 = readShort(inputStream);
        short s3 = readShort(inputStream);
        this.mBitsPerSample = s3;
        short s4 = this.mNumChannels;
        if (i2 != ((this.mSampleRate * s4) * s3) / 8) {
            throw new IOException("fmt.ByteRate field inconsistent");
        }
        if (s2 != (s4 * s3) / 8) {
            throw new IOException("fmt.BlockAlign field inconsistent");
        }
        readId(inputStream, "data");
        this.mNumBytes = readInt(inputStream);
        return 44;
    }

    public WaveHeader setBitsPerSample(short s2) {
        this.mBitsPerSample = s2;
        return this;
    }

    public WaveHeader setFormat(short s2) {
        this.mFormat = s2;
        return this;
    }

    public WaveHeader setNumBytes(int i2) {
        this.mNumBytes = i2;
        return this;
    }

    public WaveHeader setNumChannels(short s2) {
        this.mNumChannels = s2;
        return this;
    }

    public WaveHeader setSampleRate(int i2) {
        this.mSampleRate = i2;
        return this;
    }

    public String toString() {
        return String.format("WaveHeader format=%d numChannels=%d sampleRate=%d bitsPerSample=%d numBytes=%d", Short.valueOf(this.mFormat), Short.valueOf(this.mNumChannels), Integer.valueOf(this.mSampleRate), Short.valueOf(this.mBitsPerSample), Integer.valueOf(this.mNumBytes));
    }

    public int write(OutputStream outputStream) throws IOException {
        writeId(outputStream, "RIFF");
        writeInt(outputStream, this.mNumBytes + 36);
        writeId(outputStream, "WAVE");
        writeId(outputStream, "fmt ");
        writeInt(outputStream, 16);
        writeShort(outputStream, this.mFormat);
        writeShort(outputStream, this.mNumChannels);
        writeInt(outputStream, this.mSampleRate);
        writeInt(outputStream, ((this.mNumChannels * this.mSampleRate) * this.mBitsPerSample) / 8);
        writeShort(outputStream, (short) ((this.mNumChannels * this.mBitsPerSample) / 8));
        writeShort(outputStream, this.mBitsPerSample);
        writeId(outputStream, "data");
        writeInt(outputStream, this.mNumBytes);
        return 44;
    }

    public WaveHeader(short s2, short s3, int i2, short s4, int i3) {
        this.mFormat = s2;
        this.mSampleRate = i2;
        this.mNumChannels = s3;
        this.mBitsPerSample = s4;
        this.mNumBytes = i3;
    }
}
