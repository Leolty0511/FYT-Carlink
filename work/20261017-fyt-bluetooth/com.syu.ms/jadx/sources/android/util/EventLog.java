package android.util;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Collection;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class EventLog {
    private static final String COMMENT_PATTERN = "^\\s*(#.*)?$";
    private static final String TAG = "EventLog";
    private static final String TAGS_FILE = "/system/etc/event-log-tags";
    private static final String TAG_PATTERN = "^\\s*(\\d+)\\s+(\\w+)\\s*(\\(.*\\))?\\s*$";
    private static HashMap<String, Integer> sTagCodes;
    private static HashMap<Integer, String> sTagNames;

    public static final class Event {
        private static final int DATA_START = 24;
        private static final byte INT_TYPE = 0;
        private static final int LENGTH_OFFSET = 0;
        private static final byte LIST_TYPE = 3;
        private static final byte LONG_TYPE = 1;
        private static final int NANOSECONDS_OFFSET = 16;
        private static final int PAYLOAD_START = 20;
        private static final int PROCESS_OFFSET = 4;
        private static final int SECONDS_OFFSET = 12;
        private static final byte STRING_TYPE = 2;
        private static final int TAG_OFFSET = 20;
        private static final int THREAD_OFFSET = 8;
        private final ByteBuffer mBuffer;

        public Event(byte[] bArr) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            this.mBuffer = byteBufferWrap;
            byteBufferWrap.order(ByteOrder.nativeOrder());
        }

        private Object decodeObject() {
            byte b2 = this.mBuffer.get();
            if (b2 == 0) {
                return Integer.valueOf(this.mBuffer.getInt());
            }
            if (b2 == 1) {
                return Long.valueOf(this.mBuffer.getLong());
            }
            if (b2 == 2) {
                try {
                    int i2 = this.mBuffer.getInt();
                    int iPosition = this.mBuffer.position();
                    this.mBuffer.position(iPosition + i2);
                    return new String(this.mBuffer.array(), iPosition, i2, "UTF-8");
                } catch (UnsupportedEncodingException e2) {
                    Log.wtf(EventLog.TAG, "UTF-8 is not supported", e2);
                    return null;
                }
            }
            if (b2 != 3) {
                throw new IllegalArgumentException("Unknown entry type: " + ((int) b2));
            }
            int i3 = this.mBuffer.get();
            if (i3 < 0) {
                i3 += 256;
            }
            Object[] objArr = new Object[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                objArr[i4] = decodeObject();
            }
            return objArr;
        }

        public synchronized Object getData() {
            try {
                ByteBuffer byteBuffer = this.mBuffer;
                byteBuffer.limit(byteBuffer.getShort(0) + 20);
                this.mBuffer.position(24);
            } catch (IllegalArgumentException e2) {
                Log.wtf(EventLog.TAG, "Illegal entry payload: tag=" + getTag(), e2);
                return null;
            } catch (BufferUnderflowException e3) {
                Log.wtf(EventLog.TAG, "Truncated entry payload: tag=" + getTag(), e3);
                return null;
            }
            return decodeObject();
        }

        public int getProcessId() {
            return this.mBuffer.getInt(4);
        }

        public int getTag() {
            return this.mBuffer.getInt(20);
        }

        public int getThreadId() {
            return this.mBuffer.getInt(8);
        }

        public long getTimeNanos() {
            return (((long) this.mBuffer.getInt(12)) * 1000000000) + ((long) this.mBuffer.getInt(16));
        }
    }

    public static int getTagCode(String str) {
        readTagsFile();
        Integer num = sTagCodes.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public static String getTagName(int i2) {
        readTagsFile();
        return sTagNames.get(Integer.valueOf(i2));
    }

    public static native void readEvents(int[] iArr, Collection<Event> collection);

    private static synchronized void readTagsFile() {
        String line;
        if (sTagCodes != null && sTagNames != null) {
            return;
        }
        sTagCodes = new HashMap<>();
        sTagNames = new HashMap<>();
        Pattern patternCompile = Pattern.compile(COMMENT_PATTERN);
        Pattern patternCompile2 = Pattern.compile(TAG_PATTERN);
        BufferedReader bufferedReader = null;
        bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(TAGS_FILE), 256);
                    while (true) {
                        try {
                            line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            if (!patternCompile.matcher(line).matches()) {
                                Matcher matcher = patternCompile2.matcher(line);
                                if (matcher.matches()) {
                                    try {
                                        int i2 = Integer.parseInt(matcher.group(1));
                                        String strGroup = matcher.group(2);
                                        sTagCodes.put(strGroup, Integer.valueOf(i2));
                                        sTagNames.put(Integer.valueOf(i2), strGroup);
                                    } catch (NumberFormatException e2) {
                                        Log.wtf(TAG, "Error in /system/etc/event-log-tags: " + line, e2);
                                    }
                                } else {
                                    Log.wtf(TAG, "Bad entry in /system/etc/event-log-tags: " + line);
                                }
                            }
                        } catch (IOException e3) {
                            e = e3;
                            bufferedReader = bufferedReader2;
                            Log.wtf(TAG, "Error reading /system/etc/event-log-tags", e);
                            if (bufferedReader != null) {
                                bufferedReader.close();
                                bufferedReader = bufferedReader;
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused) {
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    bufferedReader = line;
                } catch (IOException unused2) {
                }
            } catch (IOException e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static native int writeEvent(int i2, int i3);

    public static native int writeEvent(int i2, long j2);

    public static native int writeEvent(int i2, String str);

    public static native int writeEvent(int i2, Object... objArr);
}
