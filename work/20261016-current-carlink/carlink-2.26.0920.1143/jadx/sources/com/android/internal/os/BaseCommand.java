package com.android.internal.os;

import android.os.ShellCommand;
import java.io.PrintStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseCommand {
    public static final String FATAL_ERROR_CODE = "Error type 1";
    public static final String NO_CLASS_ERROR_CODE = "Error type 3";
    public static final String NO_SYSTEM_ERROR_CODE = "Error type 2";
    protected final ShellCommand mArgs = new ShellCommand() { // from class: com.android.internal.os.BaseCommand.1
        @Override // android.os.ShellCommand
        public int onCommand(String str) {
            return 0;
        }

        @Override // android.os.ShellCommand
        public void onHelp() {
        }
    };
    private String[] mRawArgs;

    public String[] getRawArgs() {
        return this.mRawArgs;
    }

    public String nextArg() {
        return this.mArgs.getNextArg();
    }

    public String nextArgRequired() {
        return this.mArgs.getNextArgRequired();
    }

    public String nextOption() {
        return this.mArgs.getNextOption();
    }

    public abstract void onRun();

    public abstract void onShowUsage(PrintStream printStream);

    public void run(String[] strArr) {
        if (strArr.length < 1) {
            onShowUsage(System.out);
            return;
        }
        this.mRawArgs = strArr;
        this.mArgs.init(null, null, null, null, strArr, null, 0);
        try {
            onRun();
        } catch (IllegalArgumentException e2) {
            onShowUsage(System.err);
            System.err.println();
            System.err.println("Error: " + e2.getMessage());
        } catch (Exception e3) {
            e3.printStackTrace(System.err);
            System.exit(1);
        }
    }

    public void showError(String str) {
        onShowUsage(System.err);
        System.err.println();
        System.err.println(str);
    }

    public void showUsage() {
        onShowUsage(System.err);
    }
}
