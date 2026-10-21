package com.google.common.io;

import android.os.Build;
import com.android.internal.content.NativeLibraryHelper;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.StandardSystemProperty;
import com.google.common.collect.ImmutableList;
import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Paths;
import java.nio.file.attribute.AclEntry;
import java.nio.file.attribute.AclEntryFlag;
import java.nio.file.attribute.AclEntryPermission;
import java.nio.file.attribute.AclEntryType;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.PosixFilePermissions;
import java.util.EnumSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@J2ktIncompatible
@GwtIncompatible
abstract class TempFileCreator {
    static final TempFileCreator INSTANCE = pickSecureCreator();

    public static final class JavaIoCreator extends TempFileCreator {
        private static final int TEMP_DIR_ATTEMPTS = 10000;

        private JavaIoCreator() {
            super();
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempDir() {
            File file = new File(StandardSystemProperty.JAVA_IO_TMPDIR.value());
            String str = System.currentTimeMillis() + NativeLibraryHelper.CLEAR_ABI_OVERRIDE;
            for (int i2 = 0; i2 < 10000; i2++) {
                File file2 = new File(file, str + i2);
                if (file2.mkdir()) {
                    return file2;
                }
            }
            throw new IllegalStateException("Failed to create directory within 10000 attempts (tried " + str + "0 to " + str + "9999)");
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempFile(String str) {
            return File.createTempFile(str, null, null);
        }
    }

    @IgnoreJRERequirement
    public static final class JavaNioCreator extends TempFileCreator {
        private static final PermissionSupplier directoryPermissions;
        private static final PermissionSupplier filePermissions;

        @IgnoreJRERequirement
        public interface PermissionSupplier {
            FileAttribute<?> get();
        }

        static {
            Set setSupportedFileAttributeViews = FileSystems.getDefault().supportedFileAttributeViews();
            if (setSupportedFileAttributeViews.contains("posix")) {
                final int i2 = 0;
                filePermissions = new PermissionSupplier() { // from class: com.google.common.io.e
                    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                    public final FileAttribute get() {
                        switch (i2) {
                            case 0:
                                return TempFileCreator.JavaNioCreator.lambda$static$0();
                            case 1:
                                return TempFileCreator.JavaNioCreator.lambda$static$1();
                            default:
                                return TempFileCreator.JavaNioCreator.lambda$static$2();
                        }
                    }
                };
                final int i3 = 1;
                directoryPermissions = new PermissionSupplier() { // from class: com.google.common.io.e
                    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                    public final FileAttribute get() {
                        switch (i3) {
                            case 0:
                                return TempFileCreator.JavaNioCreator.lambda$static$0();
                            case 1:
                                return TempFileCreator.JavaNioCreator.lambda$static$1();
                            default:
                                return TempFileCreator.JavaNioCreator.lambda$static$2();
                        }
                    }
                };
                return;
            }
            if (setSupportedFileAttributeViews.contains("acl")) {
                PermissionSupplier permissionSupplierUserPermissions = userPermissions();
                directoryPermissions = permissionSupplierUserPermissions;
                filePermissions = permissionSupplierUserPermissions;
            } else {
                final int i4 = 2;
                PermissionSupplier permissionSupplier = new PermissionSupplier() { // from class: com.google.common.io.e
                    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                    public final FileAttribute get() {
                        switch (i4) {
                            case 0:
                                return TempFileCreator.JavaNioCreator.lambda$static$0();
                            case 1:
                                return TempFileCreator.JavaNioCreator.lambda$static$1();
                            default:
                                return TempFileCreator.JavaNioCreator.lambda$static$2();
                        }
                    }
                };
                directoryPermissions = permissionSupplier;
                filePermissions = permissionSupplier;
            }
        }

        private JavaNioCreator() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ FileAttribute lambda$static$0() {
            return PosixFilePermissions.asFileAttribute(PosixFilePermissions.fromString("rw-------"));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ FileAttribute lambda$static$1() {
            return PosixFilePermissions.asFileAttribute(PosixFilePermissions.fromString("rwx------"));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ FileAttribute lambda$static$2() throws IOException {
            throw new IOException("unrecognized FileSystem type " + FileSystems.getDefault());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ FileAttribute lambda$userPermissions$3(FileAttribute fileAttribute) {
            return fileAttribute;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ FileAttribute lambda$userPermissions$4(IOException iOException) throws IOException {
            throw new IOException("Could not find user", iOException);
        }

        private static PermissionSupplier userPermissions() {
            final int i2 = 1;
            try {
                final int i3 = 0;
                final ImmutableList immutableListOf = ImmutableList.of(AclEntry.newBuilder().setType(AclEntryType.ALLOW).setPrincipal(FileSystems.getDefault().getUserPrincipalLookupService().lookupPrincipalByName(StandardSystemProperty.USER_NAME.value())).setPermissions(EnumSet.allOf(AclEntryPermission.class)).setFlags(AclEntryFlag.DIRECTORY_INHERIT, AclEntryFlag.FILE_INHERIT).build());
                final FileAttribute<ImmutableList<AclEntry>> fileAttribute = new FileAttribute<ImmutableList<AclEntry>>() { // from class: com.google.common.io.TempFileCreator.JavaNioCreator.1
                    @Override // java.nio.file.attribute.FileAttribute
                    public String name() {
                        return "acl:acl";
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // java.nio.file.attribute.FileAttribute
                    public ImmutableList<AclEntry> value() {
                        return immutableListOf;
                    }
                };
                return new PermissionSupplier() { // from class: com.google.common.io.f
                    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                    public final FileAttribute get() {
                        int i4 = i3;
                        Object obj = fileAttribute;
                        switch (i4) {
                            case 0:
                                return TempFileCreator.JavaNioCreator.lambda$userPermissions$3((FileAttribute) obj);
                            default:
                                return TempFileCreator.JavaNioCreator.lambda$userPermissions$4((IOException) obj);
                        }
                    }
                };
            } catch (IOException e2) {
                return new PermissionSupplier() { // from class: com.google.common.io.f
                    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                    public final FileAttribute get() {
                        int i4 = i2;
                        Object obj = e2;
                        switch (i4) {
                            case 0:
                                return TempFileCreator.JavaNioCreator.lambda$userPermissions$3((FileAttribute) obj);
                            default:
                                return TempFileCreator.JavaNioCreator.lambda$userPermissions$4((IOException) obj);
                        }
                    }
                };
            }
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempDir() {
            try {
                return java.nio.file.Files.createTempDirectory(Paths.get(StandardSystemProperty.JAVA_IO_TMPDIR.value(), new String[0]), null, directoryPermissions.get()).toFile();
            } catch (IOException e2) {
                throw new IllegalStateException("Failed to create directory", e2);
            }
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempFile(String str) {
            return java.nio.file.Files.createTempFile(Paths.get(StandardSystemProperty.JAVA_IO_TMPDIR.value(), new String[0]), str, null, filePermissions.get()).toFile();
        }
    }

    public static final class ThrowingCreator extends TempFileCreator {
        private static final String MESSAGE = "Guava cannot securely create temporary files or directories under SDK versions before Jelly Bean. You can create one yourself, either in the insecure default directory or in a more secure directory, such as context.getCacheDir(). For more information, see the Javadoc for Files.createTempDir().";

        private ThrowingCreator() {
            super();
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempDir() {
            throw new IllegalStateException(MESSAGE);
        }

        @Override // com.google.common.io.TempFileCreator
        public File createTempFile(String str) throws IOException {
            throw new IOException(MESSAGE);
        }
    }

    private TempFileCreator() {
    }

    private static TempFileCreator pickSecureCreator() {
        try {
            try {
                Class.forName("java.nio.file.Path");
                return new JavaNioCreator();
            } catch (ClassNotFoundException unused) {
                String str = Build.VERSION.INCREMENTAL;
                return ((Integer) Build.VERSION.class.getField("SDK_INT").get(null)).intValue() < ((Integer) Build.VERSION_CODES.class.getField("JELLY_BEAN").get(null)).intValue() ? new ThrowingCreator() : new JavaIoCreator();
            }
        } catch (ClassNotFoundException unused2) {
            return new ThrowingCreator();
        } catch (IllegalAccessException unused3) {
            return new ThrowingCreator();
        } catch (NoSuchFieldException unused4) {
            return new ThrowingCreator();
        }
    }

    public abstract File createTempDir();

    public abstract File createTempFile(String str);
}
