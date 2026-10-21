.class Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;
.super Lcom/android/internal/os/ZygoteConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/WebViewZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewZygoteConnection"
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handlePreloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "preloadInZygote"

    .line 2
    .line 3
    const-string v1, "Beginning package preload"

    .line 4
    .line 5
    const-string v2, "WebViewZygoteInit"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1, p2, p3}, Landroid/app/ApplicationLoaders;->createAndCacheWebViewClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    sget-object p3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, p3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    array-length p3, p1

    .line 25
    const/4 v1, 0x0

    .line 26
    move v3, v1

    .line 27
    :goto_0
    if-ge v3, p3, :cond_0

    .line 28
    .line 29
    aget-object v4, p1, v3

    .line 30
    .line 31
    invoke-static {v4}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    :try_start_0
    invoke-static {p2}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    new-array p3, v1, [Ljava/lang/Class;

    .line 43
    .line 44
    invoke-virtual {p2, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p3, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 56
    .line 57
    if-eq p3, v3, :cond_1

    .line 58
    .line 59
    const-string p2, "Unexpected return type: preloadInZygote must return boolean"

    .line 60
    .line 61
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move p2, v1

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    new-array p3, v1, [Ljava/lang/Class;

    .line 67
    .line 68
    invoke-virtual {p2, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    new-array p3, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 82
    .line 83
    .line 84
    move-result p2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    if-nez p2, :cond_2

    .line 86
    .line 87
    :try_start_1
    const-string p3, "preloadInZygote returned false"

    .line 88
    .line 89
    invoke-static {v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move-exception p3

    .line 94
    move-object v5, p3

    .line 95
    move p3, p2

    .line 96
    move-object p2, v5

    .line 97
    goto :goto_1

    .line 98
    :catch_1
    move-exception p2

    .line 99
    move p3, v1

    .line 100
    :goto_1
    const-string v0, "Exception while preloading package"

    .line 101
    .line 102
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    move p2, p3

    .line 106
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->getSocketOutputStream()Ljava/io/DataOutputStream;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    if-eqz p2, :cond_3

    .line 111
    .line 112
    move v1, p1

    .line 113
    :cond_3
    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    .line 115
    .line 116
    const-string p1, "Package preload done"

    .line 117
    .line 118
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :catch_2
    move-exception p1

    .line 123
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    const-string p3, "Error writing to command socket"

    .line 126
    .line 127
    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw p2
.end method

.method public isPreloadComplete()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public preload()V
    .locals 0

    return-void
.end method
