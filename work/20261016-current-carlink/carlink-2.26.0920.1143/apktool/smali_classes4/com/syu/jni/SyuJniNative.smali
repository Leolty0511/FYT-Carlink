.class public Lcom/syu/jni/SyuJniNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/syu/jni/SyuJniNative;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/syu/jni/SyuJniNative;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/syu/jni/SyuJniNative;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/syu/jni/SyuJniNative;->a:Lcom/syu/jni/SyuJniNative;

    .line 7
    .line 8
    const-string v0, "syu_jni"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I
.end method
