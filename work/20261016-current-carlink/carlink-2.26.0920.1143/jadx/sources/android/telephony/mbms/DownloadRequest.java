package android.telephony.mbms;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import com.android.internal.telephony.PhoneConstants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new Parcelable.Creator<DownloadRequest>() { // from class: android.telephony.mbms.DownloadRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadRequest[] newArray(int i2) {
            return new DownloadRequest[i2];
        }
    };
    private static final int CURRENT_VERSION = 1;
    private static final String LOG_TAG = "MbmsDownloadRequest";
    public static final int MAX_APP_INTENT_SIZE = 50000;
    public static final int MAX_DESTINATION_URI_SIZE = 50000;
    private final String fileServiceId;
    private final String serializedResultIntentForApp;
    private final Uri sourceUri;
    private final int subscriptionId;
    private final int version;

    public static class Builder {
        private String appIntent;
        private String fileServiceId;
        private Uri source;
        private int subscriptionId;
        private int version = 1;

        public Builder(Uri uri) {
            if (uri == null) {
                throw new IllegalArgumentException("Source URI must be non-null.");
            }
            this.source = uri;
        }

        public DownloadRequest build() {
            return new DownloadRequest(this.fileServiceId, this.source, this.subscriptionId, this.appIntent, this.version);
        }

        public Builder setAppIntent(Intent intent) {
            String uri = intent.toUri(0);
            this.appIntent = uri;
            if (uri.length() <= 50000) {
                return this;
            }
            throw new IllegalArgumentException("App intent must not exceed length 50000");
        }

        public Builder setOpaqueData(byte[] bArr) {
            try {
                OpaqueDataContainer opaqueDataContainer = (OpaqueDataContainer) new ObjectInputStream(new ByteArrayInputStream(bArr)).readObject();
                this.version = opaqueDataContainer.version;
                this.appIntent = opaqueDataContainer.appIntent;
                return this;
            } catch (IOException e2) {
                Log.e(DownloadRequest.LOG_TAG, "Got IOException trying to parse opaque data");
                throw new IllegalArgumentException(e2);
            } catch (ClassNotFoundException e3) {
                Log.e(DownloadRequest.LOG_TAG, "Got ClassNotFoundException trying to parse opaque data");
                throw new IllegalArgumentException(e3);
            }
        }

        public Builder setServiceId(String str) {
            this.fileServiceId = str;
            return this;
        }

        public Builder setServiceInfo(FileServiceInfo fileServiceInfo) {
            this.fileServiceId = fileServiceInfo.getServiceId();
            return this;
        }

        public Builder setSubscriptionId(int i2) {
            this.subscriptionId = i2;
            return this;
        }
    }

    public static class OpaqueDataContainer implements Serializable {
        private final String appIntent;
        private final int version;

        public OpaqueDataContainer(String str, int i2) {
            this.appIntent = str;
            this.version = i2;
        }
    }

    public static DownloadRequest copy(DownloadRequest downloadRequest) {
        return new DownloadRequest(downloadRequest);
    }

    public static int getMaxAppIntentSize() {
        return 50000;
    }

    public static int getMaxDestinationUriSize() {
        return 50000;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        return this.subscriptionId == downloadRequest.subscriptionId && this.version == downloadRequest.version && Objects.equals(this.fileServiceId, downloadRequest.fileServiceId) && Objects.equals(this.sourceUri, downloadRequest.sourceUri) && Objects.equals(this.serializedResultIntentForApp, downloadRequest.serializedResultIntentForApp);
    }

    public String getFileServiceId() {
        return this.fileServiceId;
    }

    public String getHash() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            if (this.version >= 1) {
                messageDigest.update(this.sourceUri.toString().getBytes(StandardCharsets.UTF_8));
                String str = this.serializedResultIntentForApp;
                if (str != null) {
                    messageDigest.update(str.getBytes(StandardCharsets.UTF_8));
                }
            }
            return Base64.encodeToString(messageDigest.digest(), 10);
        } catch (NoSuchAlgorithmException unused) {
            throw new RuntimeException("Could not get sha256 hash object");
        }
    }

    public Intent getIntentForApp() {
        try {
            return Intent.parseUri(this.serializedResultIntentForApp, 0);
        } catch (URISyntaxException unused) {
            return null;
        }
    }

    public byte[] getOpaqueData() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(new OpaqueDataContainer(this.serializedResultIntentForApp, this.version));
            objectOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            Log.e(LOG_TAG, "Got IOException trying to serialize opaque data");
            return null;
        }
    }

    public Uri getSourceUri() {
        return this.sourceUri;
    }

    public int getSubscriptionId() {
        return this.subscriptionId;
    }

    public int getVersion() {
        return this.version;
    }

    public int hashCode() {
        return Objects.hash(this.fileServiceId, this.sourceUri, Integer.valueOf(this.subscriptionId), this.serializedResultIntentForApp, Integer.valueOf(this.version));
    }

    public boolean isMultipartDownload() {
        return getSourceUri().getLastPathSegment() != null && getSourceUri().getLastPathSegment().contains(PhoneConstants.APN_TYPE_ALL);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.fileServiceId);
        parcel.writeParcelable(this.sourceUri, i2);
        parcel.writeInt(this.subscriptionId);
        parcel.writeString(this.serializedResultIntentForApp);
        parcel.writeInt(this.version);
    }

    private DownloadRequest(String str, Uri uri, int i2, String str2, int i3) {
        this.fileServiceId = str;
        this.sourceUri = uri;
        this.subscriptionId = i2;
        this.serializedResultIntentForApp = str2;
        this.version = i3;
    }

    private DownloadRequest(DownloadRequest downloadRequest) {
        this.fileServiceId = downloadRequest.fileServiceId;
        this.sourceUri = downloadRequest.sourceUri;
        this.subscriptionId = downloadRequest.subscriptionId;
        this.serializedResultIntentForApp = downloadRequest.serializedResultIntentForApp;
        this.version = downloadRequest.version;
    }

    private DownloadRequest(Parcel parcel) {
        this.fileServiceId = parcel.readString();
        this.sourceUri = (Uri) parcel.readParcelable(DownloadRequest.class.getClassLoader());
        this.subscriptionId = parcel.readInt();
        this.serializedResultIntentForApp = parcel.readString();
        this.version = parcel.readInt();
    }
}
