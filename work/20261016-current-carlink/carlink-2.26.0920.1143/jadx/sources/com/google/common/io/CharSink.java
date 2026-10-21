package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@J2ktIncompatible
@GwtIncompatible
public abstract class CharSink {
    public Writer openBufferedStream() {
        Writer writerOpenStream = openStream();
        return writerOpenStream instanceof BufferedWriter ? (BufferedWriter) writerOpenStream : new BufferedWriter(writerOpenStream);
    }

    public abstract Writer openStream();

    public void write(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Closer closerCreate = Closer.create();
        try {
            Writer writer = (Writer) closerCreate.register(openStream());
            writer.append(charSequence);
            writer.flush();
            closerCreate.close();
        } catch (Throwable th) {
            try {
                throw closerCreate.rethrow(th);
            } catch (Throwable th2) {
                closerCreate.close();
                throw th2;
            }
        }
    }

    @CanIgnoreReturnValue
    public long writeFrom(Readable readable) {
        Preconditions.checkNotNull(readable);
        Closer closerCreate = Closer.create();
        try {
            Writer writer = (Writer) closerCreate.register(openStream());
            long jCopy = CharStreams.copy(readable, writer);
            writer.flush();
            closerCreate.close();
            return jCopy;
        } catch (Throwable th) {
            try {
                throw closerCreate.rethrow(th);
            } catch (Throwable th2) {
                closerCreate.close();
                throw th2;
            }
        }
    }

    public void writeLines(Iterable<? extends CharSequence> iterable) throws IOException {
        writeLines(iterable, System.getProperty("line.separator"));
    }

    public void writeLines(Iterable<? extends CharSequence> iterable, String str) throws IOException {
        writeLines(iterable.iterator(), str);
    }

    public void writeLines(Stream<? extends CharSequence> stream) throws IOException {
        writeLines(stream, System.getProperty("line.separator"));
    }

    public void writeLines(Stream<? extends CharSequence> stream, String str) throws IOException {
        writeLines(stream.iterator(), str);
    }

    private void writeLines(Iterator<? extends CharSequence> it, String str) throws IOException {
        Preconditions.checkNotNull(str);
        Writer writerOpenBufferedStream = openBufferedStream();
        while (it.hasNext()) {
            try {
                writerOpenBufferedStream.append(it.next()).append((CharSequence) str);
            } catch (Throwable th) {
                if (writerOpenBufferedStream != null) {
                    try {
                        writerOpenBufferedStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (writerOpenBufferedStream != null) {
            writerOpenBufferedStream.close();
        }
    }
}
