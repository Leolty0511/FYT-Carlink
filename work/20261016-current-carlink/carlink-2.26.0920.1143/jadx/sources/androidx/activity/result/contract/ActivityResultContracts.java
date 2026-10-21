package androidx.activity.result.contract;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import android.provider.ContactsContract;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.collections.a;
import kotlin.jvm.internal.d;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public final class ActivityResultContracts {

    @RequiresApi(33)
    public static final class Api33Impl {
        public static final Api33Impl INSTANCE = new Api33Impl();

        private Api33Impl() {
        }

        @DoNotInline
        public final int getPickImagesMaxLimit() {
            return MediaStore.getPickImagesMaxLimit();
        }
    }

    public static class CaptureVideo extends ActivityResultContract<Uri, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, Uri uri) {
            b.h(context, "context");
            b.h(uri, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, Uri uri) {
            b.h(context, "context");
            b.h(uri, "input");
            Intent intentPutExtra = new Intent(MediaStore.ACTION_VIDEO_CAPTURE).putExtra(MediaStore.EXTRA_OUTPUT, uri);
            b.g(intentPutExtra, "Intent(MediaStore.ACTION…tore.EXTRA_OUTPUT, input)");
            return intentPutExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Boolean parseResult(int i2, Intent intent) {
            return Boolean.valueOf(i2 == -1);
        }
    }

    @RequiresApi(19)
    public static class CreateDocument extends ActivityResultContract<String, Uri> {
        private final String mimeType;

        public CreateDocument(String str) {
            b.h(str, "mimeType");
            this.mimeType = str;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String str) {
            b.h(context, "context");
            b.h(str, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, String str) {
            b.h(context, "context");
            b.h(str, "input");
            Intent intentPutExtra = new Intent(Intent.ACTION_CREATE_DOCUMENT).setType(this.mimeType).putExtra(Intent.EXTRA_TITLE, str);
            b.g(intentPutExtra, "Intent(Intent.ACTION_CRE…ntent.EXTRA_TITLE, input)");
            return intentPutExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i2, Intent intent) {
            if (!(i2 == -1)) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }

        public CreateDocument() {
            this("*/*");
        }
    }

    public static class GetContent extends ActivityResultContract<String, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String str) {
            b.h(context, "context");
            b.h(str, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, String str) {
            b.h(context, "context");
            b.h(str, "input");
            Intent type = new Intent(Intent.ACTION_GET_CONTENT).addCategory(Intent.CATEGORY_OPENABLE).setType(str);
            b.g(type, "Intent(Intent.ACTION_GET…          .setType(input)");
            return type;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i2, Intent intent) {
            if (!(i2 == -1)) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    @RequiresApi(18)
    public static class GetMultipleContents extends ActivityResultContract<String, List<Uri>> {
        public static final Companion Companion = new Companion(null);

        @RequiresApi(18)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(d dVar) {
                this();
            }

            public final List<Uri> getClipDataUris$activity_release(Intent intent) {
                b.h(intent, "<this>");
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Uri data = intent.getData();
                if (data != null) {
                    linkedHashSet.add(data);
                }
                ClipData clipData = intent.getClipData();
                if (clipData == null && linkedHashSet.isEmpty()) {
                    return EmptyList.INSTANCE;
                }
                if (clipData != null) {
                    int itemCount = clipData.getItemCount();
                    for (int i2 = 0; i2 < itemCount; i2++) {
                        Uri uri = clipData.getItemAt(i2).getUri();
                        if (uri != null) {
                            linkedHashSet.add(uri);
                        }
                    }
                }
                return new ArrayList(linkedHashSet);
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, String str) {
            b.h(context, "context");
            b.h(str, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, String str) {
            b.h(context, "context");
            b.h(str, "input");
            Intent intentPutExtra = new Intent(Intent.ACTION_GET_CONTENT).addCategory(Intent.CATEGORY_OPENABLE).setType(str).putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
            b.g(intentPutExtra, "Intent(Intent.ACTION_GET…TRA_ALLOW_MULTIPLE, true)");
            return intentPutExtra;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final List<Uri> parseResult(int i2, Intent intent) {
            List<Uri> clipDataUris$activity_release;
            if (!(i2 == -1)) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity_release = Companion.getClipDataUris$activity_release(intent)) == null) ? EmptyList.INSTANCE : clipDataUris$activity_release;
        }
    }

    @RequiresApi(19)
    public static class OpenDocument extends ActivityResultContract<String[], Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String[] strArr) {
            b.h(context, "context");
            b.h(strArr, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, String[] strArr) {
            b.h(context, "context");
            b.h(strArr, "input");
            Intent type = new Intent(Intent.ACTION_OPEN_DOCUMENT).putExtra(Intent.EXTRA_MIME_TYPES, strArr).setType("*/*");
            b.g(type, "Intent(Intent.ACTION_OPE…          .setType(\"*/*\")");
            return type;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i2, Intent intent) {
            if (!(i2 == -1)) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    @RequiresApi(21)
    public static class OpenDocumentTree extends ActivityResultContract<Uri, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, Uri uri) {
            b.h(context, "context");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, Uri uri) {
            b.h(context, "context");
            Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
            if (Build.VERSION.SDK_INT >= 26 && uri != null) {
                intent.putExtra(DocumentsContract.EXTRA_INITIAL_URI, uri);
            }
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i2, Intent intent) {
            if (!(i2 == -1)) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    @RequiresApi(19)
    public static class OpenMultipleDocuments extends ActivityResultContract<String[], List<Uri>> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, String[] strArr) {
            b.h(context, "context");
            b.h(strArr, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, String[] strArr) {
            b.h(context, "context");
            b.h(strArr, "input");
            Intent type = new Intent(Intent.ACTION_OPEN_DOCUMENT).putExtra(Intent.EXTRA_MIME_TYPES, strArr).putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true).setType("*/*");
            b.g(type, "Intent(Intent.ACTION_OPE…          .setType(\"*/*\")");
            return type;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final List<Uri> parseResult(int i2, Intent intent) {
            List<Uri> clipDataUris$activity_release;
            if (!(i2 == -1)) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity_release = GetMultipleContents.Companion.getClipDataUris$activity_release(intent)) == null) ? EmptyList.INSTANCE : clipDataUris$activity_release;
        }
    }

    public static final class PickContact extends ActivityResultContract<Void, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Void r2) {
            b.h(context, "context");
            Intent type = new Intent(Intent.ACTION_PICK).setType(ContactsContract.Contacts.CONTENT_TYPE);
            b.g(type, "Intent(Intent.ACTION_PIC…ct.Contacts.CONTENT_TYPE)");
            return type;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Uri parseResult(int i2, Intent intent) {
            if (!(i2 == -1)) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    @RequiresApi(19)
    public static class PickMultipleVisualMedia extends ActivityResultContract<PickVisualMediaRequest, List<Uri>> {
        public static final Companion Companion = new Companion(null);
        private final int maxItems;

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(d dVar) {
                this();
            }

            public final int getMaxItems$activity_release() {
                if (!PickVisualMedia.Companion.isPhotoPickerAvailable() || Build.VERSION.SDK_INT < 33) {
                    return Integer.MAX_VALUE;
                }
                return Api33Impl.INSTANCE.getPickImagesMaxLimit();
            }
        }

        public PickMultipleVisualMedia() {
            this(0, 1, null);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, PickVisualMediaRequest pickVisualMediaRequest) {
            b.h(context, "context");
            b.h(pickVisualMediaRequest, "input");
            return null;
        }

        public /* synthetic */ PickMultipleVisualMedia(int i2, int i3, d dVar) {
            this((i3 & 1) != 0 ? Companion.getMaxItems$activity_release() : i2);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, PickVisualMediaRequest pickVisualMediaRequest) {
            Intent intent;
            b.h(context, "context");
            b.h(pickVisualMediaRequest, "input");
            PickVisualMedia.Companion companion = PickVisualMedia.Companion;
            if (companion.isPhotoPickerAvailable()) {
                intent = new Intent("android.provider.action.PICK_IMAGES");
                intent.setType(companion.getVisualMimeType$activity_release(pickVisualMediaRequest.getMediaType()));
                if (Build.VERSION.SDK_INT >= 33) {
                    if (!(this.maxItems <= Api33Impl.INSTANCE.getPickImagesMaxLimit())) {
                        throw new IllegalArgumentException("Max items must be less or equals MediaStore.getPickImagesMaxLimit()".toString());
                    }
                }
                intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", this.maxItems);
            } else {
                intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
                intent.setType(companion.getVisualMimeType$activity_release(pickVisualMediaRequest.getMediaType()));
                intent.putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true);
                if (intent.getType() == null) {
                    intent.setType("*/*");
                    intent.putExtra(Intent.EXTRA_MIME_TYPES, new String[]{"image/*", "video/*"});
                }
            }
            return intent;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final List<Uri> parseResult(int i2, Intent intent) {
            List<Uri> clipDataUris$activity_release;
            if (!(i2 == -1)) {
                intent = null;
            }
            return (intent == null || (clipDataUris$activity_release = GetMultipleContents.Companion.getClipDataUris$activity_release(intent)) == null) ? EmptyList.INSTANCE : clipDataUris$activity_release;
        }

        public PickMultipleVisualMedia(int i2) {
            this.maxItems = i2;
            if (!(i2 > 1)) {
                throw new IllegalArgumentException("Max items must be higher than 1".toString());
            }
        }
    }

    public static class PickVisualMedia extends ActivityResultContract<PickVisualMediaRequest, Uri> {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(d dVar) {
                this();
            }

            public final String getVisualMimeType$activity_release(VisualMediaType visualMediaType) {
                b.h(visualMediaType, "input");
                if (visualMediaType instanceof ImageOnly) {
                    return "image/*";
                }
                if (visualMediaType instanceof VideoOnly) {
                    return "video/*";
                }
                if (visualMediaType instanceof SingleMimeType) {
                    return ((SingleMimeType) visualMediaType).getMimeType();
                }
                if (visualMediaType instanceof ImageAndVideo) {
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }

            @SuppressLint({"ClassVerificationFailure", "NewApi"})
            public final boolean isPhotoPickerAvailable() {
                int i2 = Build.VERSION.SDK_INT;
                return i2 >= 33 || (i2 >= 30 && SdkExtensions.getExtensionVersion(30) >= 2);
            }
        }

        public static final class ImageAndVideo implements VisualMediaType {
            public static final ImageAndVideo INSTANCE = new ImageAndVideo();

            private ImageAndVideo() {
            }
        }

        public static final class ImageOnly implements VisualMediaType {
            public static final ImageOnly INSTANCE = new ImageOnly();

            private ImageOnly() {
            }
        }

        public static final class SingleMimeType implements VisualMediaType {
            private final String mimeType;

            public SingleMimeType(String str) {
                b.h(str, "mimeType");
                this.mimeType = str;
            }

            public final String getMimeType() {
                return this.mimeType;
            }
        }

        public static final class VideoOnly implements VisualMediaType {
            public static final VideoOnly INSTANCE = new VideoOnly();

            private VideoOnly() {
            }
        }

        public interface VisualMediaType {
        }

        @SuppressLint({"ClassVerificationFailure", "NewApi"})
        public static final boolean isPhotoPickerAvailable() {
            return Companion.isPhotoPickerAvailable();
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, PickVisualMediaRequest pickVisualMediaRequest) {
            b.h(context, "context");
            b.h(pickVisualMediaRequest, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, PickVisualMediaRequest pickVisualMediaRequest) {
            b.h(context, "context");
            b.h(pickVisualMediaRequest, "input");
            Companion companion = Companion;
            if (companion.isPhotoPickerAvailable()) {
                Intent intent = new Intent("android.provider.action.PICK_IMAGES");
                intent.setType(companion.getVisualMimeType$activity_release(pickVisualMediaRequest.getMediaType()));
                return intent;
            }
            Intent intent2 = new Intent(Intent.ACTION_OPEN_DOCUMENT);
            intent2.setType(companion.getVisualMimeType$activity_release(pickVisualMediaRequest.getMediaType()));
            if (intent2.getType() != null) {
                return intent2;
            }
            intent2.setType("*/*");
            intent2.putExtra(Intent.EXTRA_MIME_TYPES, new String[]{"image/*", "video/*"});
            return intent2;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i2, Intent intent) {
            if (!(i2 == -1)) {
                intent = null;
            }
            if (intent != null) {
                return intent.getData();
            }
            return null;
        }
    }

    public static final class RequestMultiplePermissions extends ActivityResultContract<String[], Map<String, Boolean>> {
        public static final String ACTION_REQUEST_PERMISSIONS = "androidx.activity.result.contract.action.REQUEST_PERMISSIONS";
        public static final Companion Companion = new Companion(null);
        public static final String EXTRA_PERMISSIONS = "androidx.activity.result.contract.extra.PERMISSIONS";
        public static final String EXTRA_PERMISSION_GRANT_RESULTS = "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS";

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(d dVar) {
                this();
            }

            public final Intent createIntent$activity_release(String[] strArr) {
                b.h(strArr, "input");
                Intent intentPutExtra = new Intent(RequestMultiplePermissions.ACTION_REQUEST_PERMISSIONS).putExtra(RequestMultiplePermissions.EXTRA_PERMISSIONS, strArr);
                b.g(intentPutExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
                return intentPutExtra;
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String[] strArr) {
            b.h(context, "context");
            b.h(strArr, "input");
            return Companion.createIntent$activity_release(strArr);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResultContract.SynchronousResult<Map<String, Boolean>> getSynchronousResult(Context context, String[] strArr) {
            b.h(context, "context");
            b.h(strArr, "input");
            boolean z2 = true;
            if (strArr.length == 0) {
                return new ActivityResultContract.SynchronousResult<>(a.G());
            }
            for (String str : strArr) {
                if (!(ContextCompat.checkSelfPermission(context, str) == 0)) {
                    z2 = false;
                    break;
                }
            }
            if (!z2) {
                return null;
            }
            int iU = b.u(strArr.length);
            if (iU < 16) {
                iU = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iU);
            for (String str2 : strArr) {
                Pair pair = new Pair(str2, Boolean.TRUE);
                linkedHashMap.put(pair.getFirst(), pair.getSecond());
            }
            return new ActivityResultContract.SynchronousResult<>(linkedHashMap);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Map<String, Boolean> parseResult(int i2, Intent intent) {
            if (i2 != -1) {
                return a.G();
            }
            if (intent == null) {
                return a.G();
            }
            String[] stringArrayExtra = intent.getStringArrayExtra(EXTRA_PERMISSIONS);
            int[] intArrayExtra = intent.getIntArrayExtra(EXTRA_PERMISSION_GRANT_RESULTS);
            if (intArrayExtra == null || stringArrayExtra == null) {
                return a.G();
            }
            ArrayList arrayList = new ArrayList(intArrayExtra.length);
            for (int i3 : intArrayExtra) {
                arrayList.add(Boolean.valueOf(i3 == 0));
            }
            ArrayList arrayList2 = new ArrayList();
            for (String str : stringArrayExtra) {
                if (str != null) {
                    arrayList2.add(str);
                }
            }
            Iterator it = arrayList2.iterator();
            Iterator it2 = arrayList.iterator();
            ArrayList arrayList3 = new ArrayList(Math.min(arrayList2.size(), arrayList.size()));
            while (it.hasNext() && it2.hasNext()) {
                arrayList3.add(new Pair(it.next(), it2.next()));
            }
            return a.H(arrayList3);
        }
    }

    public static final class RequestPermission extends ActivityResultContract<String, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String str) {
            b.h(context, "context");
            b.h(str, "input");
            return RequestMultiplePermissions.Companion.createIntent$activity_release(new String[]{str});
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, String str) {
            b.h(context, "context");
            b.h(str, "input");
            if (ContextCompat.checkSelfPermission(context, str) == 0) {
                return new ActivityResultContract.SynchronousResult<>(Boolean.TRUE);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Boolean parseResult(int i2, Intent intent) {
            boolean z2;
            if (intent == null || i2 != -1) {
                return Boolean.FALSE;
            }
            int[] intArrayExtra = intent.getIntArrayExtra(RequestMultiplePermissions.EXTRA_PERMISSION_GRANT_RESULTS);
            boolean z3 = false;
            if (intArrayExtra != null) {
                int length = intArrayExtra.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z2 = false;
                        break;
                    }
                    if (intArrayExtra[i3] == 0) {
                        z2 = true;
                        break;
                    }
                    i3++;
                }
                if (z2) {
                    z3 = true;
                }
            }
            return Boolean.valueOf(z3);
        }
    }

    public static final class StartActivityForResult extends ActivityResultContract<Intent, ActivityResult> {
        public static final Companion Companion = new Companion(null);
        public static final String EXTRA_ACTIVITY_OPTIONS_BUNDLE = "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE";

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(d dVar) {
                this();
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Intent intent) {
            b.h(context, "context");
            b.h(intent, "input");
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResult parseResult(int i2, Intent intent) {
            return new ActivityResult(i2, intent);
        }
    }

    public static final class StartIntentSenderForResult extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        public static final String ACTION_INTENT_SENDER_REQUEST = "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST";
        public static final Companion Companion = new Companion(null);
        public static final String EXTRA_INTENT_SENDER_REQUEST = "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST";
        public static final String EXTRA_SEND_INTENT_EXCEPTION = "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION";

        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(d dVar) {
                this();
            }
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, IntentSenderRequest intentSenderRequest) {
            b.h(context, "context");
            b.h(intentSenderRequest, "input");
            Intent intentPutExtra = new Intent(ACTION_INTENT_SENDER_REQUEST).putExtra(EXTRA_INTENT_SENDER_REQUEST, intentSenderRequest);
            b.g(intentPutExtra, "Intent(ACTION_INTENT_SEN…NT_SENDER_REQUEST, input)");
            return intentPutExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResult parseResult(int i2, Intent intent) {
            return new ActivityResult(i2, intent);
        }
    }

    public static class TakePicture extends ActivityResultContract<Uri, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, Uri uri) {
            b.h(context, "context");
            b.h(uri, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, Uri uri) {
            b.h(context, "context");
            b.h(uri, "input");
            Intent intentPutExtra = new Intent(MediaStore.ACTION_IMAGE_CAPTURE).putExtra(MediaStore.EXTRA_OUTPUT, uri);
            b.g(intentPutExtra, "Intent(MediaStore.ACTION…tore.EXTRA_OUTPUT, input)");
            return intentPutExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Boolean parseResult(int i2, Intent intent) {
            return Boolean.valueOf(i2 == -1);
        }
    }

    public static class TakePicturePreview extends ActivityResultContract<Void, Bitmap> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Bitmap> getSynchronousResult(Context context, Void r2) {
            b.h(context, "context");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, Void r2) {
            b.h(context, "context");
            return new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Bitmap parseResult(int i2, Intent intent) {
            if (!(i2 == -1)) {
                intent = null;
            }
            if (intent != null) {
                return (Bitmap) intent.getParcelableExtra("data");
            }
            return null;
        }
    }

    public static class TakeVideo extends ActivityResultContract<Uri, Bitmap> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Bitmap> getSynchronousResult(Context context, Uri uri) {
            b.h(context, "context");
            b.h(uri, "input");
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @CallSuper
        public Intent createIntent(Context context, Uri uri) {
            b.h(context, "context");
            b.h(uri, "input");
            Intent intentPutExtra = new Intent(MediaStore.ACTION_VIDEO_CAPTURE).putExtra(MediaStore.EXTRA_OUTPUT, uri);
            b.g(intentPutExtra, "Intent(MediaStore.ACTION…tore.EXTRA_OUTPUT, input)");
            return intentPutExtra;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Bitmap parseResult(int i2, Intent intent) {
            if (!(i2 == -1)) {
                intent = null;
            }
            if (intent != null) {
                return (Bitmap) intent.getParcelableExtra("data");
            }
            return null;
        }
    }

    private ActivityResultContracts() {
    }
}
