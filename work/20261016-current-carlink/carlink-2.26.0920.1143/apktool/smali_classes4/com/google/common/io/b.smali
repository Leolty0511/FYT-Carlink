.class public abstract synthetic Lcom/google/common/io/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Ljava/lang/String;)Ljava/nio/file/FileSystemException;
    .locals 3

    new-instance v0, Ljava/nio/file/FileSystemException;

    const/4 v1, 0x0

    const-string v2, "can\'t delete recursively"

    invoke-direct {v0, p0, v1, v2}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic C()V
    .locals 1

    new-instance v0, Ljava/nio/file/DirectoryIteratorException;

    return-void
.end method

.method public static bridge synthetic D(Ljava/nio/file/attribute/BasicFileAttributes;)Z
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic a(Ljava/nio/file/Path;)I
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/nio/file/attribute/BasicFileAttributes;)J
    .locals 2

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/nio/file/NoSuchFileException;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/nio/file/NoSuchFileException;->getFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/io/IOException;)Ljava/nio/file/DirectoryIteratorException;
    .locals 1

    new-instance v0, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v0, p0}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    return-object v0
.end method

.method public static bridge synthetic h(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    .locals 0

    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;)Ljava/nio/file/FileSystemException;
    .locals 3

    new-instance v0, Ljava/nio/file/FileSystemException;

    const/4 v1, 0x0

    const-string v2, "failed to delete one or more files; see suppressed exceptions for details"

    invoke-direct {v0, p0, v1, v2}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic k()Ljava/nio/file/LinkOption;
    .locals 1

    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    return-object v0
.end method

.method public static bridge synthetic l(Ljava/io/IOException;)Ljava/nio/file/NoSuchFileException;
    .locals 0

    check-cast p0, Ljava/nio/file/NoSuchFileException;

    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/nio/file/Path;
    .locals 0

    check-cast p0, Ljava/nio/file/Path;

    return-object p0
.end method

.method public static bridge synthetic n(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic o(Ljava/nio/file/FileSystem;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    const-string v0, "."

    invoke-virtual {p0, v0, p1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Ljava/nio/file/SecureDirectoryStream;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/nio/file/SecureDirectoryStream;->newDirectoryStream(Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r()V
    .locals 1

    new-instance v0, Ljava/nio/file/FileSystemException;

    return-void
.end method

.method public static bridge synthetic s(Ljava/nio/file/DirectoryStream;)V
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->close()V

    return-void
.end method

.method public static bridge synthetic t(Ljava/nio/file/FileSystemException;Ljava/io/IOException;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/nio/file/FileSystemException;->addSuppressed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic u(Ljava/nio/file/Path;)V
    .locals 0

    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    return-void
.end method

.method public static bridge synthetic v(Ljava/nio/file/SecureDirectoryStream;)V
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/SecureDirectoryStream;->close()V

    return-void
.end method

.method public static bridge synthetic w(Ljava/nio/file/SecureDirectoryStream;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/SecureDirectoryStream;->deleteDirectory(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic x(Ljava/io/IOException;)Z
    .locals 0

    instance-of p0, p0, Ljava/nio/file/NoSuchFileException;

    return p0
.end method

.method public static bridge synthetic y(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method
