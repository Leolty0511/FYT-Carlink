package com.android.internal.inputmethod;

import android.accessibilityservice.c;
import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Printer;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodSubtype;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class InputMethodSubtypeSwitchingController {
    private static final boolean DEBUG = false;
    private static final int NOT_A_SUBTYPE_ID = -1;
    private static final String TAG = "InputMethodSubtypeSwitchingController";
    private ControllerImpl mController;
    private final InputMethodUtils.InputMethodSettings mSettings;
    private InputMethodAndSubtypeList mSubtypeList;

    public static class ControllerImpl {
        private final DynamicRotationList mSwitchingAwareRotationList;
        private final StaticRotationList mSwitchingUnawareRotationList;

        private ControllerImpl(DynamicRotationList dynamicRotationList, StaticRotationList staticRotationList) {
            this.mSwitchingAwareRotationList = dynamicRotationList;
            this.mSwitchingUnawareRotationList = staticRotationList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v5 */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        public static ControllerImpl createFrom(ControllerImpl controllerImpl, List<ImeSubtypeListItem> list) {
            StaticRotationList staticRotationList;
            StaticRotationList staticRotationList2;
            DynamicRotationList dynamicRotationList;
            List<ImeSubtypeListItem> listFilterImeSubtypeList = filterImeSubtypeList(list, true);
            StaticRotationList staticRotationList3 = 0;
            staticRotationList3 = 0;
            staticRotationList3 = 0;
            DynamicRotationList dynamicRotationList2 = (controllerImpl == null || (dynamicRotationList = controllerImpl.mSwitchingAwareRotationList) == null || !Objects.equals(dynamicRotationList.mImeSubtypeList, listFilterImeSubtypeList)) ? null : controllerImpl.mSwitchingAwareRotationList;
            if (dynamicRotationList2 == null) {
                dynamicRotationList2 = new DynamicRotationList(listFilterImeSubtypeList);
            }
            List<ImeSubtypeListItem> listFilterImeSubtypeList2 = filterImeSubtypeList(list, false);
            if (controllerImpl != null && (staticRotationList = controllerImpl.mSwitchingUnawareRotationList) != null && Objects.equals(staticRotationList.mImeSubtypeList, listFilterImeSubtypeList2)) {
                staticRotationList2 = controllerImpl.mSwitchingUnawareRotationList;
            }
            if (staticRotationList3 == 0) {
                staticRotationList3 = staticRotationList2;
                staticRotationList3 = new StaticRotationList(listFilterImeSubtypeList2);
            }
            staticRotationList3 = staticRotationList2;
            return new ControllerImpl(dynamicRotationList2, staticRotationList3);
        }

        private static List<ImeSubtypeListItem> filterImeSubtypeList(List<ImeSubtypeListItem> list, boolean z2) {
            ArrayList arrayList = new ArrayList();
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                ImeSubtypeListItem imeSubtypeListItem = list.get(i2);
                if (imeSubtypeListItem.mImi.supportsSwitchingToNextInputMethod() == z2) {
                    arrayList.add(imeSubtypeListItem);
                }
            }
            return arrayList;
        }

        public void dump(Printer printer) {
            printer.println("    mSwitchingAwareRotationList:");
            this.mSwitchingAwareRotationList.dump(printer, "      ");
            printer.println("    mSwitchingUnawareRotationList:");
            this.mSwitchingUnawareRotationList.dump(printer, "      ");
        }

        public ImeSubtypeListItem getNextInputMethod(boolean z2, InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype, boolean z3) {
            if (inputMethodInfo == null) {
                return null;
            }
            return inputMethodInfo.supportsSwitchingToNextInputMethod() ? this.mSwitchingAwareRotationList.getNextInputMethodLocked(z2, inputMethodInfo, inputMethodSubtype, z3) : this.mSwitchingUnawareRotationList.getNextInputMethodLocked(z2, inputMethodInfo, inputMethodSubtype, z3);
        }

        public void onUserActionLocked(InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype) {
            if (inputMethodInfo != null && inputMethodInfo.supportsSwitchingToNextInputMethod()) {
                this.mSwitchingAwareRotationList.onUserAction(inputMethodInfo, inputMethodSubtype);
            }
        }
    }

    public static class DynamicRotationList {
        private static final String TAG = "DynamicRotationList";
        private final List<ImeSubtypeListItem> mImeSubtypeList;
        private final int[] mUsageHistoryOfSubtypeListItemIndex;

        private int getUsageRank(InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype) {
            int iCalculateSubtypeId = InputMethodSubtypeSwitchingController.calculateSubtypeId(inputMethodInfo, inputMethodSubtype);
            int length = this.mUsageHistoryOfSubtypeListItemIndex.length;
            for (int i2 = 0; i2 < length; i2++) {
                ImeSubtypeListItem imeSubtypeListItem = this.mImeSubtypeList.get(this.mUsageHistoryOfSubtypeListItemIndex[i2]);
                if (imeSubtypeListItem.mImi.equals(inputMethodInfo) && imeSubtypeListItem.mSubtypeId == iCalculateSubtypeId) {
                    return i2;
                }
            }
            return -1;
        }

        public void dump(Printer printer, String str) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.mUsageHistoryOfSubtypeListItemIndex;
                if (i2 >= iArr.length) {
                    return;
                }
                printer.println(str + "rank=" + iArr[i2] + " item=" + this.mImeSubtypeList.get(i2));
                i2++;
            }
        }

        public ImeSubtypeListItem getNextInputMethodLocked(boolean z2, InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype, boolean z3) {
            int usageRank = getUsageRank(inputMethodInfo, inputMethodSubtype);
            if (usageRank < 0) {
                return null;
            }
            int length = this.mUsageHistoryOfSubtypeListItemIndex.length;
            for (int i2 = 1; i2 < length; i2++) {
                ImeSubtypeListItem imeSubtypeListItem = this.mImeSubtypeList.get(this.mUsageHistoryOfSubtypeListItemIndex[((z3 ? i2 : length - i2) + usageRank) % length]);
                if (!z2 || inputMethodInfo.equals(imeSubtypeListItem.mImi)) {
                    return imeSubtypeListItem;
                }
            }
            return null;
        }

        public void onUserAction(InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype) {
            int usageRank = getUsageRank(inputMethodInfo, inputMethodSubtype);
            if (usageRank <= 0) {
                return;
            }
            int[] iArr = this.mUsageHistoryOfSubtypeListItemIndex;
            int i2 = iArr[usageRank];
            System.arraycopy(iArr, 0, iArr, 1, usageRank);
            this.mUsageHistoryOfSubtypeListItemIndex[0] = i2;
        }

        private DynamicRotationList(List<ImeSubtypeListItem> list) {
            this.mImeSubtypeList = list;
            this.mUsageHistoryOfSubtypeListItemIndex = new int[list.size()];
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.mUsageHistoryOfSubtypeListItemIndex[i2] = i2;
            }
        }
    }

    public static class ImeSubtypeListItem implements Comparable<ImeSubtypeListItem> {
        public final CharSequence mImeName;
        public final InputMethodInfo mImi;
        public final boolean mIsSystemLanguage;
        public final boolean mIsSystemLocale;
        public final int mSubtypeId;
        public final CharSequence mSubtypeName;

        public ImeSubtypeListItem(CharSequence charSequence, CharSequence charSequence2, InputMethodInfo inputMethodInfo, int i2, String str, String str2) {
            this.mImeName = charSequence;
            this.mSubtypeName = charSequence2;
            this.mImi = inputMethodInfo;
            this.mSubtypeId = i2;
            boolean z2 = false;
            if (TextUtils.isEmpty(str)) {
                this.mIsSystemLocale = false;
                this.mIsSystemLanguage = false;
                return;
            }
            boolean zEquals = str.equals(str2);
            this.mIsSystemLocale = zEquals;
            if (zEquals) {
                this.mIsSystemLanguage = true;
                return;
            }
            String languageFromLocaleString = parseLanguageFromLocaleString(str2);
            String languageFromLocaleString2 = parseLanguageFromLocaleString(str);
            if (languageFromLocaleString.length() >= 2 && languageFromLocaleString.equals(languageFromLocaleString2)) {
                z2 = true;
            }
            this.mIsSystemLanguage = z2;
        }

        private static int compareNullableCharSequences(CharSequence charSequence, CharSequence charSequence2) {
            boolean zIsEmpty = TextUtils.isEmpty(charSequence);
            boolean zIsEmpty2 = TextUtils.isEmpty(charSequence2);
            return (zIsEmpty || zIsEmpty2) ? (zIsEmpty ? 1 : 0) - (zIsEmpty2 ? 1 : 0) : charSequence.toString().compareTo(charSequence2.toString());
        }

        private static String parseLanguageFromLocaleString(String str) {
            int iIndexOf = str.indexOf(95);
            return iIndexOf < 0 ? str : str.substring(0, iIndexOf);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ImeSubtypeListItem)) {
                return false;
            }
            ImeSubtypeListItem imeSubtypeListItem = (ImeSubtypeListItem) obj;
            return Objects.equals(this.mImi, imeSubtypeListItem.mImi) && this.mSubtypeId == imeSubtypeListItem.mSubtypeId;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ImeSubtypeListItem{mImeName=");
            sb.append((Object) this.mImeName);
            sb.append(" mSubtypeName=");
            sb.append((Object) this.mSubtypeName);
            sb.append(" mSubtypeId=");
            sb.append(this.mSubtypeId);
            sb.append(" mIsSystemLocale=");
            sb.append(this.mIsSystemLocale);
            sb.append(" mIsSystemLanguage=");
            return c.o(sb, this.mIsSystemLanguage, "}");
        }

        @Override // java.lang.Comparable
        public int compareTo(ImeSubtypeListItem imeSubtypeListItem) {
            int iCompareNullableCharSequences = compareNullableCharSequences(this.mImeName, imeSubtypeListItem.mImeName);
            if (iCompareNullableCharSequences != 0) {
                return iCompareNullableCharSequences;
            }
            int i2 = (this.mIsSystemLocale ? -1 : 0) - (imeSubtypeListItem.mIsSystemLocale ? -1 : 0);
            if (i2 != 0) {
                return i2;
            }
            int i3 = (this.mIsSystemLanguage ? -1 : 0) - (imeSubtypeListItem.mIsSystemLanguage ? -1 : 0);
            return i3 != 0 ? i3 : compareNullableCharSequences(this.mSubtypeName, imeSubtypeListItem.mSubtypeName);
        }
    }

    public static class InputMethodAndSubtypeList {
        private final Context mContext;
        private final PackageManager mPm;
        private final InputMethodUtils.InputMethodSettings mSettings;
        private final TreeMap<InputMethodInfo, List<InputMethodSubtype>> mSortedImmis = new TreeMap<>(new Comparator<InputMethodInfo>() { // from class: com.android.internal.inputmethod.InputMethodSubtypeSwitchingController.InputMethodAndSubtypeList.1
            @Override // java.util.Comparator
            public int compare(InputMethodInfo inputMethodInfo, InputMethodInfo inputMethodInfo2) {
                if (inputMethodInfo2 == null) {
                    return 0;
                }
                if (inputMethodInfo == null) {
                    return 1;
                }
                if (InputMethodAndSubtypeList.this.mPm == null) {
                    return inputMethodInfo.getId().compareTo(inputMethodInfo2.getId());
                }
                return (((Object) inputMethodInfo.loadLabel(InputMethodAndSubtypeList.this.mPm)) + "/" + inputMethodInfo.getId()).toString().compareTo((((Object) inputMethodInfo2.loadLabel(InputMethodAndSubtypeList.this.mPm)) + "/" + inputMethodInfo2.getId()).toString());
            }
        });
        private final String mSystemLocaleStr;

        public InputMethodAndSubtypeList(Context context, InputMethodUtils.InputMethodSettings inputMethodSettings) {
            this.mContext = context;
            this.mSettings = inputMethodSettings;
            this.mPm = context.getPackageManager();
            Locale locale = context.getResources().getConfiguration().locale;
            this.mSystemLocaleStr = locale != null ? locale.toString() : "";
        }

        public List<ImeSubtypeListItem> getSortedInputMethodAndSubtypeList(boolean z2, boolean z3) {
            HashMap<InputMethodInfo, List<InputMethodSubtype>> map;
            ArrayList arrayList = new ArrayList();
            HashMap<InputMethodInfo, List<InputMethodSubtype>> explicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked = this.mSettings.getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(this.mContext);
            if (explicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked == null || explicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked.size() == 0) {
                return Collections.emptyList();
            }
            boolean z4 = (z3 && z2) ? false : z2;
            this.mSortedImmis.clear();
            this.mSortedImmis.putAll(explicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked);
            for (InputMethodInfo inputMethodInfo : this.mSortedImmis.keySet()) {
                if (inputMethodInfo != null) {
                    List<InputMethodSubtype> list = explicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked.get(inputMethodInfo);
                    HashSet hashSet = new HashSet();
                    Iterator<InputMethodSubtype> it = list.iterator();
                    while (it.hasNext()) {
                        hashSet.add(String.valueOf(it.next().hashCode()));
                    }
                    CharSequence charSequenceLoadLabel = inputMethodInfo.loadLabel(this.mPm);
                    if (hashSet.size() > 0) {
                        int subtypeCount = inputMethodInfo.getSubtypeCount();
                        int i2 = 0;
                        while (i2 < subtypeCount) {
                            InputMethodSubtype subtypeAt = inputMethodInfo.getSubtypeAt(i2);
                            String strValueOf = String.valueOf(subtypeAt.hashCode());
                            if (hashSet.contains(strValueOf) && (z4 || !subtypeAt.isAuxiliary())) {
                                arrayList.add(new ImeSubtypeListItem(charSequenceLoadLabel, subtypeAt.overridesImplicitlyEnabledSubtype() ? null : subtypeAt.getDisplayName(this.mContext, inputMethodInfo.getPackageName(), inputMethodInfo.getServiceInfo().applicationInfo), inputMethodInfo, i2, subtypeAt.getLocale(), this.mSystemLocaleStr));
                                hashSet.remove(strValueOf);
                            }
                            i2++;
                            subtypeCount = subtypeCount;
                            explicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked = explicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked;
                        }
                        map = explicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked;
                    } else {
                        map = explicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked;
                        arrayList.add(new ImeSubtypeListItem(charSequenceLoadLabel, null, inputMethodInfo, -1, null, this.mSystemLocaleStr));
                    }
                    explicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked = map;
                }
            }
            Collections.sort(arrayList);
            return arrayList;
        }
    }

    public static class StaticRotationList {
        private final List<ImeSubtypeListItem> mImeSubtypeList;

        public StaticRotationList(List<ImeSubtypeListItem> list) {
            this.mImeSubtypeList = list;
        }

        private int getIndex(InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype) {
            int iCalculateSubtypeId = InputMethodSubtypeSwitchingController.calculateSubtypeId(inputMethodInfo, inputMethodSubtype);
            int size = this.mImeSubtypeList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ImeSubtypeListItem imeSubtypeListItem = this.mImeSubtypeList.get(i2);
                if (inputMethodInfo.equals(imeSubtypeListItem.mImi) && imeSubtypeListItem.mSubtypeId == iCalculateSubtypeId) {
                    return i2;
                }
            }
            return -1;
        }

        public void dump(Printer printer, String str) {
            int size = this.mImeSubtypeList.size();
            for (int i2 = 0; i2 < size; i2++) {
                printer.println(str + "rank=" + i2 + " item=" + this.mImeSubtypeList.get(i2));
            }
        }

        public ImeSubtypeListItem getNextInputMethodLocked(boolean z2, InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype, boolean z3) {
            int index;
            if (inputMethodInfo == null) {
                return null;
            }
            if (this.mImeSubtypeList.size() <= 1 || (index = getIndex(inputMethodInfo, inputMethodSubtype)) < 0) {
                return null;
            }
            int size = this.mImeSubtypeList.size();
            for (int i2 = 1; i2 < size; i2++) {
                ImeSubtypeListItem imeSubtypeListItem = this.mImeSubtypeList.get(((z3 ? i2 : size - i2) + index) % size);
                if (!z2 || inputMethodInfo.equals(imeSubtypeListItem.mImi)) {
                    return imeSubtypeListItem;
                }
            }
            return null;
        }
    }

    private InputMethodSubtypeSwitchingController(InputMethodUtils.InputMethodSettings inputMethodSettings, Context context) {
        this.mSettings = inputMethodSettings;
        resetCircularListLocked(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int calculateSubtypeId(InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype) {
        if (inputMethodSubtype != null) {
            return InputMethodUtils.getSubtypeIdFromHashCode(inputMethodInfo, inputMethodSubtype.hashCode());
        }
        return -1;
    }

    public static InputMethodSubtypeSwitchingController createInstanceLocked(InputMethodUtils.InputMethodSettings inputMethodSettings, Context context) {
        return new InputMethodSubtypeSwitchingController(inputMethodSettings, context);
    }

    public void dump(Printer printer) {
        ControllerImpl controllerImpl = this.mController;
        if (controllerImpl != null) {
            controllerImpl.dump(printer);
        } else {
            printer.println("    mController=null");
        }
    }

    public ImeSubtypeListItem getNextInputMethodLocked(boolean z2, InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype, boolean z3) {
        ControllerImpl controllerImpl = this.mController;
        if (controllerImpl == null) {
            return null;
        }
        return controllerImpl.getNextInputMethod(z2, inputMethodInfo, inputMethodSubtype, z3);
    }

    public List<ImeSubtypeListItem> getSortedInputMethodAndSubtypeListLocked(boolean z2, boolean z3) {
        return this.mSubtypeList.getSortedInputMethodAndSubtypeList(z2, z3);
    }

    public void onUserActionLocked(InputMethodInfo inputMethodInfo, InputMethodSubtype inputMethodSubtype) {
        ControllerImpl controllerImpl = this.mController;
        if (controllerImpl == null) {
            return;
        }
        controllerImpl.onUserActionLocked(inputMethodInfo, inputMethodSubtype);
    }

    public void resetCircularListLocked(Context context) {
        InputMethodAndSubtypeList inputMethodAndSubtypeList = new InputMethodAndSubtypeList(context, this.mSettings);
        this.mSubtypeList = inputMethodAndSubtypeList;
        this.mController = ControllerImpl.createFrom(this.mController, inputMethodAndSubtypeList.getSortedInputMethodAndSubtypeList(false, false));
    }
}
