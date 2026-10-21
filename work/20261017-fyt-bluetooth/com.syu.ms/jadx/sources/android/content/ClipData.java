package android.content;

import android.graphics.Bitmap;
import android.net.ProxyProperties;
import android.net.Uri;
import android.net.http.CharArrayBuffers;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StrictMode;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.util.Log;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class ClipData implements Parcelable {
    public final ClipDescription mClipDescription;
    public final Bitmap mIcon;
    public final ArrayList<Item> mItems;
    public static final String[] MIMETYPES_TEXT_PLAIN = {ClipDescription.MIMETYPE_TEXT_PLAIN};
    public static final String[] MIMETYPES_TEXT_HTML = {ClipDescription.MIMETYPE_TEXT_HTML};
    public static final String[] MIMETYPES_TEXT_URILIST = {ClipDescription.MIMETYPE_TEXT_URILIST};
    public static final String[] MIMETYPES_TEXT_INTENT = {ClipDescription.MIMETYPE_TEXT_INTENT};
    public static final Parcelable.Creator<ClipData> CREATOR = new Parcelable.Creator<ClipData>() { // from class: android.content.ClipData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClipData createFromParcel(Parcel parcel) {
            return new ClipData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClipData[] newArray(int i2) {
            return new ClipData[i2];
        }
    };

    public ClipData(CharSequence charSequence, String[] strArr, Item item) {
        this.mClipDescription = new ClipDescription(charSequence, strArr);
        Objects.requireNonNull(item, "item is null");
        this.mIcon = null;
        ArrayList<Item> arrayList = new ArrayList<>();
        this.mItems = arrayList;
        arrayList.add(item);
    }

    public static ClipData newHtmlText(CharSequence charSequence, CharSequence charSequence2, String str) {
        return new ClipData(charSequence, MIMETYPES_TEXT_HTML, new Item(charSequence2, str));
    }

    public static ClipData newIntent(CharSequence charSequence, Intent intent) {
        return new ClipData(charSequence, MIMETYPES_TEXT_INTENT, new Item(intent));
    }

    public static ClipData newPlainText(CharSequence charSequence, CharSequence charSequence2) {
        return new ClipData(charSequence, MIMETYPES_TEXT_PLAIN, new Item(charSequence2));
    }

    public static ClipData newRawUri(CharSequence charSequence, Uri uri) {
        return new ClipData(charSequence, MIMETYPES_TEXT_URILIST, new Item(uri));
    }

    public static ClipData newUri(ContentResolver contentResolver, CharSequence charSequence, Uri uri) {
        String[] streamTypes;
        Item item = new Item(uri);
        if ("content".equals(uri.getScheme())) {
            String type = contentResolver.getType(uri);
            streamTypes = contentResolver.getStreamTypes(uri, "*/*");
            int i2 = 1;
            if (streamTypes != null) {
                String[] strArr = new String[streamTypes.length + (type == null ? 1 : 2)];
                if (type != null) {
                    strArr[0] = type;
                } else {
                    i2 = 0;
                }
                System.arraycopy(streamTypes, 0, strArr, i2, streamTypes.length);
                strArr[i2 + streamTypes.length] = ClipDescription.MIMETYPE_TEXT_URILIST;
                streamTypes = strArr;
            } else if (type != null) {
                streamTypes = new String[]{type, ClipDescription.MIMETYPE_TEXT_URILIST};
            }
        } else {
            streamTypes = null;
        }
        if (streamTypes == null) {
            streamTypes = MIMETYPES_TEXT_URILIST;
        }
        return new ClipData(charSequence, streamTypes, item);
    }

    public void addItem(Item item) {
        Objects.requireNonNull(item, "item is null");
        this.mItems.add(item);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ClipDescription getDescription() {
        return this.mClipDescription;
    }

    public Bitmap getIcon() {
        return this.mIcon;
    }

    public Item getItemAt(int i2) {
        return this.mItems.get(i2);
    }

    public int getItemCount() {
        return this.mItems.size();
    }

    public void prepareToLeaveProcess() {
        int size = this.mItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            Item item = this.mItems.get(i2);
            Intent intent = item.mIntent;
            if (intent != null) {
                intent.prepareToLeaveProcess();
            }
            if (item.mUri != null && StrictMode.vmFileUriExposureEnabled()) {
                item.mUri.checkFileUriExposed("ClipData.Item.getUri()");
            }
        }
    }

    public void toShortString(StringBuilder sb) {
        ClipDescription clipDescription = this.mClipDescription;
        boolean shortString = clipDescription != null ? true ^ clipDescription.toShortString(sb) : true;
        if (this.mIcon != null) {
            if (!shortString) {
                sb.append(CharArrayBuffers.uppercaseAddon);
            }
            sb.append("I:");
            sb.append(this.mIcon.getWidth());
            sb.append('x');
            sb.append(this.mIcon.getHeight());
            shortString = false;
        }
        int i2 = 0;
        while (i2 < this.mItems.size()) {
            if (!shortString) {
                sb.append(CharArrayBuffers.uppercaseAddon);
            }
            sb.append('{');
            this.mItems.get(i2).toShortString(sb);
            sb.append('}');
            i2++;
            shortString = false;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("ClipData { ");
        toShortString(sb);
        sb.append(" }");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        this.mClipDescription.writeToParcel(parcel, i2);
        if (this.mIcon != null) {
            parcel.writeInt(1);
            this.mIcon.writeToParcel(parcel, i2);
        } else {
            parcel.writeInt(0);
        }
        int size = this.mItems.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            Item item = this.mItems.get(i3);
            TextUtils.writeToParcel(item.mText, parcel, i2);
            parcel.writeString(item.mHtmlText);
            if (item.mIntent != null) {
                parcel.writeInt(1);
                item.mIntent.writeToParcel(parcel, i2);
            } else {
                parcel.writeInt(0);
            }
            if (item.mUri != null) {
                parcel.writeInt(1);
                item.mUri.writeToParcel(parcel, i2);
            } else {
                parcel.writeInt(0);
            }
        }
    }

    public static class Item {
        public final String mHtmlText;
        public final Intent mIntent;
        public final CharSequence mText;
        public final Uri mUri;

        public Item(CharSequence charSequence) {
            this.mText = charSequence;
            this.mHtmlText = null;
            this.mIntent = null;
            this.mUri = null;
        }

        private CharSequence coerceToHtmlOrStyledText(Context context, boolean z2) {
            boolean z3;
            boolean z4;
            if (this.mUri == null) {
                Intent intent = this.mIntent;
                if (intent != null) {
                    return z2 ? uriToStyledText(intent.toUri(1)) : uriToHtml(intent.toUri(1));
                }
                return ProxyProperties.LOCAL_EXCL_LIST;
            }
            String[] streamTypes = context.getContentResolver().getStreamTypes(this.mUri, "text/*");
            String str = ClipDescription.MIMETYPE_TEXT_HTML;
            if (streamTypes != null) {
                z3 = false;
                z4 = false;
                for (String str2 : streamTypes) {
                    if (ClipDescription.MIMETYPE_TEXT_HTML.equals(str2)) {
                        z3 = true;
                    } else if (str2.startsWith("text/")) {
                        z4 = true;
                    }
                }
            } else {
                z3 = false;
                z4 = false;
            }
            if (z3 || z4) {
                FileInputStream fileInputStream = null;
                try {
                    try {
                        ContentResolver contentResolver = context.getContentResolver();
                        Uri uri = this.mUri;
                        if (!z3) {
                            str = ClipDescription.MIMETYPE_TEXT_PLAIN;
                        }
                        FileInputStream fileInputStreamCreateInputStream = contentResolver.openTypedAssetFileDescriptor(uri, str, null).createInputStream();
                        InputStreamReader inputStreamReader = new InputStreamReader(fileInputStreamCreateInputStream, "UTF-8");
                        StringBuilder sb = new StringBuilder(128);
                        char[] cArr = new char[8192];
                        while (true) {
                            int i2 = inputStreamReader.read(cArr);
                            if (i2 <= 0) {
                                break;
                            }
                            sb.append(cArr, 0, i2);
                        }
                        String string = sb.toString();
                        if (!z3) {
                            if (z2) {
                                if (fileInputStreamCreateInputStream != null) {
                                    try {
                                        fileInputStreamCreateInputStream.close();
                                    } catch (IOException unused) {
                                    }
                                }
                                return string;
                            }
                            String strEscapeHtml = Html.escapeHtml(string);
                            if (fileInputStreamCreateInputStream != null) {
                                try {
                                    fileInputStreamCreateInputStream.close();
                                } catch (IOException unused2) {
                                }
                            }
                            return strEscapeHtml;
                        }
                        if (!z2) {
                            String string2 = string.toString();
                            if (fileInputStreamCreateInputStream != null) {
                                try {
                                    fileInputStreamCreateInputStream.close();
                                } catch (IOException unused3) {
                                }
                            }
                            return string2;
                        }
                        try {
                            Spanned spannedFromHtml = Html.fromHtml(string);
                            CharSequence charSequence = string;
                            if (spannedFromHtml != null) {
                                charSequence = spannedFromHtml;
                            }
                            if (fileInputStreamCreateInputStream != null) {
                                try {
                                    fileInputStreamCreateInputStream.close();
                                } catch (IOException unused4) {
                                }
                            }
                            return charSequence;
                        } catch (RuntimeException unused5) {
                            if (fileInputStreamCreateInputStream != null) {
                                try {
                                    fileInputStreamCreateInputStream.close();
                                } catch (IOException unused6) {
                                }
                            }
                            return string;
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused7) {
                            }
                        }
                        throw th;
                    }
                } catch (FileNotFoundException unused8) {
                    if (0 != 0) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused9) {
                        }
                    }
                } catch (IOException e2) {
                    Log.w("ClippedData", "Failure loading text", e2);
                    String strEscapeHtml2 = Html.escapeHtml(e2.toString());
                    if (0 != 0) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused10) {
                        }
                    }
                    return strEscapeHtml2;
                }
            }
            return z2 ? uriToStyledText(this.mUri.toString()) : uriToHtml(this.mUri.toString());
        }

        private String uriToHtml(String str) {
            StringBuilder sb = new StringBuilder(256);
            sb.append("<a href=\"");
            sb.append(Html.escapeHtml(str));
            sb.append("\">");
            sb.append(Html.escapeHtml(str));
            sb.append("</a>");
            return sb.toString();
        }

        private CharSequence uriToStyledText(String str) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) str);
            spannableStringBuilder.setSpan(new URLSpan(str), 0, spannableStringBuilder.length(), 33);
            return spannableStringBuilder;
        }

        public String coerceToHtmlText(Context context) {
            String htmlText = getHtmlText();
            if (htmlText != null) {
                return htmlText;
            }
            CharSequence text = getText();
            if (text != null) {
                return text instanceof Spanned ? Html.toHtml((Spanned) text) : Html.escapeHtml(text);
            }
            CharSequence charSequenceCoerceToHtmlOrStyledText = coerceToHtmlOrStyledText(context, false);
            if (charSequenceCoerceToHtmlOrStyledText != null) {
                return charSequenceCoerceToHtmlOrStyledText.toString();
            }
            return null;
        }

        public CharSequence coerceToStyledText(Context context) {
            CharSequence text = getText();
            if (text instanceof Spanned) {
                return text;
            }
            String htmlText = getHtmlText();
            if (htmlText != null) {
                try {
                    Spanned spannedFromHtml = Html.fromHtml(htmlText);
                    if (spannedFromHtml != null) {
                        return spannedFromHtml;
                    }
                } catch (RuntimeException unused) {
                }
            }
            return text != null ? text : coerceToHtmlOrStyledText(context, true);
        }

        public CharSequence coerceToText(Context context) {
            CharSequence text = getText();
            if (text != null) {
                return text;
            }
            Uri uri = getUri();
            if (uri == null) {
                Intent intent = getIntent();
                return intent != null ? intent.toUri(1) : ProxyProperties.LOCAL_EXCL_LIST;
            }
            FileInputStream fileInputStreamCreateInputStream = null;
            try {
                fileInputStreamCreateInputStream = context.getContentResolver().openTypedAssetFileDescriptor(uri, "text/*", null).createInputStream();
                InputStreamReader inputStreamReader = new InputStreamReader(fileInputStreamCreateInputStream, "UTF-8");
                StringBuilder sb = new StringBuilder(128);
                char[] cArr = new char[8192];
                while (true) {
                    int i2 = inputStreamReader.read(cArr);
                    if (i2 <= 0) {
                        break;
                    }
                    sb.append(cArr, 0, i2);
                }
                return sb.toString();
            } catch (FileNotFoundException unused) {
                return uri.toString();
            } catch (IOException e2) {
                Log.w("ClippedData", "Failure loading text", e2);
                return e2.toString();
            } finally {
                if (fileInputStreamCreateInputStream != null) {
                    try {
                        fileInputStreamCreateInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
            }
        }

        public String getHtmlText() {
            return this.mHtmlText;
        }

        public Intent getIntent() {
            return this.mIntent;
        }

        public CharSequence getText() {
            return this.mText;
        }

        public Uri getUri() {
            return this.mUri;
        }

        public void toShortString(StringBuilder sb) {
            if (this.mHtmlText != null) {
                sb.append("H:");
                sb.append(this.mHtmlText);
                return;
            }
            if (this.mText != null) {
                sb.append("T:");
                sb.append(this.mText);
            } else if (this.mUri != null) {
                sb.append("U:");
                sb.append(this.mUri);
            } else if (this.mIntent == null) {
                sb.append(WifiEnterpriseConfig.EMPTY_VALUE);
            } else {
                sb.append("I:");
                this.mIntent.toShortString(sb, true, true, true, true);
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ClipData.Item { ");
            toShortString(sb);
            sb.append(" }");
            return sb.toString();
        }

        public Item(CharSequence charSequence, String str) {
            this.mText = charSequence;
            this.mHtmlText = str;
            this.mIntent = null;
            this.mUri = null;
        }

        public Item(Intent intent) {
            this.mText = null;
            this.mHtmlText = null;
            this.mIntent = intent;
            this.mUri = null;
        }

        public Item(Uri uri) {
            this.mText = null;
            this.mHtmlText = null;
            this.mIntent = null;
            this.mUri = uri;
        }

        public Item(CharSequence charSequence, Intent intent, Uri uri) {
            this.mText = charSequence;
            this.mHtmlText = null;
            this.mIntent = intent;
            this.mUri = uri;
        }

        public Item(CharSequence charSequence, String str, Intent intent, Uri uri) {
            if (str != null && charSequence == null) {
                throw new IllegalArgumentException("Plain text must be supplied if HTML text is supplied");
            }
            this.mText = charSequence;
            this.mHtmlText = str;
            this.mIntent = intent;
            this.mUri = uri;
        }
    }

    public ClipData(ClipDescription clipDescription, Item item) {
        this.mClipDescription = clipDescription;
        Objects.requireNonNull(item, "item is null");
        this.mIcon = null;
        ArrayList<Item> arrayList = new ArrayList<>();
        this.mItems = arrayList;
        arrayList.add(item);
    }

    public ClipData(ClipData clipData) {
        this.mClipDescription = clipData.mClipDescription;
        this.mIcon = clipData.mIcon;
        this.mItems = new ArrayList<>(clipData.mItems);
    }

    public ClipData(Parcel parcel) {
        this.mClipDescription = new ClipDescription(parcel);
        if (parcel.readInt() != 0) {
            this.mIcon = Bitmap.CREATOR.createFromParcel(parcel);
        } else {
            this.mIcon = null;
        }
        this.mItems = new ArrayList<>();
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            this.mItems.add(new Item(TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null));
        }
    }
}
