package android.security;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class KeyStoreParameter implements java.security.KeyStore.ProtectionParameter {
    private final int mFlags;

    @Deprecated
    public static final class Builder {
        private int mFlags;

        public Builder(Context context) {
            if (context == null) {
                throw new NullPointerException("context == null");
            }
        }

        public KeyStoreParameter build() {
            return new KeyStoreParameter(this.mFlags);
        }

        public Builder setEncryptionRequired(boolean z2) {
            if (z2) {
                this.mFlags |= 1;
            } else {
                this.mFlags &= -2;
            }
            return this;
        }
    }

    public int getFlags() {
        return this.mFlags;
    }

    public boolean isEncryptionRequired() {
        return (this.mFlags & 1) != 0;
    }

    private KeyStoreParameter(int i2) {
        this.mFlags = i2;
    }
}
