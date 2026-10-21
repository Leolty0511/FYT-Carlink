package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.graph.SuccessorsFunction;
import com.google.common.graph.Traverser;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.Channels;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.DirectoryStream;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.FileSystemException;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.SecureDirectoryStream;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@J2ktIncompatible
@GwtIncompatible
public final class MoreFiles {

    public static final class PathByteSink extends ByteSink {
        private final OpenOption[] options;
        private final Path path;

        @Override // com.google.common.io.ByteSink
        public OutputStream openStream() {
            return java.nio.file.Files.newOutputStream(this.path, this.options);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("MoreFiles.asByteSink(");
            sb.append(this.path);
            sb.append(", ");
            return android.accessibilityservice.c.n(sb, Arrays.toString(this.options), ")");
        }

        private PathByteSink(Path path, OpenOption... openOptionArr) {
            this.path = (Path) Preconditions.checkNotNull(path);
            this.options = (OpenOption[]) openOptionArr.clone();
        }
    }

    public static final class PathByteSource extends ByteSource {
        private static final LinkOption[] FOLLOW_LINKS = new LinkOption[0];
        private final boolean followLinks;
        private final OpenOption[] options;
        private final Path path;

        private static boolean followLinks(OpenOption[] openOptionArr) {
            for (OpenOption openOption : openOptionArr) {
                if (openOption == LinkOption.NOFOLLOW_LINKS) {
                    return false;
                }
            }
            return true;
        }

        private BasicFileAttributes readAttributes() {
            return java.nio.file.Files.readAttributes(this.path, BasicFileAttributes.class, this.followLinks ? FOLLOW_LINKS : new LinkOption[]{LinkOption.NOFOLLOW_LINKS});
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            return this.options.length == 0 ? new ByteSource.AsCharSource(charset) { // from class: com.google.common.io.MoreFiles.PathByteSource.1
                @Override // com.google.common.io.CharSource
                public Stream<String> lines() {
                    return java.nio.file.Files.lines(PathByteSource.this.path, this.charset);
                }
            } : super.asCharSource(charset);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return java.nio.file.Files.newInputStream(this.path, this.options);
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() throws IOException {
            SeekableByteChannel seekableByteChannelNewByteChannel = java.nio.file.Files.newByteChannel(this.path, this.options);
            try {
                byte[] byteArray = ByteStreams.toByteArray(Channels.newInputStream(seekableByteChannelNewByteChannel), seekableByteChannelNewByteChannel.size());
                seekableByteChannelNewByteChannel.close();
                return byteArray;
            } catch (Throwable th) {
                if (seekableByteChannelNewByteChannel != null) {
                    try {
                        seekableByteChannelNewByteChannel.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws IOException {
            BasicFileAttributes attributes = readAttributes();
            if (attributes.isDirectory()) {
                throw new IOException("can't read: is a directory");
            }
            if (attributes.isSymbolicLink()) {
                throw new IOException("can't read: is a symbolic link");
            }
            return attributes.size();
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            try {
                BasicFileAttributes attributes = readAttributes();
                return (attributes.isDirectory() || attributes.isSymbolicLink()) ? Optional.absent() : Optional.of(Long.valueOf(attributes.size()));
            } catch (IOException unused) {
                return Optional.absent();
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("MoreFiles.asByteSource(");
            sb.append(this.path);
            sb.append(", ");
            return android.accessibilityservice.c.n(sb, Arrays.toString(this.options), ")");
        }

        private PathByteSource(Path path, OpenOption... openOptionArr) {
            this.path = (Path) Preconditions.checkNotNull(path);
            OpenOption[] openOptionArr2 = (OpenOption[]) openOptionArr.clone();
            this.options = openOptionArr2;
            this.followLinks = followLinks(openOptionArr2);
        }
    }

    private MoreFiles() {
    }

    private static Collection<IOException> addException(Collection<IOException> collection, IOException iOException) {
        if (collection == null) {
            collection = new ArrayList<>();
        }
        collection.add(iOException);
        return collection;
    }

    public static ByteSink asByteSink(Path path, OpenOption... openOptionArr) {
        return new PathByteSink(path, openOptionArr);
    }

    public static ByteSource asByteSource(Path path, OpenOption... openOptionArr) {
        return new PathByteSource(path, openOptionArr);
    }

    public static CharSink asCharSink(Path path, Charset charset, OpenOption... openOptionArr) {
        return asByteSink(path, openOptionArr).asCharSink(charset);
    }

    public static CharSource asCharSource(Path path, Charset charset, OpenOption... openOptionArr) {
        return asByteSource(path, openOptionArr).asCharSource(charset);
    }

    private static void checkAllowsInsecure(Path path, RecursiveDeleteOption[] recursiveDeleteOptionArr) throws InsecureRecursiveDeleteException {
        if (!Arrays.asList(recursiveDeleteOptionArr).contains(RecursiveDeleteOption.ALLOW_INSECURE)) {
            throw new InsecureRecursiveDeleteException(path.toString());
        }
    }

    private static Collection<IOException> concat(Collection<IOException> collection, Collection<IOException> collection2) {
        if (collection == null) {
            return collection2;
        }
        if (collection2 != null) {
            collection.addAll(collection2);
        }
        return collection;
    }

    public static void createParentDirectories(Path path, FileAttribute<?>... fileAttributeArr) throws IOException {
        Path parent = path.toAbsolutePath().normalize().getParent();
        if (parent == null || java.nio.file.Files.isDirectory(parent, new LinkOption[0])) {
            return;
        }
        java.nio.file.Files.createDirectories(parent, fileAttributeArr);
        if (java.nio.file.Files.isDirectory(parent, new LinkOption[0])) {
            return;
        }
        throw new IOException("Unable to create parent directories of " + path);
    }

    public static void deleteDirectoryContents(Path path, RecursiveDeleteOption... recursiveDeleteOptionArr) throws IOException {
        Collection<IOException> collectionDeleteDirectoryContentsInsecure;
        Collection<IOException> collection = null;
        try {
            DirectoryStream directoryStreamNewDirectoryStream = java.nio.file.Files.newDirectoryStream(path);
            try {
                if (android.util.a.x(directoryStreamNewDirectoryStream)) {
                    collectionDeleteDirectoryContentsInsecure = deleteDirectoryContentsSecure(android.util.a.i(directoryStreamNewDirectoryStream));
                } else {
                    checkAllowsInsecure(path, recursiveDeleteOptionArr);
                    collectionDeleteDirectoryContentsInsecure = deleteDirectoryContentsInsecure(directoryStreamNewDirectoryStream);
                }
                collection = collectionDeleteDirectoryContentsInsecure;
                if (directoryStreamNewDirectoryStream != null) {
                    directoryStreamNewDirectoryStream.close();
                }
            } catch (Throwable th) {
                if (directoryStreamNewDirectoryStream != null) {
                    try {
                        directoryStreamNewDirectoryStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e2) {
            if (0 == 0) {
                throw e2;
            }
            collection.add(e2);
        }
        if (collection != null) {
            throwDeleteFailed(path, collection);
        }
    }

    private static Collection<IOException> deleteDirectoryContentsInsecure(DirectoryStream<Path> directoryStream) {
        Collection<IOException> collectionConcat = null;
        try {
            Iterator<Path> it = directoryStream.iterator();
            while (it.hasNext()) {
                collectionConcat = concat(collectionConcat, deleteRecursivelyInsecure(it.next()));
            }
            return collectionConcat;
        } catch (DirectoryIteratorException e2) {
            return addException(null, e2.getCause());
        }
    }

    private static Collection<IOException> deleteDirectoryContentsSecure(SecureDirectoryStream<Path> secureDirectoryStream) {
        Collection<IOException> collectionConcat = null;
        try {
            Iterator<Path> it = secureDirectoryStream.iterator();
            while (it.hasNext()) {
                collectionConcat = concat(collectionConcat, deleteRecursivelySecure(secureDirectoryStream, it.next().getFileName()));
            }
            return collectionConcat;
        } catch (DirectoryIteratorException e2) {
            return addException(null, e2.getCause());
        }
    }

    public static void deleteRecursively(Path path, RecursiveDeleteOption... recursiveDeleteOptionArr) throws IOException {
        boolean z2;
        Path parentPath = getParentPath(path);
        if (parentPath == null) {
            b.r();
            throw b.B(path.toString());
        }
        Collection<IOException> collectionDeleteRecursivelyInsecure = null;
        try {
            DirectoryStream directoryStreamNewDirectoryStream = java.nio.file.Files.newDirectoryStream(parentPath);
            try {
                if (android.util.a.x(directoryStreamNewDirectoryStream)) {
                    SecureDirectoryStream secureDirectoryStreamI = android.util.a.i(directoryStreamNewDirectoryStream);
                    Path fileName = path.getFileName();
                    Objects.requireNonNull(fileName);
                    collectionDeleteRecursivelyInsecure = deleteRecursivelySecure(secureDirectoryStreamI, b.m(fileName));
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (directoryStreamNewDirectoryStream != null) {
                    directoryStreamNewDirectoryStream.close();
                }
                if (!z2) {
                    checkAllowsInsecure(path, recursiveDeleteOptionArr);
                    collectionDeleteRecursivelyInsecure = deleteRecursivelyInsecure(path);
                }
            } catch (Throwable th) {
                if (directoryStreamNewDirectoryStream != null) {
                    try {
                        directoryStreamNewDirectoryStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e2) {
            if (collectionDeleteRecursivelyInsecure == null) {
                throw e2;
            }
            collectionDeleteRecursivelyInsecure.add(e2);
        }
        if (collectionDeleteRecursivelyInsecure != null) {
            throwDeleteFailed(path, collectionDeleteRecursivelyInsecure);
        }
    }

    private static Collection<IOException> deleteRecursivelyInsecure(Path path) {
        Collection<IOException> collectionDeleteDirectoryContentsInsecure = null;
        try {
            if (java.nio.file.Files.isDirectory(path, LinkOption.NOFOLLOW_LINKS)) {
                DirectoryStream directoryStreamNewDirectoryStream = java.nio.file.Files.newDirectoryStream(path);
                try {
                    collectionDeleteDirectoryContentsInsecure = deleteDirectoryContentsInsecure(directoryStreamNewDirectoryStream);
                    if (directoryStreamNewDirectoryStream != null) {
                        directoryStreamNewDirectoryStream.close();
                    }
                } catch (Throwable th) {
                    if (directoryStreamNewDirectoryStream != null) {
                        try {
                            directoryStreamNewDirectoryStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            if (collectionDeleteDirectoryContentsInsecure == null) {
                java.nio.file.Files.delete(path);
            }
            return collectionDeleteDirectoryContentsInsecure;
        } catch (IOException e2) {
            return addException(collectionDeleteDirectoryContentsInsecure, e2);
        }
    }

    private static Collection<IOException> deleteRecursivelySecure(SecureDirectoryStream<Path> secureDirectoryStream, Path path) {
        Collection<IOException> collectionDeleteDirectoryContentsSecure = null;
        try {
            if (isDirectory(secureDirectoryStream, path, LinkOption.NOFOLLOW_LINKS)) {
                SecureDirectoryStream secureDirectoryStreamNewDirectoryStream = secureDirectoryStream.newDirectoryStream(path, LinkOption.NOFOLLOW_LINKS);
                try {
                    collectionDeleteDirectoryContentsSecure = deleteDirectoryContentsSecure(secureDirectoryStreamNewDirectoryStream);
                    if (secureDirectoryStreamNewDirectoryStream != null) {
                        secureDirectoryStreamNewDirectoryStream.close();
                    }
                    if (collectionDeleteDirectoryContentsSecure == null) {
                        secureDirectoryStream.deleteDirectory(path);
                    }
                } catch (Throwable th) {
                    if (secureDirectoryStreamNewDirectoryStream != null) {
                        try {
                            secureDirectoryStreamNewDirectoryStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } else {
                secureDirectoryStream.deleteFile(path);
            }
            return collectionDeleteDirectoryContentsSecure;
        } catch (IOException e2) {
            return addException(collectionDeleteDirectoryContentsSecure, e2);
        }
    }

    public static boolean equal(Path path, Path path2) {
        Preconditions.checkNotNull(path);
        Preconditions.checkNotNull(path2);
        if (java.nio.file.Files.isSameFile(path, path2)) {
            return true;
        }
        ByteSource byteSourceAsByteSource = asByteSource(path, new OpenOption[0]);
        ByteSource byteSourceAsByteSource2 = asByteSource(path2, new OpenOption[0]);
        long jLongValue = byteSourceAsByteSource.sizeIfKnown().or(0L).longValue();
        long jLongValue2 = byteSourceAsByteSource2.sizeIfKnown().or(0L).longValue();
        if (jLongValue == 0 || jLongValue2 == 0 || jLongValue == jLongValue2) {
            return byteSourceAsByteSource.contentEquals(byteSourceAsByteSource2);
        }
        return false;
    }

    public static Traverser<Path> fileTraverser() {
        return Traverser.forTree(new SuccessorsFunction() { // from class: com.google.common.io.c
            @Override // com.google.common.graph.SuccessorsFunction
            public final Iterable successors(Object obj) {
                return MoreFiles.fileTreeChildren((Path) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterable<Path> fileTreeChildren(Path path) {
        if (!java.nio.file.Files.isDirectory(path, LinkOption.NOFOLLOW_LINKS)) {
            return ImmutableList.of();
        }
        try {
            return listFiles(path);
        } catch (IOException e2) {
            b.C();
            throw b.g(e2);
        }
    }

    public static String getFileExtension(Path path) {
        String string;
        int iLastIndexOf;
        Path fileName = path.getFileName();
        return (fileName == null || (iLastIndexOf = (string = fileName.toString()).lastIndexOf(46)) == -1) ? "" : string.substring(iLastIndexOf + 1);
    }

    public static String getNameWithoutExtension(Path path) {
        Path fileName = path.getFileName();
        if (fileName == null) {
            return "";
        }
        String string = fileName.toString();
        int iLastIndexOf = string.lastIndexOf(46);
        return iLastIndexOf == -1 ? string : string.substring(0, iLastIndexOf);
    }

    private static Path getParentPath(Path path) {
        Path parent = path.getParent();
        if (parent != null) {
            return parent;
        }
        if (path.getNameCount() == 0) {
            return null;
        }
        return path.getFileSystem().getPath(".", new String[0]);
    }

    public static Predicate<Path> isDirectory(LinkOption... linkOptionArr) {
        final LinkOption[] linkOptionArr2 = (LinkOption[]) linkOptionArr.clone();
        return new Predicate<Path>() { // from class: com.google.common.io.MoreFiles.1
            @Override // com.google.common.base.Predicate
            public /* bridge */ /* synthetic */ boolean apply(Path path) {
                return apply2(b.m(path));
            }

            @Override // com.google.common.base.Predicate, java.util.function.Predicate
            public final /* synthetic */ boolean test(Object obj) {
                return com.google.common.base.b.a(this, obj);
            }

            public String toString() {
                return android.accessibilityservice.c.n(new StringBuilder("MoreFiles.isDirectory("), Arrays.toString(linkOptionArr2), ")");
            }

            /* JADX INFO: renamed from: apply, reason: avoid collision after fix types in other method */
            public boolean apply2(Path path) {
                return java.nio.file.Files.isDirectory(path, linkOptionArr2);
            }
        };
    }

    public static Predicate<Path> isRegularFile(LinkOption... linkOptionArr) {
        final LinkOption[] linkOptionArr2 = (LinkOption[]) linkOptionArr.clone();
        return new Predicate<Path>() { // from class: com.google.common.io.MoreFiles.2
            @Override // com.google.common.base.Predicate
            public /* bridge */ /* synthetic */ boolean apply(Path path) {
                return apply2(b.m(path));
            }

            @Override // com.google.common.base.Predicate, java.util.function.Predicate
            public final /* synthetic */ boolean test(Object obj) {
                return com.google.common.base.b.a(this, obj);
            }

            public String toString() {
                return android.accessibilityservice.c.n(new StringBuilder("MoreFiles.isRegularFile("), Arrays.toString(linkOptionArr2), ")");
            }

            /* JADX INFO: renamed from: apply, reason: avoid collision after fix types in other method */
            public boolean apply2(Path path) {
                return java.nio.file.Files.isRegularFile(path, linkOptionArr2);
            }
        };
    }

    public static ImmutableList<Path> listFiles(Path path) throws IOException {
        try {
            DirectoryStream<Path> directoryStreamNewDirectoryStream = java.nio.file.Files.newDirectoryStream(path);
            try {
                ImmutableList<Path> immutableListCopyOf = ImmutableList.copyOf(directoryStreamNewDirectoryStream);
                if (directoryStreamNewDirectoryStream != null) {
                    directoryStreamNewDirectoryStream.close();
                }
                return immutableListCopyOf;
            } catch (Throwable th) {
                if (directoryStreamNewDirectoryStream != null) {
                    try {
                        directoryStreamNewDirectoryStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (DirectoryIteratorException e2) {
            throw e2.getCause();
        }
    }

    private static NoSuchFileException pathNotFound(Path path, Collection<IOException> collection) {
        Path parentPath;
        if (collection.size() != 1) {
            return null;
        }
        IOException iOException = (IOException) Iterables.getOnlyElement(collection);
        if (!b.x(iOException)) {
            return null;
        }
        NoSuchFileException noSuchFileExceptionL = b.l(iOException);
        String file = noSuchFileExceptionL.getFile();
        if (file == null || (parentPath = getParentPath(path)) == null) {
            return null;
        }
        Path fileName = path.getFileName();
        Objects.requireNonNull(fileName);
        if (file.equals(parentPath.resolve(b.m(fileName)).toString())) {
            return noSuchFileExceptionL;
        }
        return null;
    }

    private static void throwDeleteFailed(Path path, Collection<IOException> collection) throws FileSystemException {
        NoSuchFileException noSuchFileExceptionPathNotFound = pathNotFound(path, collection);
        if (noSuchFileExceptionPathNotFound != null) {
            throw noSuchFileExceptionPathNotFound;
        }
        b.r();
        FileSystemException fileSystemExceptionJ = b.j(path.toString());
        Iterator<IOException> it = collection.iterator();
        while (it.hasNext()) {
            fileSystemExceptionJ.addSuppressed(it.next());
        }
        throw fileSystemExceptionJ;
    }

    public static void touch(Path path) throws IOException {
        Preconditions.checkNotNull(path);
        try {
            java.nio.file.Files.setLastModifiedTime(path, FileTime.fromMillis(System.currentTimeMillis()));
        } catch (NoSuchFileException unused) {
            try {
                java.nio.file.Files.createFile(path, new FileAttribute[0]);
            } catch (FileAlreadyExistsException unused2) {
            }
        }
    }

    private static boolean isDirectory(SecureDirectoryStream<Path> secureDirectoryStream, Path path, LinkOption... linkOptionArr) {
        return ((BasicFileAttributeView) secureDirectoryStream.getFileAttributeView(path, BasicFileAttributeView.class, linkOptionArr)).readAttributes().isDirectory();
    }
}
