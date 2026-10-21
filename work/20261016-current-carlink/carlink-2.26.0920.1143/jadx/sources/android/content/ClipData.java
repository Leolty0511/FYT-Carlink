package android.content;

import android.accessibilityservice.c;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
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
import com.android.internal.transition.EpicenterTranslateClipReveal;
import com.android.internal.util.ArrayUtils;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import libcore.io.IoUtils;

/* JADX INFO: loaded from: classes.dex */
public class ClipData implements Parcelable {
    final ClipDescription mClipDescription;
    final Bitmap mIcon;
    final ArrayList<Item> mItems;
    static final String[] MIMETYPES_TEXT_PLAIN = {ClipDescription.MIMETYPE_TEXT_PLAIN};
    static final String[] MIMETYPES_TEXT_HTML = {ClipDescription.MIMETYPE_TEXT_HTML};
    static final String[] MIMETYPES_TEXT_URILIST = {ClipDescription.MIMETYPE_TEXT_URILIST};
    static final String[] MIMETYPES_TEXT_INTENT = {ClipDescription.MIMETYPE_TEXT_INTENT};
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
        if (item == null) {
            throw new NullPointerException("item is null");
        }
        this.mIcon = null;
        ArrayList<Item> arrayList = new ArrayList<>();
        this.mItems = arrayList;
        arrayList.add(item);
    }

    private static String[] getMimeTypes(ContentResolver contentResolver, Uri uri) {
        String[] streamTypes;
        if ("content".equals(uri.getScheme())) {
            String type = contentResolver.getType(uri);
            streamTypes = contentResolver.getStreamTypes(uri, "*/*");
            if (type != null) {
                if (streamTypes == null) {
                    streamTypes = new String[]{type};
                } else if (!ArrayUtils.contains(streamTypes, type)) {
                    String[] strArr = new String[streamTypes.length + 1];
                    strArr[0] = type;
                    System.arraycopy(streamTypes, 0, strArr, 1, streamTypes.length);
                    streamTypes = strArr;
                }
            }
        } else {
            streamTypes = null;
        }
        return streamTypes == null ? MIMETYPES_TEXT_URILIST : streamTypes;
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
        return new ClipData(charSequence, getMimeTypes(contentResolver, uri), new Item(uri));
    }

    public void addItem(Item item) {
        if (item == null) {
            throw new NullPointerException("item is null");
        }
        this.mItems.add(item);
    }

    public void collectUris(List<Uri> list) {
        for (int i2 = 0; i2 < this.mItems.size(); i2++) {
            Item itemAt = getItemAt(i2);
            if (itemAt.getUri() != null) {
                list.add(itemAt.getUri());
            }
            Intent intent = itemAt.getIntent();
            if (intent != null) {
                if (intent.getData() != null) {
                    list.add(intent.getData());
                }
                if (intent.getClipData() != null) {
                    intent.getClipData().collectUris(list);
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void fixUris(int i2) {
        int size = this.mItems.size();
        for (int i3 = 0; i3 < size; i3++) {
            Item item = this.mItems.get(i3);
            Intent intent = item.mIntent;
            if (intent != null) {
                intent.fixUris(i2);
            }
            Uri uri = item.mUri;
            if (uri != null) {
                item.mUri = ContentProvider.maybeAddUserId(uri, i2);
            }
        }
    }

    public void fixUrisLight(int i2) {
        Uri data;
        int size = this.mItems.size();
        for (int i3 = 0; i3 < size; i3++) {
            Item item = this.mItems.get(i3);
            Intent intent = item.mIntent;
            if (intent != null && (data = intent.getData()) != null) {
                item.mIntent.setData(ContentProvider.maybeAddUserId(data, i2));
            }
            Uri uri = item.mUri;
            if (uri != null) {
                item.mUri = ContentProvider.maybeAddUserId(uri, i2);
            }
        }
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

    public void prepareToEnterProcess() {
        int size = this.mItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            Intent intent = this.mItems.get(i2).mIntent;
            if (intent != null) {
                intent.prepareToEnterProcess();
            }
        }
    }

    public void prepareToLeaveProcess(boolean z2) {
        prepareToLeaveProcess(z2, 1);
    }

    public void setItemAt(int i2, Item item) {
        this.mItems.set(i2, item);
    }

    public void toShortString(StringBuilder sb) {
        ClipDescription clipDescription = this.mClipDescription;
        boolean shortString = clipDescription != null ? true ^ clipDescription.toShortString(sb) : true;
        if (this.mIcon != null) {
            if (!shortString) {
                sb.append(' ');
            }
            sb.append("I:");
            sb.append(this.mIcon.getWidth());
            sb.append(EpicenterTranslateClipReveal.StateProperty.TARGET_X);
            sb.append(this.mIcon.getHeight());
            shortString = false;
        }
        int i2 = 0;
        while (i2 < this.mItems.size()) {
            if (!shortString) {
                sb.append(' ');
            }
            sb.append('{');
            this.mItems.get(i2).toShortString(sb);
            sb.append('}');
            i2++;
            shortString = false;
        }
    }

    public void toShortStringShortItems(StringBuilder sb, boolean z2) {
        if (this.mItems.size() > 0) {
            if (!z2) {
                sb.append(' ');
            }
            this.mItems.get(0).toShortString(sb);
            if (this.mItems.size() > 1) {
                sb.append(" ...");
            }
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

    public void prepareToLeaveProcess(boolean z2, int i2) {
        int size = this.mItems.size();
        for (int i3 = 0; i3 < size; i3++) {
            Item item = this.mItems.get(i3);
            Intent intent = item.mIntent;
            if (intent != null) {
                intent.prepareToLeaveProcess(z2);
            }
            if (item.mUri != null && z2) {
                if (StrictMode.vmFileUriExposureEnabled()) {
                    item.mUri.checkFileUriExposed("ClipData.Item.getUri()");
                }
                if (StrictMode.vmContentUriWithoutPermissionEnabled()) {
                    item.mUri.checkContentUriWithoutPermission("ClipData.Item.getUri()", i2);
                }
            }
        }
    }

    @Deprecated
    public void addItem(Item item, ContentResolver contentResolver) {
        addItem(contentResolver, item);
    }

    public void addItem(ContentResolver contentResolver, Item item) {
        addItem(item);
        if (item.getHtmlText() != null) {
            this.mClipDescription.addMimeTypes(MIMETYPES_TEXT_HTML);
        } else if (item.getText() != null) {
            this.mClipDescription.addMimeTypes(MIMETYPES_TEXT_PLAIN);
        }
        if (item.getIntent() != null) {
            this.mClipDescription.addMimeTypes(MIMETYPES_TEXT_INTENT);
        }
        if (item.getUri() != null) {
            this.mClipDescription.addMimeTypes(getMimeTypes(contentResolver, item.getUri()));
        }
    }

    public static class Item {
        final String mHtmlText;
        final Intent mIntent;
        final CharSequence mText;
        Uri mUri;

        public Item(Item item) {
            this.mText = item.mText;
            this.mHtmlText = item.mHtmlText;
            this.mIntent = item.mIntent;
            this.mUri = item.mUri;
        }

        /* JADX WARN: Code duplicated, block: B:103:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        private CharSequence coerceToHtmlOrStyledText(Context context, boolean z2) {
            String[] streamTypes;
            boolean z3;
            boolean z4;
            if (this.mUri == null) {
                Intent intent = this.mIntent;
                if (intent != null) {
                    return z2 ? uriToStyledText(intent.toUri(1)) : uriToHtml(intent.toUri(1));
                }
                return "";
            }
            FileInputStream fileInputStream = null;
            try {
                streamTypes = context.getContentResolver().getStreamTypes(this.mUri, "text/*");
            } catch (SecurityException unused) {
                streamTypes = null;
            }
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
                try {
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
                                        } catch (IOException unused2) {
                                        }
                                    }
                                    return string;
                                }
                                String strEscapeHtml = Html.escapeHtml(string);
                                if (fileInputStreamCreateInputStream != null) {
                                    try {
                                        fileInputStreamCreateInputStream.close();
                                    } catch (IOException unused3) {
                                    }
                                }
                                return strEscapeHtml;
                            }
                            if (!z2) {
                                String string2 = string.toString();
                                if (fileInputStreamCreateInputStream != null) {
                                    try {
                                        fileInputStreamCreateInputStream.close();
                                    } catch (IOException unused4) {
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
                                    } catch (IOException unused5) {
                                    }
                                }
                                return charSequence;
                            } catch (RuntimeException unused6) {
                                if (fileInputStreamCreateInputStream != null) {
                                    try {
                                        fileInputStreamCreateInputStream.close();
                                    } catch (IOException unused7) {
                                    }
                                }
                                return string;
                            }
                        } catch (SecurityException e2) {
                            Log.w("ClipData", "Failure opening stream", e2);
                            if (0 != 0) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused8) {
                                }
                            }
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused9) {
                            }
                        }
                        throw th;
                    }
                } catch (FileNotFoundException unused10) {
                    if (0 != 0) {
                        fileInputStream.close();
                    }
                } catch (IOException e3) {
                    Log.w("ClipData", "Failure loading text", e3);
                    String strEscapeHtml2 = Html.escapeHtml(e3.toString());
                    if (0 != 0) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused11) {
                        }
                    }
                    return strEscapeHtml2;
                }
            }
            String scheme = this.mUri.getScheme();
            if ("content".equals(scheme) || ContentResolver.SCHEME_ANDROID_RESOURCE.equals(scheme) || ContentResolver.SCHEME_FILE.equals(scheme)) {
                return "";
            }
            return z2 ? uriToStyledText(this.mUri.toString()) : uriToHtml(this.mUri.toString());
        }

        private String uriToHtml(String str) {
            StringBuilder sbQ = c.q(256, "<a href=\"");
            sbQ.append(Html.escapeHtml(str));
            sbQ.append("\">");
            sbQ.append(Html.escapeHtml(str));
            sbQ.append("</a>");
            return sbQ.toString();
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

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [android.net.Uri] */
        /* JADX WARN: Type inference failed for: r1v10, types: [java.io.FileInputStream, java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v2 */
        /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.AutoCloseable] */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v5 */
        /* JADX WARN: Type inference failed for: r1v7 */
        /* JADX WARN: Type inference failed for: r1v8 */
        /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.AutoCloseable] */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v12 */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.AutoCloseable] */
        /* JADX WARN: Type inference failed for: r9v3, types: [android.content.ContentResolver] */
        public CharSequence coerceToText(Context context) {
            AssetFileDescriptor assetFileDescriptorOpenTypedAssetFileDescriptor;
            ?? r1;
            ?? r2;
            InputStreamReader inputStreamReader;
            IOException e2;
            String string;
            ?? r3;
            CharSequence text = getText();
            if (text != null) {
                return text;
            }
            ?? uri = getUri();
            String str = "";
            if (uri == 0) {
                Intent intent = getIntent();
                return intent != null ? intent.toUri(1) : "";
            }
            AssetFileDescriptor assetFileDescriptor = null;
            try {
                try {
                    assetFileDescriptorOpenTypedAssetFileDescriptor = context.getContentResolver().openTypedAssetFileDescriptor(uri, "text/*", null);
                } catch (FileNotFoundException | RuntimeException unused) {
                    assetFileDescriptorOpenTypedAssetFileDescriptor = null;
                } catch (SecurityException e3) {
                    Log.w("ClipData", "Failure opening stream", e3);
                    assetFileDescriptorOpenTypedAssetFileDescriptor = null;
                }
                try {
                    if (assetFileDescriptorOpenTypedAssetFileDescriptor == null) {
                        IoUtils.closeQuietly(assetFileDescriptorOpenTypedAssetFileDescriptor);
                        IoUtils.closeQuietly((AutoCloseable) null);
                        IoUtils.closeQuietly((AutoCloseable) null);
                        String scheme = uri.getScheme();
                        return ("content".equals(scheme) || ContentResolver.SCHEME_ANDROID_RESOURCE.equals(scheme) || ContentResolver.SCHEME_FILE.equals(scheme)) ? "" : uri.toString();
                    }
                    try {
                        uri = assetFileDescriptorOpenTypedAssetFileDescriptor.createInputStream();
                        try {
                            inputStreamReader = new InputStreamReader((InputStream) uri, "UTF-8");
                            try {
                                StringBuilder sb = new StringBuilder(128);
                                char[] cArr = new char[8192];
                                while (true) {
                                    int i2 = inputStreamReader.read(cArr);
                                    if (i2 <= 0) {
                                        break;
                                    }
                                    sb.append(cArr, 0, i2);
                                }
                                string = sb.toString();
                                r3 = uri;
                            } catch (IOException e4) {
                                e2 = e4;
                                Log.w("ClipData", "Failure loading text", e2);
                                string = e2.toString();
                                r3 = uri;
                            }
                        } catch (IOException e5) {
                            e2 = e5;
                            inputStreamReader = null;
                        } catch (Throwable th) {
                            th = th;
                            str = null;
                            assetFileDescriptor = assetFileDescriptorOpenTypedAssetFileDescriptor;
                            th = th;
                            r1 = uri;
                            r2 = str;
                            IoUtils.closeQuietly(assetFileDescriptor);
                            IoUtils.closeQuietly((AutoCloseable) r1);
                            IoUtils.closeQuietly((AutoCloseable) r2);
                            throw th;
                        }
                    } catch (IOException e6) {
                        inputStreamReader = null;
                        e2 = e6;
                        uri = 0;
                    } catch (Throwable th2) {
                        th = th2;
                        uri = 0;
                        str = null;
                    }
                    IoUtils.closeQuietly(assetFileDescriptorOpenTypedAssetFileDescriptor);
                    IoUtils.closeQuietly((AutoCloseable) r3);
                    IoUtils.closeQuietly(inputStreamReader);
                    return string;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                r1 = 0;
                r2 = 0;
                IoUtils.closeQuietly(assetFileDescriptor);
                IoUtils.closeQuietly((AutoCloseable) r1);
                IoUtils.closeQuietly((AutoCloseable) r2);
                throw th;
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

        public void toShortSummaryString(StringBuilder sb) {
            if (this.mHtmlText != null) {
                sb.append("HTML");
                return;
            }
            if (this.mText != null) {
                sb.append("TEXT");
                return;
            }
            if (this.mUri != null) {
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

        public Item(CharSequence charSequence) {
            this.mText = charSequence;
            this.mHtmlText = null;
            this.mIntent = null;
            this.mUri = null;
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
        if (item != null) {
            this.mIcon = null;
            ArrayList<Item> arrayList = new ArrayList<>();
            this.mItems = arrayList;
            arrayList.add(item);
            return;
        }
        throw new NullPointerException("item is null");
    }

    public ClipData(ClipDescription clipDescription, ArrayList<Item> arrayList) {
        this.mClipDescription = clipDescription;
        if (arrayList != null) {
            this.mIcon = null;
            this.mItems = arrayList;
            return;
        }
        throw new NullPointerException("item is null");
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
