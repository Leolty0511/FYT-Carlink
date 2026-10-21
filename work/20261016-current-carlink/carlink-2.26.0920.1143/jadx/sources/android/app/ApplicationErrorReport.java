package android.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.mtp.MtpConstants;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Printer;
import com.android.internal.util.FastPrintWriter;
import java.io.StringWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationErrorReport implements Parcelable {
    public static final Parcelable.Creator<ApplicationErrorReport> CREATOR = new Parcelable.Creator<ApplicationErrorReport>() { // from class: android.app.ApplicationErrorReport.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApplicationErrorReport createFromParcel(Parcel parcel) {
            return new ApplicationErrorReport(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApplicationErrorReport[] newArray(int i2) {
            return new ApplicationErrorReport[i2];
        }
    };
    static final String DEFAULT_ERROR_RECEIVER_PROPERTY = "ro.error.receiver.default";
    static final String SYSTEM_APPS_ERROR_RECEIVER_PROPERTY = "ro.error.receiver.system.apps";
    public static final int TYPE_ANR = 2;
    public static final int TYPE_BATTERY = 3;
    public static final int TYPE_CRASH = 1;
    public static final int TYPE_NONE = 0;
    public static final int TYPE_RUNNING_SERVICE = 5;
    public AnrInfo anrInfo;
    public BatteryInfo batteryInfo;
    public CrashInfo crashInfo;
    public String installerPackageName;
    public String packageName;
    public String processName;
    public RunningServiceInfo runningServiceInfo;
    public boolean systemApp;
    public long time;
    public int type;

    public static class AnrInfo {
        public String activity;
        public String cause;
        public String info;

        public AnrInfo() {
        }

        public void dump(Printer printer, String str) {
            StringBuilder sbU = android.accessibilityservice.c.u(str, "activity: ");
            sbU.append(this.activity);
            printer.println(sbU.toString());
            printer.println(str + "cause: " + this.cause);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("info: ");
            android.accessibilityservice.c.B(sb, this.info, printer);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.activity);
            parcel.writeString(this.cause);
            parcel.writeString(this.info);
        }

        public AnrInfo(Parcel parcel) {
            this.activity = parcel.readString();
            this.cause = parcel.readString();
            this.info = parcel.readString();
        }
    }

    public static class BatteryInfo {
        public String checkinDetails;
        public long durationMicros;
        public String usageDetails;
        public int usagePercent;

        public BatteryInfo() {
        }

        public void dump(Printer printer, String str) {
            StringBuilder sbU = android.accessibilityservice.c.u(str, "usagePercent: ");
            sbU.append(this.usagePercent);
            printer.println(sbU.toString());
            printer.println(str + "durationMicros: " + this.durationMicros);
            printer.println(str + "usageDetails: " + this.usageDetails);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("checkinDetails: ");
            android.accessibilityservice.c.B(sb, this.checkinDetails, printer);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.usagePercent);
            parcel.writeLong(this.durationMicros);
            parcel.writeString(this.usageDetails);
            parcel.writeString(this.checkinDetails);
        }

        public BatteryInfo(Parcel parcel) {
            this.usagePercent = parcel.readInt();
            this.durationMicros = parcel.readLong();
            this.usageDetails = parcel.readString();
            this.checkinDetails = parcel.readString();
        }
    }

    public static class CrashInfo {
        public String exceptionClassName;
        public String exceptionMessage;
        public String stackTrace;
        public String throwClassName;
        public String throwFileName;
        public int throwLineNumber;
        public String throwMethodName;

        public CrashInfo() {
        }

        private String sanitizeString(String str) {
            if (str == null || str.length() <= 20480) {
                return str;
            }
            String str2 = "\n[TRUNCATED " + (str.length() - MtpConstants.DEVICE_PROPERTY_UNDEFINED) + " CHARS]\n";
            StringBuilder sb = new StringBuilder(str2.length() + MtpConstants.DEVICE_PROPERTY_UNDEFINED);
            sb.append(str.substring(0, 10240));
            sb.append(str2);
            sb.append(str.substring(str.length() - 10240));
            return sb.toString();
        }

        public void appendStackTrace(String str) {
            this.stackTrace = sanitizeString(android.accessibilityservice.c.n(new StringBuilder(), this.stackTrace, str));
        }

        public void dump(Printer printer, String str) {
            StringBuilder sbU = android.accessibilityservice.c.u(str, "exceptionClassName: ");
            sbU.append(this.exceptionClassName);
            printer.println(sbU.toString());
            printer.println(str + "exceptionMessage: " + this.exceptionMessage);
            printer.println(str + "throwFileName: " + this.throwFileName);
            printer.println(str + "throwClassName: " + this.throwClassName);
            printer.println(str + "throwMethodName: " + this.throwMethodName);
            printer.println(str + "throwLineNumber: " + this.throwLineNumber);
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("stackTrace: ");
            android.accessibilityservice.c.B(sb, this.stackTrace, printer);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.dataPosition();
            parcel.writeString(this.exceptionClassName);
            parcel.writeString(this.exceptionMessage);
            parcel.writeString(this.throwFileName);
            parcel.writeString(this.throwClassName);
            parcel.writeString(this.throwMethodName);
            parcel.writeInt(this.throwLineNumber);
            parcel.writeString(this.stackTrace);
            parcel.dataPosition();
        }

        public CrashInfo(Throwable th) {
            StringWriter stringWriter = new StringWriter();
            FastPrintWriter fastPrintWriter = new FastPrintWriter((Writer) stringWriter, false, 256);
            th.printStackTrace(fastPrintWriter);
            fastPrintWriter.flush();
            this.stackTrace = sanitizeString(stringWriter.toString());
            this.exceptionMessage = th.getMessage();
            Throwable th2 = th;
            while (th.getCause() != null) {
                th = th.getCause();
                if (th.getStackTrace() != null && th.getStackTrace().length > 0) {
                    th2 = th;
                }
                String message = th.getMessage();
                if (message != null && message.length() > 0) {
                    this.exceptionMessage = message;
                }
            }
            this.exceptionClassName = th2.getClass().getName();
            if (th2.getStackTrace().length > 0) {
                StackTraceElement stackTraceElement = th2.getStackTrace()[0];
                this.throwFileName = stackTraceElement.getFileName();
                this.throwClassName = stackTraceElement.getClassName();
                this.throwMethodName = stackTraceElement.getMethodName();
                this.throwLineNumber = stackTraceElement.getLineNumber();
            } else {
                this.throwFileName = "unknown";
                this.throwClassName = "unknown";
                this.throwMethodName = "unknown";
                this.throwLineNumber = 0;
            }
            this.exceptionMessage = sanitizeString(this.exceptionMessage);
        }

        public CrashInfo(Parcel parcel) {
            this.exceptionClassName = parcel.readString();
            this.exceptionMessage = parcel.readString();
            this.throwFileName = parcel.readString();
            this.throwClassName = parcel.readString();
            this.throwMethodName = parcel.readString();
            this.throwLineNumber = parcel.readInt();
            this.stackTrace = parcel.readString();
        }
    }

    public static class ParcelableCrashInfo extends CrashInfo implements Parcelable {
        public static final Parcelable.Creator<ParcelableCrashInfo> CREATOR = new Parcelable.Creator<ParcelableCrashInfo>() { // from class: android.app.ApplicationErrorReport.ParcelableCrashInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableCrashInfo createFromParcel(Parcel parcel) {
                return new ParcelableCrashInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableCrashInfo[] newArray(int i2) {
                return new ParcelableCrashInfo[i2];
            }
        };

        public ParcelableCrashInfo() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ParcelableCrashInfo(Throwable th) {
            super(th);
        }

        public ParcelableCrashInfo(Parcel parcel) {
            super(parcel);
        }
    }

    public static class RunningServiceInfo {
        public long durationMillis;
        public String serviceDetails;

        public RunningServiceInfo() {
        }

        public void dump(Printer printer, String str) {
            StringBuilder sbU = android.accessibilityservice.c.u(str, "durationMillis: ");
            sbU.append(this.durationMillis);
            printer.println(sbU.toString());
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("serviceDetails: ");
            android.accessibilityservice.c.B(sb, this.serviceDetails, printer);
        }

        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.durationMillis);
            parcel.writeString(this.serviceDetails);
        }

        public RunningServiceInfo(Parcel parcel) {
            this.durationMillis = parcel.readLong();
            this.serviceDetails = parcel.readString();
        }
    }

    public ApplicationErrorReport() {
    }

    public static ComponentName getErrorReportReceiver(Context context, String str, int i2) {
        ComponentName errorReportReceiver;
        ComponentName errorReportReceiver2;
        String installerPackageName = null;
        if (Settings.Global.getInt(context.getContentResolver(), Settings.Global.SEND_ACTION_APP_ERROR, 0) == 0) {
            return null;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            installerPackageName = packageManager.getInstallerPackageName(str);
        } catch (IllegalArgumentException unused) {
        }
        if (installerPackageName == null || (errorReportReceiver2 = getErrorReportReceiver(packageManager, str, installerPackageName)) == null) {
            return ((i2 & 1) == 0 || (errorReportReceiver = getErrorReportReceiver(packageManager, str, SystemProperties.get(SYSTEM_APPS_ERROR_RECEIVER_PROPERTY))) == null) ? getErrorReportReceiver(packageManager, str, SystemProperties.get(DEFAULT_ERROR_RECEIVER_PROPERTY)) : errorReportReceiver;
        }
        return errorReportReceiver2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void dump(Printer printer, String str) {
        StringBuilder sbU = android.accessibilityservice.c.u(str, "type: ");
        sbU.append(this.type);
        printer.println(sbU.toString());
        printer.println(str + "packageName: " + this.packageName);
        printer.println(str + "installerPackageName: " + this.installerPackageName);
        printer.println(str + "processName: " + this.processName);
        printer.println(str + "time: " + this.time);
        printer.println(str + "systemApp: " + this.systemApp);
        int i2 = this.type;
        if (i2 == 1) {
            this.crashInfo.dump(printer, str);
            return;
        }
        if (i2 == 2) {
            this.anrInfo.dump(printer, str);
        } else if (i2 == 3) {
            this.batteryInfo.dump(printer, str);
        } else {
            if (i2 != 5) {
                return;
            }
            this.runningServiceInfo.dump(printer, str);
        }
    }

    public void readFromParcel(Parcel parcel) {
        this.type = parcel.readInt();
        this.packageName = parcel.readString();
        this.installerPackageName = parcel.readString();
        this.processName = parcel.readString();
        this.time = parcel.readLong();
        this.systemApp = parcel.readInt() == 1;
        boolean z2 = parcel.readInt() == 1;
        int i2 = this.type;
        if (i2 == 1) {
            this.crashInfo = z2 ? new CrashInfo(parcel) : null;
            this.anrInfo = null;
            this.batteryInfo = null;
            this.runningServiceInfo = null;
            return;
        }
        if (i2 == 2) {
            this.anrInfo = new AnrInfo(parcel);
            this.crashInfo = null;
            this.batteryInfo = null;
            this.runningServiceInfo = null;
            return;
        }
        if (i2 == 3) {
            this.batteryInfo = new BatteryInfo(parcel);
            this.anrInfo = null;
            this.crashInfo = null;
            this.runningServiceInfo = null;
            return;
        }
        if (i2 != 5) {
            return;
        }
        this.batteryInfo = null;
        this.anrInfo = null;
        this.crashInfo = null;
        this.runningServiceInfo = new RunningServiceInfo(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.type);
        parcel.writeString(this.packageName);
        parcel.writeString(this.installerPackageName);
        parcel.writeString(this.processName);
        parcel.writeLong(this.time);
        parcel.writeInt(this.systemApp ? 1 : 0);
        parcel.writeInt(this.crashInfo != null ? 1 : 0);
        int i3 = this.type;
        if (i3 == 1) {
            CrashInfo crashInfo = this.crashInfo;
            if (crashInfo != null) {
                crashInfo.writeToParcel(parcel, i2);
                return;
            }
            return;
        }
        if (i3 == 2) {
            this.anrInfo.writeToParcel(parcel, i2);
        } else if (i3 == 3) {
            this.batteryInfo.writeToParcel(parcel, i2);
        } else {
            if (i3 != 5) {
                return;
            }
            this.runningServiceInfo.writeToParcel(parcel, i2);
        }
    }

    public ApplicationErrorReport(Parcel parcel) {
        readFromParcel(parcel);
    }

    public static ComponentName getErrorReportReceiver(PackageManager packageManager, String str, String str2) {
        if (str2 == null || str2.length() == 0 || str2.equals(str)) {
            return null;
        }
        Intent intent = new Intent(Intent.ACTION_APP_ERROR);
        intent.setPackage(str2);
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        if (resolveInfoResolveActivity != null && resolveInfoResolveActivity.activityInfo != null) {
            return new ComponentName(str2, resolveInfoResolveActivity.activityInfo.name);
        }
        return null;
    }
}
