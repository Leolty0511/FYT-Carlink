package android.view.textclassifier;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.LocaleList;
import android.os.ParcelFileDescriptor;
import android.provider.Browser;
import android.provider.Settings;
import android.service.notification.ZenModeConfig;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.method.WordIterator;
import android.text.style.ClickableSpan;
import android.text.util.Linkify;
import android.util.Log;
import android.util.Patterns;
import android.view.View;
import com.android.internal.R;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.Preconditions;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.function.ToIntFunction;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
final class TextClassifierImpl implements TextClassifier {
    private static final String LOG_TAG = "TextClassifierImpl";
    private static final String MODEL_DIR = "/etc/textclassifier/";
    private static final String MODEL_FILE_REGEX = "textclassifier\\.smartselection\\.(.*)\\.model";
    private static final String UPDATED_MODEL_FILE_PATH = "/data/misc/textclassifier/textclassifier.smartselection.model";
    private final Context mContext;

    @GuardedBy("mSmartSelectionLock")
    private Locale mLocale;

    @GuardedBy("mSmartSelectionLock")
    private Map<Locale, String> mModelFilePaths;
    private TextClassifierConstants mSettings;

    @GuardedBy("mSmartSelectionLock")
    private SmartSelection mSmartSelection;

    @GuardedBy("mSmartSelectionLock")
    private int mVersion;
    private final MetricsLogger mMetricsLogger = new MetricsLogger();
    private final Object mSmartSelectionLock = new Object();

    public static final class IntentFactory {
        private IntentFactory() {
        }

        public static Intent create(Context context, String str, String str2) {
            String strConcat;
            String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
            String strTrim = str2.trim();
            lowerCase.getClass();
            switch (lowerCase) {
                case "address":
                    return new Intent("android.intent.action.VIEW").setData(Uri.parse(String.format("geo:0,0?q=%s", strTrim)));
                case "url":
                    if (strTrim.toLowerCase().startsWith("http://")) {
                        strConcat = "http://" + strTrim.substring(7);
                    } else if (strTrim.toLowerCase().startsWith("https://")) {
                        strConcat = "https://" + strTrim.substring(8);
                    } else {
                        strConcat = "http://".concat(strTrim);
                    }
                    return new Intent("android.intent.action.VIEW", Uri.parse(strConcat)).putExtra(Browser.EXTRA_APPLICATION_ID, context.getPackageName());
                case "email":
                    return new Intent(Intent.ACTION_SENDTO).setData(Uri.parse(String.format("mailto:%s", strTrim)));
                case "phone":
                    return new Intent(Intent.ACTION_DIAL).setData(Uri.parse(String.format("tel:%s", strTrim)));
                default:
                    return null;
            }
        }

        public static String getLabel(Context context, String str) {
            String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
            lowerCase.getClass();
            switch (lowerCase) {
                case "address":
                    return context.getString(R.string.map);
                case "url":
                    return context.getString(R.string.browse);
                case "email":
                    return context.getString(R.string.email);
                case "phone":
                    return context.getString(R.string.dial);
                default:
                    return null;
            }
        }

        public static int getLogType(String str) {
            String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
            lowerCase.getClass();
            switch (lowerCase) {
                case "address":
                    return 3;
                case "url":
                    return 4;
                case "email":
                    return 1;
                case "phone":
                    return 2;
                default:
                    return 0;
            }
        }
    }

    public static final class LinksInfoFactory {

        public static final class LinksInfoImpl implements LinksInfo {
            private final CharSequence mOriginalText;
            private final List<SpanSpec> mSpans;

            public LinksInfoImpl(CharSequence charSequence, List<SpanSpec> list) {
                this.mOriginalText = charSequence;
                this.mSpans = list;
            }

            @Override // android.view.textclassifier.LinksInfo
            public boolean apply(CharSequence charSequence) {
                Preconditions.checkArgument(charSequence != null);
                if (!(charSequence instanceof Spannable) || !this.mOriginalText.toString().equals(charSequence.toString())) {
                    return false;
                }
                Spannable spannable = (Spannable) charSequence;
                int size = this.mSpans.size();
                for (int i2 = 0; i2 < size; i2++) {
                    SpanSpec spanSpec = this.mSpans.get(i2);
                    spannable.setSpan(spanSpec.mSpan, spanSpec.mStart, spanSpec.mEnd, 0);
                }
                return true;
            }
        }

        public static final class SpanSpec {
            private final int mEnd;
            private final ClickableSpan mSpan;
            private final int mStart;

            public SpanSpec(int i2, int i3, ClickableSpan clickableSpan) {
                this.mStart = i2;
                this.mEnd = i3;
                this.mSpan = clickableSpan;
            }

            public static /* synthetic */ int access$200(SpanSpec spanSpec) {
                return spanSpec.mStart;
            }
        }

        private LinksInfoFactory() {
        }

        /* JADX WARN: Type inference failed for: r6v1, types: [android.view.textclassifier.f] */
        private static List<SpanSpec> avoidOverlaps(List<SpanSpec> list, String str) {
            Collections.sort(list, Comparator.comparingInt(new ToIntFunction() { // from class: android.view.textclassifier.f
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return TextClassifierImpl.LinksInfoFactory.SpanSpec.access$200((TextClassifierImpl.LinksInfoFactory.SpanSpec) obj);
                }
            }));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                SpanSpec spanSpec = list.get(i2);
                SpanSpec spanSpec2 = (SpanSpec) linkedHashMap.get(Integer.valueOf(spanSpec.mStart));
                if (spanSpec2 == null || spanSpec2.mEnd < spanSpec.mEnd) {
                    linkedHashMap.put(Integer.valueOf(spanSpec.mStart), spanSpec);
                }
            }
            LinkedList linkedList = new LinkedList();
            for (SpanSpec spanSpec3 : linkedHashMap.values()) {
                if (linkedList.isEmpty()) {
                    linkedList.add(spanSpec3);
                } else {
                    SpanSpec spanSpec4 = (SpanSpec) linkedList.getLast();
                    if (spanSpec3.mStart >= spanSpec4.mEnd) {
                        linkedList.add(spanSpec3);
                    } else if (spanSpec3.mEnd - spanSpec3.mStart > spanSpec4.mEnd - spanSpec4.mStart) {
                        linkedList.set(linkedList.size() - 1, spanSpec3);
                    }
                }
            }
            return linkedList;
        }

        public static LinksInfo create(Context context, SmartSelection smartSelection, String str, int i2) {
            WordIterator wordIterator = new WordIterator();
            wordIterator.setCharSequence(str, 0, str.length());
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            while (true) {
                int iNextBoundary = wordIterator.nextBoundary(i3);
                if (iNextBoundary == -1) {
                    return new LinksInfoImpl(str, avoidOverlaps(arrayList, str));
                }
                if (!TextUtils.isEmpty(str.substring(i3, iNextBoundary))) {
                    int[] iArrSuggest = smartSelection.suggest(str, i3, iNextBoundary);
                    int i4 = iArrSuggest[0];
                    int i5 = iArrSuggest[1];
                    if (i4 >= 0 && i5 <= str.length() && i4 <= i5) {
                        SmartSelection.ClassificationResult[] classificationResultArrClassifyText = smartSelection.classifyText(str, i4, i5, TextClassifierImpl.getHintFlags(str, i4, i5));
                        if (classificationResultArrClassifyText.length > 0) {
                            String highestScoringType = TextClassifierImpl.getHighestScoringType(classificationResultArrClassifyText);
                            if (matches(highestScoringType, i2)) {
                                Intent intentCreate = IntentFactory.create(context, highestScoringType, str.substring(i4, i5));
                                if (hasActivityHandler(context, intentCreate)) {
                                    arrayList.add(new SpanSpec(i4, i5, createSpan(context, intentCreate)));
                                }
                            }
                        }
                    }
                    i3 = iNextBoundary;
                }
            }
        }

        private static ClickableSpan createSpan(final Context context, final Intent intent) {
            return new ClickableSpan() { // from class: android.view.textclassifier.TextClassifierImpl.LinksInfoFactory.1
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    context.startActivity(intent);
                }
            };
        }

        private static boolean hasActivityHandler(Context context, Intent intent) {
            ResolveInfo resolveInfoResolveActivity;
            return (intent == null || (resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null || resolveInfoResolveActivity.activityInfo == null) ? false : true;
        }

        private static boolean matches(String str, int i2) {
            String lowerCase = str.trim().toLowerCase(Locale.ENGLISH);
            if ((i2 & 4) != 0 && "phone".equals(lowerCase)) {
                return true;
            }
            if ((i2 & 2) != 0 && "email".equals(lowerCase)) {
                return true;
            }
            if ((i2 & 8) == 0 || !"address".equals(lowerCase)) {
                return (i2 & 1) != 0 && "url".equals(lowerCase);
            }
            return true;
        }
    }

    public TextClassifierImpl(Context context) {
        this.mContext = (Context) Preconditions.checkNotNull(context);
    }

    private static void closeAndLogError(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            parcelFileDescriptor.close();
        } catch (IOException e2) {
            Log.e("TextClassifierImpl", "Error closing file.", e2);
        }
    }

    private TextClassification createClassificationResult(SmartSelection.ClassificationResult[] classificationResultArr, CharSequence charSequence) {
        ResolveInfo resolveInfoResolveActivity;
        PackageManager packageManager;
        TextClassification.Builder text = new TextClassification.Builder().setText(charSequence.toString());
        for (SmartSelection.ClassificationResult classificationResult : classificationResultArr) {
            text.setEntityType(classificationResult.mCollection, classificationResult.mScore);
        }
        String highestScoringType = getHighestScoringType(classificationResultArr);
        text.setLogType(IntentFactory.getLogType(highestScoringType));
        Intent intentCreate = IntentFactory.create(this.mContext, highestScoringType, charSequence.toString());
        if (intentCreate != null) {
            packageManager = this.mContext.getPackageManager();
            resolveInfoResolveActivity = packageManager.resolveActivity(intentCreate, 0);
        } else {
            resolveInfoResolveActivity = null;
            packageManager = null;
        }
        if (resolveInfoResolveActivity != null && resolveInfoResolveActivity.activityInfo != null) {
            text.setIntent(intentCreate).setOnClickListener(TextClassification.createStartActivityOnClickListener(this.mContext, intentCreate));
            String str = resolveInfoResolveActivity.activityInfo.packageName;
            if (ZenModeConfig.SYSTEM_AUTHORITY.equals(str)) {
                text.setLabel(IntentFactory.getLabel(this.mContext, highestScoringType));
            } else {
                intentCreate.setComponent(new ComponentName(str, resolveInfoResolveActivity.activityInfo.name));
                Drawable drawableLoadIcon = resolveInfoResolveActivity.activityInfo.loadIcon(packageManager);
                if (drawableLoadIcon == null) {
                    drawableLoadIcon = resolveInfoResolveActivity.loadIcon(packageManager);
                }
                text.setIcon(drawableLoadIcon);
                CharSequence charSequenceLoadLabel = resolveInfoResolveActivity.activityInfo.loadLabel(packageManager);
                if (charSequenceLoadLabel == null) {
                    charSequenceLoadLabel = resolveInfoResolveActivity.loadLabel(packageManager);
                }
                text.setLabel(charSequenceLoadLabel != null ? charSequenceLoadLabel.toString() : null);
            }
        }
        return text.setVersionInfo(getVersionInfo()).build();
    }

    @GuardedBy("mSmartSelectionLock")
    private void destroySmartSelectionIfExistsLocked() {
        SmartSelection smartSelection = this.mSmartSelection;
        if (smartSelection != null) {
            smartSelection.close();
            this.mSmartSelection = null;
        }
    }

    @GuardedBy("mSmartSelectionLock")
    private Locale findBestSupportedLocaleLocked(LocaleList localeList) {
        String languageTags;
        if (localeList.isEmpty()) {
            languageTags = LocaleList.getDefault().toLanguageTags();
        } else {
            languageTags = localeList.toLanguageTags() + "," + LocaleList.getDefault().toLanguageTags();
        }
        List list = Locale.LanguageRange.parse(languageTags);
        ArrayList arrayList = new ArrayList(getFactoryModelFilePathsLocked().keySet());
        Locale updatedModelLocale = getUpdatedModelLocale();
        if (updatedModelLocale != null) {
            arrayList.add(updatedModelLocale);
        }
        return Locale.lookup(list, arrayList);
    }

    @GuardedBy("mSmartSelectionLock")
    private Map<Locale, String> getFactoryModelFilePathsLocked() {
        if (this.mModelFilePaths == null) {
            HashMap map = new HashMap();
            File file = new File(MODEL_DIR);
            if (file.exists() && file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                Pattern patternCompile = Pattern.compile(MODEL_FILE_REGEX);
                for (File file2 : fileArrListFiles) {
                    Matcher matcher = patternCompile.matcher(file2.getName());
                    if (matcher.matches() && file2.isFile()) {
                        map.put(Locale.forLanguageTag(matcher.group(1)), file2.getAbsolutePath());
                    }
                }
            }
            this.mModelFilePaths = map;
        }
        return this.mModelFilePaths;
    }

    @GuardedBy("mSmartSelectionLock")
    private ParcelFileDescriptor getFdLocked(Locale locale) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptorOpen;
        ParcelFileDescriptor parcelFileDescriptorOpen2 = null;
        try {
            parcelFileDescriptorOpen = ParcelFileDescriptor.open(new File(UPDATED_MODEL_FILE_PATH), 268435456);
        } catch (FileNotFoundException unused) {
            parcelFileDescriptorOpen = null;
        }
        try {
            String str = getFactoryModelFilePathsLocked().get(locale);
            if (str != null) {
                parcelFileDescriptorOpen2 = ParcelFileDescriptor.open(new File(str), 268435456);
            }
        } catch (FileNotFoundException unused2) {
        }
        if (parcelFileDescriptorOpen == null) {
            if (parcelFileDescriptorOpen2 != null) {
                return parcelFileDescriptorOpen2;
            }
            throw new FileNotFoundException(String.format("No model file found for %s", locale));
        }
        int fd = parcelFileDescriptorOpen.getFd();
        boolean zEquals = Objects.equals(locale.getLanguage().trim().toLowerCase(), SmartSelection.getLanguage(fd).trim().toLowerCase());
        if (parcelFileDescriptorOpen2 == null) {
            if (zEquals) {
                return parcelFileDescriptorOpen;
            }
            closeAndLogError(parcelFileDescriptorOpen);
            throw new FileNotFoundException(String.format("No model file found for %s", locale));
        }
        if (!zEquals) {
            closeAndLogError(parcelFileDescriptorOpen);
            return parcelFileDescriptorOpen2;
        }
        int version = SmartSelection.getVersion(fd);
        int version2 = SmartSelection.getVersion(parcelFileDescriptorOpen2.getFd());
        if (version > version2) {
            closeAndLogError(parcelFileDescriptorOpen2);
            this.mVersion = version;
            return parcelFileDescriptorOpen;
        }
        closeAndLogError(parcelFileDescriptorOpen);
        this.mVersion = version2;
        return parcelFileDescriptorOpen2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getHighestScoringType(SmartSelection.ClassificationResult[] classificationResultArr) {
        if (classificationResultArr.length < 1) {
            return "";
        }
        SmartSelection.ClassificationResult classificationResult = classificationResultArr[0];
        String str = classificationResult.mCollection;
        float f2 = classificationResult.mScore;
        int length = classificationResultArr.length;
        for (int i2 = 1; i2 < length; i2++) {
            SmartSelection.ClassificationResult classificationResult2 = classificationResultArr[i2];
            float f3 = classificationResult2.mScore;
            if (f3 > f2) {
                str = classificationResult2.mCollection;
                f2 = f3;
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getHintFlags(CharSequence charSequence, int i2, int i3) {
        CharSequence charSequenceSubSequence = charSequence.subSequence(i2, i3);
        int i4 = Patterns.AUTOLINK_EMAIL_ADDRESS.matcher(charSequenceSubSequence).matches() ? 2 : 0;
        return (Patterns.AUTOLINK_WEB_URL.matcher(charSequenceSubSequence).matches() && Linkify.sUrlMatchFilter.acceptMatch(charSequence, i2, i3)) ? i4 | 1 : i4;
    }

    private SmartSelection getSmartSelection(LocaleList localeList) {
        SmartSelection smartSelection;
        synchronized (this.mSmartSelectionLock) {
            if (localeList == null) {
                try {
                    localeList = LocaleList.getEmptyLocaleList();
                } catch (Throwable th) {
                    throw th;
                }
            }
            Locale localeFindBestSupportedLocaleLocked = findBestSupportedLocaleLocked(localeList);
            if (localeFindBestSupportedLocaleLocked == null) {
                throw new FileNotFoundException("No file for null locale");
            }
            if (this.mSmartSelection == null || !Objects.equals(this.mLocale, localeFindBestSupportedLocaleLocked)) {
                destroySmartSelectionIfExistsLocked();
                ParcelFileDescriptor fdLocked = getFdLocked(localeFindBestSupportedLocaleLocked);
                this.mSmartSelection = new SmartSelection(fdLocked.getFd());
                closeAndLogError(fdLocked);
                this.mLocale = localeFindBestSupportedLocaleLocked;
            }
            smartSelection = this.mSmartSelection;
        }
        return smartSelection;
    }

    private Locale getUpdatedModelLocale() {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(new File(UPDATED_MODEL_FILE_PATH), 268435456);
            Locale localeForLanguageTag = Locale.forLanguageTag(SmartSelection.getLanguage(parcelFileDescriptorOpen.getFd()));
            closeAndLogError(parcelFileDescriptorOpen);
            return localeForLanguageTag;
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    private String getVersionInfo() {
        synchronized (this.mSmartSelectionLock) {
            Locale locale = this.mLocale;
            if (locale == null) {
                return "";
            }
            return String.format("%s_v%d", locale.toLanguageTag(), Integer.valueOf(this.mVersion));
        }
    }

    private static void validateInput(CharSequence charSequence, int i2, int i3) {
        Preconditions.checkArgument(charSequence != null);
        Preconditions.checkArgument(i2 >= 0);
        Preconditions.checkArgument(i3 <= charSequence.length());
        Preconditions.checkArgument(i3 > i2);
    }

    @Override // android.view.textclassifier.TextClassifier
    public TextClassification classifyText(CharSequence charSequence, int i2, int i3, LocaleList localeList) {
        validateInput(charSequence, i2, i3);
        try {
            if (charSequence.length() > 0) {
                String string = charSequence.toString();
                SmartSelection.ClassificationResult[] classificationResultArrClassifyText = getSmartSelection(localeList).classifyText(string, i2, i3, getHintFlags(string, i2, i3));
                if (classificationResultArrClassifyText.length > 0) {
                    return createClassificationResult(classificationResultArrClassifyText, string.subSequence(i2, i3));
                }
            }
        } catch (Throwable th) {
            Log.e("TextClassifierImpl", "Error getting assist info.", th);
        }
        return TextClassifier.NO_OP.classifyText(charSequence, i2, i3, localeList);
    }

    @Override // android.view.textclassifier.TextClassifier
    public LinksInfo getLinks(CharSequence charSequence, int i2, LocaleList localeList) {
        Preconditions.checkArgument(charSequence != null);
        try {
            return LinksInfoFactory.create(this.mContext, getSmartSelection(localeList), charSequence.toString(), i2);
        } catch (Throwable th) {
            Log.e("TextClassifierImpl", "Error getting links info.", th);
            return TextClassifier.NO_OP.getLinks(charSequence, i2, localeList);
        }
    }

    @Override // android.view.textclassifier.TextClassifier
    public TextClassifierConstants getSettings() {
        if (this.mSettings == null) {
            this.mSettings = TextClassifierConstants.loadFromString(Settings.Global.getString(this.mContext.getContentResolver(), Settings.Global.TEXT_CLASSIFIER_CONSTANTS));
        }
        return this.mSettings;
    }

    @Override // android.view.textclassifier.TextClassifier
    public void logEvent(String str, String str2) {
        if ("TextClassifierImpl".equals(str)) {
            this.mMetricsLogger.count(str2, 1);
        }
    }

    @Override // android.view.textclassifier.TextClassifier
    public TextSelection suggestSelection(CharSequence charSequence, int i2, int i3, LocaleList localeList) {
        validateInput(charSequence, i2, i3);
        try {
            if (charSequence.length() > 0) {
                SmartSelection smartSelection = getSmartSelection(localeList);
                String string = charSequence.toString();
                int[] iArrSuggest = smartSelection.suggest(string, i2, i3);
                int i4 = iArrSuggest[0];
                int i5 = iArrSuggest[1];
                if (i4 <= i5 && i4 >= 0 && i5 <= string.length() && i4 <= i2 && i5 >= i3) {
                    TextSelection.Builder builder = new TextSelection.Builder(i4, i5);
                    for (SmartSelection.ClassificationResult classificationResult : smartSelection.classifyText(string, i4, i5, getHintFlags(string, i4, i5))) {
                        builder.setEntityType(classificationResult.mCollection, classificationResult.mScore);
                    }
                    return builder.setLogSource("TextClassifierImpl").setVersionInfo(getVersionInfo()).build();
                }
                Log.d("TextClassifierImpl", "Got bad indices for input text. Ignoring result.");
            }
        } catch (Throwable th) {
            Log.e("TextClassifierImpl", "Error suggesting selection for text. No changes to selection suggested.", th);
        }
        return TextClassifier.NO_OP.suggestSelection(charSequence, i2, i3, localeList);
    }
}
