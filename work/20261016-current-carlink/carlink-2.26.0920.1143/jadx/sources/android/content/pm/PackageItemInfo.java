package android.content.pm;

import android.accessibilityservice.c;
import android.app.ApplicationPackageManager;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Bundle;
import android.os.Parcel;
import android.os.UserHandle;
import android.text.Html;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Printer;
import com.android.internal.content.NativeLibraryHelper;
import java.text.Collator;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public class PackageItemInfo {
    public static final int DUMP_FLAG_ALL = 3;
    public static final int DUMP_FLAG_APPLICATION = 2;
    public static final int DUMP_FLAG_DETAILS = 1;
    private static final float MAX_LABEL_SIZE_PX = 500.0f;
    public int banner;
    public int icon;
    public String labelName;
    public int labelRes;
    public int logo;
    public Bundle metaData;
    public String name;
    public CharSequence nonLocalizedLabel;
    public String packageName;
    public int showUserIcon;

    public static class DisplayNameComparator implements Comparator<PackageItemInfo> {
        private PackageManager mPM;
        private final Collator sCollator = Collator.getInstance();

        public DisplayNameComparator(PackageManager packageManager) {
            this.mPM = packageManager;
        }

        @Override // java.util.Comparator
        public final int compare(PackageItemInfo packageItemInfo, PackageItemInfo packageItemInfo2) {
            CharSequence charSequenceLoadLabel = packageItemInfo.loadLabel(this.mPM);
            if (charSequenceLoadLabel == null) {
                charSequenceLoadLabel = packageItemInfo.name;
            }
            CharSequence charSequenceLoadLabel2 = packageItemInfo2.loadLabel(this.mPM);
            if (charSequenceLoadLabel2 == null) {
                charSequenceLoadLabel2 = packageItemInfo2.name;
            }
            return this.sCollator.compare(charSequenceLoadLabel.toString(), charSequenceLoadLabel2.toString());
        }
    }

    public PackageItemInfo() {
        this.showUserIcon = -10000;
    }

    private CharSequence loadLabelInternal(PackageManager packageManager) {
        CharSequence text;
        CharSequence charSequence = this.nonLocalizedLabel;
        if (charSequence != null) {
            return charSequence;
        }
        int i2 = this.labelRes;
        if (i2 != 0 && (text = packageManager.getText(this.packageName, i2, getApplicationInfo())) != null) {
            return text.toString().trim();
        }
        String str = this.name;
        return str != null ? str : this.packageName;
    }

    public void dumpBack(Printer printer, String str) {
    }

    public void dumpFront(Printer printer, String str) {
        if (this.name != null) {
            c.B(c.u(str, "name="), this.name, printer);
        }
        c.B(c.u(str, "packageName="), this.packageName, printer);
        if (this.labelRes == 0 && this.nonLocalizedLabel == null && this.icon == 0 && this.banner == 0) {
            return;
        }
        StringBuilder sbU = c.u(str, "labelRes=0x");
        c.x(this.labelRes, sbU, " nonLocalizedLabel=");
        sbU.append((Object) this.nonLocalizedLabel);
        sbU.append(" icon=0x");
        c.x(this.icon, sbU, " banner=0x");
        sbU.append(Integer.toHexString(this.banner));
        printer.println(sbU.toString());
    }

    public ApplicationInfo getApplicationInfo() {
        return null;
    }

    public String getSuffixedUserName(PackageManager packageManager) {
        ApplicationInfo applicationInfo;
        return (packageManager == null || !(packageManager instanceof ApplicationPackageManager) || (applicationInfo = getApplicationInfo()) == null || !AppCloneUserInfo.isAppCloneUid(applicationInfo.uid)) ? "" : ((ApplicationPackageManager) packageManager).getUserIfProfile(UserHandle.getUserId(applicationInfo.uid)).name;
    }

    public Drawable loadBanner(PackageManager packageManager) {
        Drawable drawable;
        int i2 = this.banner;
        return (i2 == 0 || (drawable = packageManager.getDrawable(this.packageName, i2, getApplicationInfo())) == null) ? loadDefaultBanner(packageManager) : drawable;
    }

    public Drawable loadDefaultBanner(PackageManager packageManager) {
        return null;
    }

    public Drawable loadDefaultIcon(PackageManager packageManager) {
        return packageManager.getDefaultActivityIcon();
    }

    public Drawable loadDefaultLogo(PackageManager packageManager) {
        return null;
    }

    public Drawable loadIcon(PackageManager packageManager) {
        return packageManager.loadItemIcon(this, getApplicationInfo());
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        String suffixedUserName = getSuffixedUserName(packageManager);
        if (TextUtils.isEmpty(suffixedUserName)) {
            return loadLabelInternal(packageManager);
        }
        StringBuilder sbU = c.u(suffixedUserName, NativeLibraryHelper.CLEAR_ABI_OVERRIDE);
        sbU.append((Object) loadLabelInternal(packageManager));
        return sbU.toString();
    }

    public Drawable loadLogo(PackageManager packageManager) {
        Drawable drawable;
        int i2 = this.logo;
        return (i2 == 0 || (drawable = packageManager.getDrawable(this.packageName, i2, getApplicationInfo())) == null) ? loadDefaultLogo(packageManager) : drawable;
    }

    public CharSequence loadSafeLabel(PackageManager packageManager) {
        String string = Html.fromHtml(loadLabel(packageManager).toString()).toString();
        int length = string.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = string.codePointAt(iCharCount);
            int type = Character.getType(iCodePointAt);
            if (type == 13 || type == 15 || type == 14) {
                string = string.substring(0, iCharCount);
                break;
            }
            if (type == 12) {
                string = string.substring(0, iCharCount) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + string.substring(Character.charCount(iCodePointAt) + iCharCount);
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        String strTrim = string.trim();
        if (strTrim.isEmpty()) {
            return this.packageName;
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(42.0f);
        return TextUtils.ellipsize(strTrim, textPaint, MAX_LABEL_SIZE_PX, TextUtils.TruncateAt.END);
    }

    public Drawable loadUnbadgedIcon(PackageManager packageManager) {
        return packageManager.loadUnbadgedItemIcon(this, getApplicationInfo());
    }

    public XmlResourceParser loadXmlMetaData(PackageManager packageManager, String str) {
        int i2;
        Bundle bundle = this.metaData;
        if (bundle == null || (i2 = bundle.getInt(str)) == 0) {
            return null;
        }
        return packageManager.getXml(this.packageName, i2, getApplicationInfo());
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.name);
        parcel.writeString(this.packageName);
        parcel.writeInt(this.labelRes);
        parcel.writeString(this.labelName);
        TextUtils.writeToParcel(this.nonLocalizedLabel, parcel, i2);
        parcel.writeInt(this.icon);
        parcel.writeInt(this.logo);
        parcel.writeBundle(this.metaData);
        parcel.writeInt(this.banner);
        parcel.writeInt(this.showUserIcon);
    }

    public PackageItemInfo(PackageItemInfo packageItemInfo) {
        String str = packageItemInfo.name;
        this.name = str;
        if (str != null) {
            this.name = str.trim();
        }
        this.packageName = packageItemInfo.packageName;
        this.labelRes = packageItemInfo.labelRes;
        this.labelName = packageItemInfo.labelName;
        CharSequence charSequence = packageItemInfo.nonLocalizedLabel;
        this.nonLocalizedLabel = charSequence;
        if (charSequence != null) {
            this.nonLocalizedLabel = charSequence.toString().trim();
        }
        this.icon = packageItemInfo.icon;
        this.banner = packageItemInfo.banner;
        this.logo = packageItemInfo.logo;
        this.metaData = packageItemInfo.metaData;
        this.showUserIcon = packageItemInfo.showUserIcon;
    }

    public PackageItemInfo(Parcel parcel) {
        this.name = parcel.readString();
        this.packageName = parcel.readString();
        this.labelRes = parcel.readInt();
        this.labelName = parcel.readString();
        this.nonLocalizedLabel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.icon = parcel.readInt();
        this.logo = parcel.readInt();
        this.metaData = parcel.readBundle();
        this.banner = parcel.readInt();
        this.showUserIcon = parcel.readInt();
    }
}
