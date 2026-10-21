package android.media;

/* JADX INFO: loaded from: classes.dex */
public class MediaCasException extends Exception {

    public static final class DeniedByServerException extends MediaCasException {
        public DeniedByServerException(String str) {
            super(str);
        }
    }

    public static final class NotProvisionedException extends MediaCasException {
        public NotProvisionedException(String str) {
            super(str);
        }
    }

    public static final class ResourceBusyException extends MediaCasException {
        public ResourceBusyException(String str) {
            super(str);
        }
    }

    public static final class UnsupportedCasException extends MediaCasException {
        public UnsupportedCasException(String str) {
            super(str);
        }
    }

    public static void throwExceptionIfNeeded(int i2) throws ResourceBusyException, DeniedByServerException, NotProvisionedException {
        if (i2 == 0) {
            return;
        }
        if (i2 == 7) {
            throw new NotProvisionedException(null);
        }
        if (i2 == 8) {
            throw new ResourceBusyException(null);
        }
        if (i2 == 11) {
            throw new DeniedByServerException(null);
        }
        MediaCasStateException.throwExceptionIfNeeded(i2);
    }

    private MediaCasException(String str) {
        super(str);
    }
}
