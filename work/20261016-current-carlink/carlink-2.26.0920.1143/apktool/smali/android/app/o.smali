.class public abstract synthetic Landroid/app/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a()I
    .locals 1

    sget v0, Landroid/system/OsConstants;->O_CLOEXEC:I

    return v0
.end method

.method public static bridge synthetic b(Landroid/system/StructStat;)Landroid/system/StructTimespec;
    .locals 0

    iget-object p0, p0, Landroid/system/StructStat;->st_mtim:Landroid/system/StructTimespec;

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DelegateLastClassLoader;
    .locals 1

    new-instance v0, Ldalvik/system/DelegateLastClassLoader;

    invoke-direct {v0, p0, p1, p2}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static synthetic d()V
    .locals 1

    new-instance v0, Ldalvik/system/DelegateLastClassLoader;

    return-void
.end method

.method public static bridge synthetic e(Landroid/system/StructTimespec;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/system/StructTimespec;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
