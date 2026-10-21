.class Landroid/app/LoadedApk$WarningContextClassLoader;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningContextClassLoader"
.end annotation


# static fields
.field private static warned:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/LoadedApk$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>()V

    return-void
.end method

.method private warn(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassLoader."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "The class loader returned by "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Thread.getContextClassLoader() may fail for processes "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "that host multiple applications. You should explicitly "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "specify a context class loader. For example: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Thread.setContextClassLoader(getClass().getClassLoader());"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityThread"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearAssertionStatus()V
    .locals 1

    const-string v0, "clearAssertionStatus"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->clearAssertionStatus()V

    return-void
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    const-string v0, "getResource"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const-string v0, "getResourceAsStream"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    const-string v0, "getResources"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "loadClass"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public setClassAssertionStatus(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "setClassAssertionStatus"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setClassAssertionStatus(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultAssertionStatus(Z)V
    .locals 1

    const-string/jumbo v0, "setDefaultAssertionStatus"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->setDefaultAssertionStatus(Z)V

    return-void
.end method

.method public setPackageAssertionStatus(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "setPackageAssertionStatus"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    return-void
.end method
