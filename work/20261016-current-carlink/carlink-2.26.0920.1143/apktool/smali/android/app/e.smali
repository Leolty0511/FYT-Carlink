.class public abstract synthetic Landroid/app/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A()Ljava/time/Period;
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/system/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic C(Ljava/time/Period;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/Period;->getDays()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic D()Ljava/time/Period;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic a(Ljava/time/Period;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/Period;->getYears()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Ljava/nio/file/Path;)Ljava/io/File;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Ljava/time/Period;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/time/Period;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/time/ZonedDateTime;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/content/res/a;)Ljava/lang/ThreadLocal;
    .locals 0

    invoke-static {p0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/database/sqlite/a;)Ljava/lang/ThreadLocal;
    .locals 0

    invoke-static {p0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g()Ljava/nio/file/FileSystem;
    .locals 1

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic h(Ljava/nio/file/FileSystem;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l()Ljava/time/Clock;
    .locals 1

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic m(Ljava/time/ZonedDateTime;)Ljava/time/LocalDate;
    .locals 0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n()Ljava/time/LocalDateTime;
    .locals 1

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic o()Ljava/time/Period;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/time/Period;->ofMonths(I)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic p(Ljava/lang/CharSequence;)Ljava/time/Period;
    .locals 0

    invoke-static {p0}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Ljava/lang/String;)Ljava/time/ZoneId;
    .locals 0

    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Ljava/time/Clock;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-static {p0}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t(Ljava/time/ZonedDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/time/ZonedDateTime;->withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Ljava/io/FileDescriptor;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-void
.end method

.method public static bridge synthetic v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B

    return-void
.end method

.method public static bridge synthetic w(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V

    return-void
.end method

.method public static bridge synthetic x(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    return-void
.end method

.method public static bridge synthetic y(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Ljava/time/Period;)I
    .locals 0

    invoke-virtual {p0}, Ljava/time/Period;->getMonths()I

    move-result p0

    return p0
.end method
