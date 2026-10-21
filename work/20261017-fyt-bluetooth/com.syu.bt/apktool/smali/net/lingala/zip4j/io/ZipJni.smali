.class public Lnet/lingala/zip4j/io/ZipJni;
.super Ljava/lang/Object;
.source "ZipJni.java"


# static fields
.field private static INSTANCE:Lnet/lingala/zip4j/io/ZipJni;

.field private static bLoadOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lnet/lingala/zip4j/io/ZipJni;->bLoadOnce:Z

    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getInstance()Lnet/lingala/zip4j/io/ZipJni;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lnet/lingala/zip4j/io/ZipJni;->INSTANCE:Lnet/lingala/zip4j/io/ZipJni;

    if-nez v0, :cond_0

    .line 16
    sget-boolean v0, Lnet/lingala/zip4j/io/ZipJni;->bLoadOnce:Z

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lnet/lingala/zip4j/io/ZipJni;->bLoadOnce:Z

    .line 19
    :try_start_0
    const-string v0, "ZipUtil"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    new-instance v0, Lnet/lingala/zip4j/io/ZipJni;

    invoke-direct {v0}, Lnet/lingala/zip4j/io/ZipJni;-><init>()V

    sput-object v0, Lnet/lingala/zip4j/io/ZipJni;->INSTANCE:Lnet/lingala/zip4j/io/ZipJni;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    sget-object v0, Lnet/lingala/zip4j/io/ZipJni;->INSTANCE:Lnet/lingala/zip4j/io/ZipJni;

    return-object v0

    .line 23
    :catch_0
    move-exception v0

    goto :goto_0

    .line 22
    :catch_1
    move-exception v0

    goto :goto_0

    .line 21
    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public native decryptData([I[BII)V
.end method

.method public native initKeyByTxt(Ljava/lang/String;Lcom/lsec/core/frame/app/Zip4jUtilFunc;)V
.end method

.method public native initKeyDefault()V
.end method

.method public native initKeys([I[BLjava/lang/String;I)V
.end method
