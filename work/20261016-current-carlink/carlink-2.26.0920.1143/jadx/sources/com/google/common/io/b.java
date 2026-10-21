package com.google.common.io;

import java.io.IOException;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.FileSystemException;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class b {
    public static /* synthetic */ FileSystemException B(String str) {
        return new FileSystemException(str, null, "can't delete recursively");
    }

    public static /* synthetic */ void C() {
    }

    public static /* synthetic */ DirectoryIteratorException g(IOException iOException) {
        return new DirectoryIteratorException(iOException);
    }

    public static /* synthetic */ FileSystemException j(String str) {
        return new FileSystemException(str, null, "failed to delete one or more files; see suppressed exceptions for details");
    }

    public static /* bridge */ /* synthetic */ NoSuchFileException l(IOException iOException) {
        return (NoSuchFileException) iOException;
    }

    public static /* bridge */ /* synthetic */ Path m(Object obj) {
        return (Path) obj;
    }

    public static /* synthetic */ void r() {
    }

    public static /* bridge */ /* synthetic */ boolean x(IOException iOException) {
        return iOException instanceof NoSuchFileException;
    }
}
